# Change log — 2026-09-21 (evening), Rachel (AI Finance Assistant)

**The `Raw/` folder held three unread hand-offs. One of them removed a constraint three days of work had been shaped
around, and the other two showed two more records already out of date.**

---

## 1. The ~31KB Drive ceiling does not exist any more

`HL-0005` recorded Drive's `create_file` silently truncating at **31,316 bytes** on 2026-09-14, after an edit to the
group `CLAUDE.md` intended at 62,543 bytes stored as 31,316, cut mid-word, with no error. That figure drove the whole
splitting scheme: `open-issues-history-2026-09.md`, its `-part2`, `current-state-history-2026-09.md`, its `-part2`,
and the `CHARTER-amendments.md` split.

**Alex retested it on 2026-09-18** (`AX-3`): a **60,185-byte** file uploaded and verified byte-for-byte on download,
and two files previously stuck at the old limit became writable. `HL-0005` was updated on 2026-09-21 to say the
ceiling no longer applies and that files should not be split or trimmed to stay under it.

**Rachel retested independently in her own session**, rather than adopting the finding on trust. That was not
ceremony: `HL-0008` and `HL-0009` both record that connector behaviour varies by **session**, not by account, so
another seat's result does not automatically transfer. A **43,856-byte** file was written to Drive and stored whole.
The two live record files were then rewritten at **32,444** and **33,077** bytes — both above the old ceiling — and
Drive returned both byte-exact.

**What it cost, recorded rather than smoothed over.** Every split and compaction from **19 to 21 September** was work
against a limit that had already stopped existing. On 2026-09-21 alone that meant dating `RA-19`'s Batch 5 narrative
out, compacting `RA-32`, and tightening `RA-21`'s wording twice "to make room" — and telling Minda twice that headroom
was critical, at 915 bytes and then 312, when it was not.

**The part that is worth keeping is not about file size.** `HL-0031`, written that same morning, said in terms: treat
the ceiling as live *until someone tests it deliberately*. Nobody did — Rachel included — for three days after it had
already been tested by someone else. **A recorded tool limitation is a dated observation and decays exactly like the
stale index-v2 snapshot in `RA-11`.**

**What survives from `HL-0005`:** byte-verify every upload against the local count. That is how the original fault was
caught and how a future regression would be.

**What stays live on `RA-31`, and was never a size question:** four record files are Drive-only while `CHARTER.md`
§2's mirror list names eight, so content moved *out* of mirrored files is absent from git. Minda's ruling. Whether to
consolidate the history files back is also hers — Alex's hand-off leaves it to Rachel, but it touches that ruling.

## 2. Peter's hand-off was accurate when written and stale when read

It recorded two Alexey messages landing at **09:01** — a follow-up on whether FBP's P&L reconciles to the filed
accounts, and a request to email the FY2024 statutory accounts and the FY2025 CT600.

**Both had already been answered at 14:24 the same day**, with both documents attached (`FP0000004`, 1,095,647 bytes;
`FP0000142`, 854,121 bytes). Peter staged his note at **14:17** — seven minutes before that reply went.

Rachel read the note and **reported its contents to Minda as the live position without opening the thread**, saying
the messages were unseen and that the document request needed a decision. Both were wrong. Minda corrected it from
memory, and the thread confirmed it. This is precisely what `HL-0028` exists to prevent: *read the thread, not the
drafts list* — or in this case, not the hand-off.

## 3. `AWT-0057` was sitting Open with the work long done

The house-style row. The work completed around **14:45**; the row was never flipped to In Progress and was closed at
**18:06**, only after Minda asked Rachel to check `Raw/`. The hand-off had been read from `Raw/` and actioned; the Hub
row that came with it had not. Rule A exists for exactly this.

## 4. Four errors in one day, one habit

| Where Rachel looked | What she should have read |
|---|---|
| `CHARTER.md`'s summary wording | the Document Register (`RA-21`, first time) |
| a partial register read | the whole register (`RA-21`, second time) |
| `current-state.md`'s own Hub list | the Hub (`AWT-0017`, `AWT-0029`, `AWT-0036`) |
| Peter's `Raw/` note | the Gmail thread |

Every one of these sources was **accurate when written**. None was current when consulted. That is `HL-0020`'s
"recency is not authority" from the other side: not a stale copy carrying a newer timestamp, but an accurate record
read after the world moved on.

## 5. Records corrected

- **`RA-31`** rewritten around the retest, what it cost, and what remains (the mirror list).
- **`RA-11`** — `FP0000101` removed from the open duplicates. It is the Landbay guarantee deed at
  `Collaboration Space/Fishbone Properties Ltd/FP2401 - 131 Goathland Avenue/Correspondence/`, which is its **home**
  under Minda's ruling, not a duplicate awaiting action.
- **`AWT-0017`, `AWT-0029`, `AWT-0036`** moved from open to closed in `current-state.md`, in two places each.
  `AWT-0017`'s *substance* had been absorbed into `RA-5` and `RA-6` back on 2026-09-19 — only the status drifted.
- **The AGGA document list** now records that two of the five offered documents were sent on 2026-09-21; the two loan
  agreements, `FP0000062`'s sale bill and completion statement, and `FP0000114` remain offered but unrequested.
- Header notes in both record files carry a dated correction. **The split narratives above them are left unedited,
  because history is not rewritten** — only their live claims are marked false.

| File | Bytes | New Drive id |
|---|---|---|
| `open-issues.md` | 32,444 | `12TTqyWRXfMtqwJAJ3SaoiBTwIyEol7v9` |
| `current-state.md` | 33,077 | `1esrmGb8e4k7xeAzT3thPVhng5IEaWFV8` |

Both hand-offs archived per the `Raw/` convention. The ceiling-retest artefact is retained in `Archive/`, not deleted.

---

*Filed under `CHARTER.md` §5. Written once; never edited.*
*Rachel — AI Finance Assistant, Fishbone Group.*
