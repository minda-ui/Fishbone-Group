#!/usr/bin/env bash
# UserPromptSubmit hook — end-of-day documentation check.
# Fires on every prompt; only injects the checklist when the user message
# contains "good night" (case-insensitive). Otherwise silent (no output).
# Read-only: it injects context for the assistant to act on within CLAUDE.md
# §6a; it never writes anything itself.
set -euo pipefail

prompt="$(jq -r '.prompt // ""' 2>/dev/null || true)"

if printf '%s' "$prompt" | grep -qi 'good night'; then
  jq -n '{
    hookSpecificOutput: {
      hookEventName: "UserPromptSubmit",
      additionalContext: "END-OF-DAY DOCUMENTATION CHECK (triggered by \"good night\"). Before signing off, run the group KB close-out per CLAUDE.md §4 / §6a — do not just answer good night:\n1. Dated change-log/ entry written (change-log-YYYY-MM-DD-<slug>.md) for everything done this session?\n2. current-state.md reflects today — or, if it is Alex'\''s to refresh, that hand-off flagged?\n3. Hub Tasks & Requests: rows you took up flipped to In Progress; completed ones closed (Status = Done + Response)?\n4. Any new gap or lesson surfaced to the Hub (Rule B: Tasks & Requests / Help & Lessons)?\n5. Only §6a-permitted writes made this session; nothing left mid-flight without a note.\nDo any missing item now (within §6a), then confirm briefly what was recorded. If all already done, say so."
    }
  }'
fi
exit 0
