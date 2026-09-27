# Change log — 2026-09-21 (late evening), Rachel (AI Finance Assistant)

**Minda ruled on both questions `RA-31` had been holding open. The mirror was widened; the consolidation was
instructed. Only half the consolidation could be written — and finding out why replaced a dead constraint with a
live one.**

---

## 1. The mirror goes from eight files to eleven

`CHARTER.md` §2's mirror list named **eight** files. Three dated history files — `current-state-history-2026-09.md`,
`open-issues-history-2026-09.md`, `open-issues-history-2026-09-part2.md` — were excluded by `.gitignore`.

**That was not a scope decision, it was a hole.** Those files exist only because rows moved **out of** the mirrored
files under `RA-31`'s splitting scheme. Every move therefore took content out of git and put it somewhere git could
not see, and the hole grew each time a row moved. Eight files mirrored a record that was becoming less complete with
every compaction.

Minda widened the list to **eleven**. `.gitignore` now excludes nothing. `CHARTER.md` §2 amended; **Amendment 22**
appended to `CHARTER-amendments.md` with the reasoning verbatim.

Four → seven → eight → eleven. Each step's reasoning is in the amendment log, and each step was Minda's.

## 2. The consolidation is partial, and that is the finding

**Instructed:** consolidate the history files back, now that the ceiling they were split against is gone.

**Done:** `current-state-history-2026-09-part2.md` absorbed into `current-state-history-2026-09.md` — **36,032 bytes,
byte-verified**, written **before** the sources were archived so the KB was never short a file. The sequence file is
archived with a title recording why, **not deleted**.

**Not done:** everything else. And the reason is worth more than the consolidation would have been.

**The ceiling moved; it did not vanish.** `HL-0005` recorded Drive's `create_file` truncating at 31,316 bytes.
Alex retested at 60,185 on 2026-09-18, Rachel independently at 43,856 on 2026-09-21. Both clean. So the *storage*
limit is gone.

But **Drive has no append.** `update_file` changes only metadata — title and parent, nothing else. Creating a file
means emitting its **entire content in a single tool call**. So the real question was never what Drive stores; it is
what this desk can emit at once.

| Merge | Bytes | Outcome |
|---|---|---|
| current-state set (2 files) | 36,032 | **written, byte-exact** |
| current-state set (full, 3 files) | 64,181 | not attempted after the probe |
| issue-log set (full, 4 files) | 81,489 | not attempted |
| deliberate probe aimed at 64,181 | — | **produced 1,067 bytes** |
| largest successful write to date | 43,856 | — |

**The binding constraint is now Rachel's own write path, somewhere between 44 and 64 KB.** It was found the way the
last one should have been: by aiming at a number and measuring what arrived. The probe is retained in `Archive/` as
`2026-09-21_write-capacity-probe_DISCARDED`, not deleted.

**A second reason the issue-log set stays at three files, independent of size.** Archive-then-recreate rewrites the
whole file every time. A bigger history file therefore costs more on **every future move into it**, permanently.
Consolidating for tidiness would have made every subsequent write more expensive.

## 3. What this says about `HL-0005`, said plainly

`HL-0005` is Alex's row, so this goes to it as a **comment, not an edit**.

The original entry was right, and the retest was right, and the row is now **still incomplete** — because "the
ceiling is gone" invites exactly the write that fails. What replaced it is not a Drive limit at all. **A tool
limitation that is retested and found gone may have moved rather than disappeared, and the retest that clears it
should be sized at what you actually intend to write.** 43,856 cleared 31,316 and said nothing whatever about 64,181.

`RA-31` carries the full account. What survives from `HL-0005` unchanged: **byte-verify every upload against the
local count.** That is how the original truncation was caught, and it is how the write-path limit was caught too.

## 4. A second tool trap, same family — `find_in_sheet` scans only as far as `limit`

Searching the Document Register (224 rows) for `FP0000114` at the **default** limit returned **0 occurrences**. The
row exists. At `limit: 2000` it was found immediately.

**A search that finds nothing is not evidence that nothing is there.** It is evidence that nothing was found in the
window the call happened to open. This sits alongside `HL-0005`, `HL-0015` and `HL-0033`: a tool that answers
confidently about a portion of the data while appearing to answer about all of it. Raised on the group desk under
Hub Rule B rather than left in a change-log.

## 5. Files written

| File | Bytes | Drive id |
|---|---|---|
| `current-state-history-2026-09.md` (merged) | 36,032 | `1r4VVmR49R5Khb6CKQwQNG5mTZIG_Ka8I` |
| `CHARTER-amendments.md` | 22,165 | `1_hdMRNrVsT0igSz2bRboTham-EPw6SSu` |
| `CHARTER.md` | 30,899 | `1oyiAmAXZ-ZTCGChOk7VnRrOPR2zjxQ-0` |
| `open-issues.md` | 33,442 | `16iedeI-GbYck4IpLcHP5XdudEjuQSBQg` |

All four byte-exact against local. The KB root was re-listed afterwards and holds **all eleven** governance files,
**one copy each** — checked because `HL-0020` is about precisely the copy you did not know was there.

**One thing done in the wrong order, recorded rather than quietly corrected.** The merge was done safely:
create the new file, verify it, *then* archive the sources. The charter pair was not: `CHARTER.md` and
`open-issues.md` were **archived before being recreated**, leaving the KB root briefly missing its two most
important files. Nothing was lost and the gap was closed inside the session — but the safe order was known,
had just been used, and was not applied. Create first, archive second, every time.

Git: eleven files mirrored, `.gitignore` excluding nothing, pushed to `claude/hello-rachel-swj9oc`.

---

*Filed under `CHARTER.md` §5. Written once; never edited.*
*Rachel — AI Finance Assistant, Fishbone Group.*
