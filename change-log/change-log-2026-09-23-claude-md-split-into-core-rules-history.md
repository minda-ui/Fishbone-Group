# Change log — 2026-09-23 — CLAUDE.md split into core/rules/history

_Append-only dated session file. See `current-state.md` and `CLAUDE.md` §7._

## Session — 2026-09-23 (Alex, interactive)

Continuing the resource-cost fix Minda asked for this session — every governance-rule change to
`CHARTER.md`/`CLAUDE.md` means reproducing the whole file, because Google Drive has no patch/append
API for text files — Minda said "yes, go ahead with group KB" after the same split was proven on
Alex's own `CHARTER.md` earlier the same day (v8 → v9 core + `Charter-Rules.md` + `Charter-History.md`,
~75% cut in what a typical rule change has to reproduce).

**Found a concurrent edit before starting.** A `search_files` check showed the live group `CLAUDE.md`
had grown to 68,010 B (from 65,330 B the previous day), created 2026-09-23T17:51:48 — another
session (Victoria's, from the content: it added Anna's stand-up entry and the document-policy v1.4
note) had edited it since Alex's own last touch. Per Rule C, re-fetched the live content via
`read_file_content` instead of working from memory, and built the split from that verified current
state, not from Alex's own stale prior edit.

**Read the full 68,010 B file** (parsed and unescaped locally) and confirmed section structure: §0
line 84, §1 137, §2 292, §3 323, §4 380, §5 405, §6 438, §7 508. Two findings surfaced along the way:

1. **A small internal inconsistency** — the other session's own v1.3→v1.4 fix was mostly complete
 but left one stale phrase in §6a's "must never do" list ("...the Finance archive (otherwise link
 to it, or ask Minda to copy the document into `Raw/`)"), inconsistent with the correctly-updated
 opening paragraph a few lines above it. Small, mechanical, unambiguous — fixed as part of the
 split (now reads "...the Financial Archive (financial documents follow §7b above, not this
 list)").
2. **A naming collision, not fixed** — §1's Hub Coordination Standard now lists "Rule C — plain-brief
 (owner standard, Minda 2026-09-22)", which collides with the pre-existing, unrelated Rule C
 (verify-against-system-of-record) already used in Alex's own charter and, per the group file's own
 revision history, deliberately kept out of "Rule C" naming during `AWT-0069` for exactly this
 reason. This is a genuine content inconsistency across the estate. Per charter §2c ("resolve an
 ambiguous or contradictory finding by guessing — raise it instead"), this is raised to Minda as a
 separate governance question in `current-state.md`, not resolved unilaterally.

**Applied the split** (Rung 1, group KB covered same as this KB):

- Old monolithic `CLAUDE.md` (68,010 B) archived intact to `Archive/` — byte-verified unchanged
 immediately before the move.
- New `CLAUDE.md` (42,189 B) — §1–§5 and §7 only (database structure, Wiki guidelines, workflow,
 change log, automated processes, group snapshot). §0 and §6 replaced with one-line pointers to
 `CLAUDE-Rules.md`; the intro blockquote's revision history replaced with a pointer to
 `CLAUDE-History.md`.
- `CLAUDE-Rules.md` (11,562 B, new file) — §0 and §6 in full (session-start read-first table,
 document filing & numbering, out-of-scope entities; governance — what automation may/must-never
 do, data access, revisiting this document), including the one Finance-archive wording fix above.
 States explicitly it carries the same governance as `CLAUDE.md` itself.
- `CLAUDE-History.md` (12,854 B, new file) — the full growing intro-blockquote revision history
 (25 entries, 2026-09-03 to 2026-09-22) reformatted as a clean append-only dated list, plus a new
 entry for this split itself.

All three byte-verified on upload against local sources. Content check: every sentence in the
archived 68,010 B file is present in one of the three new files, nothing dropped, aside from the
one deliberate wording fix above.

**Result:** an ordinary rule change to this database (five happened to §0/§6 in the fortnight
before this split) now only touches `CLAUDE-Rules.md` (~11.5KB) plus one appended line in
`CLAUDE-History.md` — not the whole ~68KB file.

Updated `current-state.md` (archived old 17,495 B version, new version 17,436 B, byte-verified) —
folded the previous "Last session" cell into the digest, updated "Last session by", bumped
Archived items to ~174, and added the Rule-C naming collision to "Next action" for Minda.

**Pending / carried forward:** the Rule-C naming collision above, awaiting Minda's decision. All
other pending items unchanged from the 2026-09-22 session (see `current-state.md` Next action).
