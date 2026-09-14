#!/bin/bash
# Fishbone KB — session housekeeping hook.
#
# Layer 2 of the Housekeeping & Updates Improvement Plan (2026-09-14). Makes the
# Definition of Done *checked*, not just remembered:
#   - on SessionStart: prints the newest change-log/ date and the current-state
#     "Last session" line, so a session sees at a glance whether the previous one
#     closed itself out.
#   - on Stop: a non-blocking reminder to write a change-log entry, refresh
#     current-state.md, and archive superseded files — plus a drift check for any
#     control-file basename appearing more than once outside Archive/.
#
# Group standard — the same hook is intended for every Fishbone KB repo (Eugene
# propagates it). Most useful in repos that mirror their KB content (Peter, Eugene,
# Helen, Alex); in a repo that tracks only CLAUDE.md it degrades to the reminder.
# Idempotent, non-interactive, web/remote sessions only. NEVER blocks a session:
# always exits 0 and prints to stderr as advisory context.
set -uo pipefail

# Web/remote sessions only — quiet on a local machine.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

DIR="${CLAUDE_PROJECT_DIR:-.}"
EVENT="${1:-Stop}"   # pass "SessionStart" or "Stop" as $1; defaults to Stop

# The four standing control-file basenames (the Fishbone model).
CONTROL_FILES="current-state.md open-issues.md external-source-register.md processed-items-ledger.md"

if [ "$EVENT" = "SessionStart" ]; then
  if [ -d "$DIR/change-log" ]; then
    LAST=$(ls -1 "$DIR/change-log"/change-log-*.md 2>/dev/null | sort | tail -1)
    if [ -n "$LAST" ]; then
      echo "housekeeping: newest change-log entry is $(basename "$LAST")" >&2
    else
      echo "housekeeping: change-log/ is empty — the last session may not have documented itself" >&2
    fi
  fi
  if [ -f "$DIR/current-state.md" ]; then
    LINE=$(grep -m1 -i "Last session" "$DIR/current-state.md" 2>/dev/null | cut -c1-160)
    [ -n "$LINE" ] && echo "housekeeping: current-state -> ${LINE}" >&2
  fi
  exit 0
fi

# --- Stop event: reminder + duplicate-control-file drift check ---
echo "housekeeping (Definition of Done): before you finish, confirm (a) current-state.md reflects this session, (b) a dated change-log/ entry is written, (c) every superseded file is in Archive/ (never trashed, never left in the root), (d) any new open issue is logged. See Wiki/Process-Housekeeping-and-Session-Discipline.md." >&2

# Duplicate control files outside Archive/ = a skipped archive step.
DUPES=""
for name in $CONTROL_FILES; do
  # find copies anywhere in the repo except an Archive/ path
  COUNT=$(find "$DIR" -type f -name "$name" -not -path "*/Archive/*" 2>/dev/null | wc -l | tr -d ' ')
  if [ "${COUNT:-0}" -gt 1 ]; then
    DUPES="${DUPES} ${name}(x${COUNT})"
  fi
done
if [ -n "$DUPES" ]; then
  echo "housekeeping: DRIFT — duplicate control file(s) outside Archive/:${DUPES}. Archive the older copy (never trash) so one lives in the root." >&2
fi

exit 0
