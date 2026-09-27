# Change log — 2026-09-21 (late afternoon), Rachel (AI Finance Assistant)

**`RA-21` corrected a second time, in the opposite direction, after Minda confirmed the TDS home.**

_This entry supersedes section 3 of `2026-09-21-rachel-house-style-adopted-HL-0035-RA-21-corrected-drive-resync.md`
on the `RA-21` point. That entry is **not edited** — change-log entries are written once — so the correction is
recorded here instead, which is the reason the never-edit rule needs follow-up entries to work._

---

## 1. What Minda confirmed

> "TDS certificates belong to Fishbone Properties Ltd, and their home is on Collaboration Space. This is confirmed."

## 2. What Rachel had said, and why it was wrong

Earlier the same day `RA-21` was rewritten to list roughly **21 registered documents** sitting in the Collaboration
Space, headed by **`FP0000114`** — the master TDS deposit export — and framed as a **personal-data exposure** under §4.
Rachel proposed treating `FP0000114` separately and faster than the rest of the row.

**That framing was wrong, and the Document Register shows it.** Checking properly:

- **`FP0000114` is filed at** `Collaboration Space/Fishbone Properties Ltd/FP00 - Company/Correspondence/` — the same
  tree as the per-property certificates **`FP0000129`–`FP0000137`**, one folder level up. It is not a document in a
  different place; it is the same document class in the same designated home.
- The Collaboration Space holds a **deliberate, structured filing estate**: per-property
  `Fishbone Properties Ltd/<code>/Correspondence` and `/Operations/Tenants|Certificates`, plus
  `Fishbone SSAS/Loanback - Fishbone Commercial Properties Ltd`,
  `Fishbone Construction/C Legal & Court Cases/MSEM UK Ltd Claim`, `FH Company Documents`, and `Other/Group Post`.
- **Several rows record filing there on the owner's own instruction.** `FM0000001`–`FM0000003` (Commercial Properties
  insurance) were **"Filed 2026-09-09 on the owner's instruction"**, and the `FM00 - Company / Insurance` folders were
  **created the same day to match the sister company's existing `FP00 - Company / Insurance` shape**.
- One row cites its authority explicitly: **"FILED 2026-09-10 under policy v1.3 section 7"**.

**So the list was never evidence of an exposure.** It was a description of the filing system working as designed.

## 3. The method failure, which is the part worth keeping

Both errors on this row in one day came from **the same cause: treating a partial read as a complete one.**

- In the morning Rachel relied on **`CHARTER.md`'s summary wording** ("exposure now closed") instead of the register.
- In the afternoon she read **the register's `Location` values for a handful of documents** and inferred an exposure,
  without reading the **shape** those values described or the **notes** recording why they were filed there.

The register answered the question correctly both times. Rachel asked it too narrowly the first time and read it too
literally the second.

**A tool trap found along the way, and it is the `RA-15` lesson in a new place.** Smartsheet's `find_in_sheet` appears
to scan only as many rows as `limit` allows: a search for `FP0000114` with the default limit returned **0 occurrences
over 224 rows**, and the same search with `limit: 2000` returned the row. **A search that finds nothing is not evidence
that nothing is there** unless the scan covered the whole sheet. Same family as `HL-0005` and the sampled-register
read: a tool reporting success while having done less than asked.

## 4. Where `RA-21` now stands

- **Not a filing question any more.** The TDS documents, and by the same logic the rest of the structured estate, are
  in their designated home.
- **What is left is permissions:** the folder is shared to every `fishboneconstruction.co.uk` account **as writer**
  (`AWT-0014`). Whether that is intended on a tree holding tenancy, legal and insurance records is **Victoria's and
  Minda's**, and it is not a reason to move anything.
- **`AWT-0029` narrows** from "retire the documents" to that permissions question.

## 5. A contradiction recorded rather than resolved (§3)

`CHARTER.md` §3's NEVER list bars putting **any financial document** into the Collaboration Space. The register shows
insurance policy schedules filed there **on the owner's own instruction**. Both cannot be read literally at once.

**Rachel's reading, put to Minda for confirmation rather than applied:** property-management, legal and
company-secretarial documents live in the Collaboration Space under **policy v1.3 §7**; **financial** documents —
accounts, tax, ledgers, bank statements — live in the **main Financial Archive** under Minda's ruling. That makes both
rules true and fits every register row seen.

**It is recorded, not acted on.** §3's closing bullet requires a contradiction to be recorded and asked about, never
resolved by guessing, and this is Rachel's inference rather than an instruction she has been given.

## 6. Records updated

| File | Bytes | New Drive id |
|---|---|---|
| `open-issues.md` (`RA-21` rewritten, `RA-32` compacted) | 30,401 | `1H4OEmX4nw1D_yp6hlFXGMlgNysh9cUB3` |
| `open-issues-history-2026-09-part2.md` (two rows moved in) | 22,549 | `1qhNK3-nptnc6LAZyV6CKm8wztxbkAuSu` |
| `current-state.md` (afternoon block corrected) | 30,934 | `1GESyaiUhlfVS1YHGqrkKaDOSjbXE7Lln` |

The superseded `RA-21` text and `RA-32`'s full five-defect narrative both moved **verbatim** to
`open-issues-history-2026-09-part2.md` under `RA-31`. `RA-32` was compacted because the rewritten `RA-21` took the live
table **30 bytes past the ceiling** — caught by the byte check before the write, which is `HL-0005` working as intended.

**Headroom is now tight in two live files:** `open-issues.md` **915 bytes**, `current-state.md` **382**. `RA-31` covers
it; the next row of any size in either forces a move.

---

*Filed under `CHARTER.md` §5. Written once; never edited.*
*Rachel — AI Finance Assistant, Fishbone Group.*
