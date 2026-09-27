# Change log — 2026-09-15 — Housekeeping Sweep routine revised to v2 (cost-cutting); charter + current-state repointed

_Append-only dated session file (Fishbone Group). See `current-state.md` and `CLAUDE.md` §4. Follows the same day's
`change-log-2026-09-15-sweep-results-and-dedup.md` (AX-2 review + concurrent-write dedup); this entry covers the
routine revision that came out of that review._

## Session — 2026-09-15 (later): the sweep routine made incremental to cut recurring cost

**Why.** Alex's first live estate sweep (AX-2, fired by Minda 2026-09-14) cost **~730K context tokens / ~$18.80 /
~56.6M cumulative cache-reads** for one run over the twelve systems. Reviewed the cost with the owner: the bulk was
**one-time cold-start discovery** (a first run learning every KB's layout with no baseline to diff against) plus
**clearing a real first-pass backlog** (registering SRC-40–45, the Wiki index) — not the steady-state cost of a weekly
sweep. But the v1 prompt told the sweep to **read every KB in full on every run**, which would keep a quiet week near
that first-run figure for no benefit. Owner instruction: **"yes, revise it to v2."**

**What changed — sweep prompt v2** (`Outputs/2026-09-14_Housekeeping-Sweep-Routine-Prompt_v2.md`, id
`1cS6dqy7i_eG3Ldm5cShuq7YeamWSY73T`, 8518 B byte-verified; **supersedes v1** `1NuqMlutr0Cr19U5Z3H1thTEGhheoz9dZ`,
kept as the prior dated snapshot):
1. **Step 0 — load the last digest.** Read the newest file in Alex's `Sweeps/` first; its date is the last-sweep
   timestamp. An empty `Sweeps/` = cold start = full scan (v1 behaviour), so the first run is still thorough.
2. **Step 1 — metadata-first triage.** For each KB, check only the newest `modifiedTime` of its root control files and
   `change-log/` (`get_file_metadata` / `search_files`, **no `download_file_content`**). A KB unchanged since the last
   sweep is marked "skipped — unchanged" and **not read**; a KB that was Red last time is always deep-read until green.
   This is the core saving: a quiet week deep-reads only what actually moved, not all twelve.
3. **Step 2 — deep-read only the changed/still-Red KBs**, avoiding re-downloading large registers unless their metadata
   changed; digest now carries a **delta vs the last digest**.
4. **Step 3 — concurrency guard.** Before writing the group KB, check its four control files' `modifiedTime`: if any
   moved in the **last ~30 min**, a hands-on session may be live → **defer the group-KB writes** and note it. This
   directly prevents the duplicate-`current-state.md` collision that AX-2 caused (see the earlier 2026-09-15 entry).
5. Verify-after-a-run and degraded-mode (no Smartsheet) sections updated to match. Expected steady-state cost: a
   fraction of the first run.

**Pointers repointed v1 → v2 (no stale references left):**
- **Alex's `CHARTER.md` §6** — Drive (archive-then-recreate; live id `1UUiKKrTiE42QzaxGHAlwRXluqnpJJ7gQ`, 14247 B) and
  git mirror `minda-ui/Alex` (commit `6c9f2aa` on `main`).
- **Group `current-state.md`** — archived the v1-pointer copy (`1yNbTIl-KHh4zegXe75esaRdoh-t3A2wU`, 21449 B) into
  `Archive/`, recreated in the group root (new id `1VcmkUDBn0evyxemYLAGMbiTR0f0AIY6O`, **22582 B byte-verified** —
  0 U+FFFD, `£`×4 preserved). Swapped the three `_v1.md` filename references + the one Output-id reference, fixed a
  one-character typo ("sonnectors" → "connectors") in my own text, and refreshed the "Last session" cell to this
  session. Confirmed exactly one live `current-state.md` in the group root afterwards (byte-count of the recreated file
  matched an independently reconstructed expected copy).

**Governance / scope.** Author-and-file only, all within §6a: an Output revised, Alex's own charter edited (Alex's KB),
and the group KB's own control file refreshed. No sister KB touched; no live system of record written; the routine
itself is **not** changed by this database — **Minda still creates/edits routines via the `claude.ai/code/routines`
form**, so the live `Alex — weekly Housekeeping sweep` routine only picks up the v2 prompt when Minda pastes it in
(carried as the owner-guide-only item in `current-state.md`). The v2 prompt keeps Alex at **Rung 1**; nothing about the
control-release ladder changed.

**Net state:** sweep prompt at **v2** and referenced consistently (charter §6, group `current-state.md`, and the
change-log); v1 retained as the prior snapshot; one clean group `current-state.md`. No new Open Issue.
