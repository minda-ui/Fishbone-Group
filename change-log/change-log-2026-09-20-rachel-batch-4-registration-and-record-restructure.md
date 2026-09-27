# Change log — 2026-09-20 — Rachel: Consolidation Batch 4, its registration, and a restructure of Rachel's own records

_Author: **Rachel** (AI Finance Assistant). Owner-authorised by **Minda**. Fourth working day._

_Preceded by three entries dated **2026-09-19**: `change-log-2026-09-19-rachel-registrations-splits-and-governance-corrections.md`,
`change-log-2026-09-19-rachel-batch-2-and-corrections.md` and `change-log-2026-09-19-rachel-batch-3-loans-and-register-findings.md`.
This is a new day and a new entry, not a fourth addition to yesterday's._

---

## 1. Consolidation Batch 4 — the incorporation and registration set

**Authorised by Minda.** Batch 4 is the statutory-identity set: certificates of incorporation, changes of name, VAT
registrations and tax-identifier notices.

**It began blocked, the same way Batch 3 did.** The Financial Archive's root held **loose statutory files** and there was no
folder that would take a certificate of incorporation or a VAT registration — the six company folders hold `Annual Accounts` and
tax-year folders, and Batch 3's `Loans` and `Fishbone SSAS` folders are facility- and scheme-specific. Creating a folder type is
**reshaping the archive**, which `CHARTER.md` §3 sends to Minda rather than letting Rachel decide. Put to her, she ruled:

- **`Registration & Tax IDs` at the archive root** — folder id `16rFY1xQjWvnTX1LpE3_Lst91duj8K7Gc`
- subdivided **per company**, seven subfolders: Fishbone Construction Ltd, Fishbone Properties Ltd, Fishbone Holdings Ltd,
  Fishbone Waste Ltd, Amfa Furniture Ltd, Fishbone Commercial Properties Ltd, and **`Group`** for documents that are not one
  company's.

**Moved: 18 files, 2,986,136 bytes.** Every file id and every byte size unchanged, because both ends are on the same Drive and a
**move preserves the file id** — the method `CHARTER.md` §3 fixes for same-Drive consolidation, as against copy-then-retire for
cross-cloud.

**The archive root now holds nine folders and zero loose files**, for the first time since Rachel opened it: the six company
folders, plus `Loans`, `Fishbone SSAS` and `Registration & Tax IDs`.

**Twelve Commercial Properties KB duplicates retired** to `Archive/`, labelled, never deleted — Rachel deletes nothing. Ten
carried a `(1)`-suffix download tell at identical byte counts. **Two did not**, so both were **sha256-verified against the
primary before being touched**:

| Document | sha256 | Bytes |
|---|---|---|
| Fishbone Holdings Ltd incorporation pack | `287040330d3bcaf1c5898ec4328d9fda40af4b51ee0e6da29923f2828ba9632c` | 641,237 |
| Fishbone Drylining change of name | `d83bb1ea88a424ceaa7c23b7aa59e9a20fd7ff147553c53ca866777ca000ad45` | 20,885 |

**The structural question that had been sitting with Alex was answered by Minda instead.** `AWT-0031` had been re-scoped down to
one thing Rachel could not decide: whether the Commercial Properties KB should hold a second copy of the group's incorporation
pack at all. Minda's ruling was **move one and retire the CP duplicate** — which overrode Rachel's own recommendation to leave
the CP copies pending Alex's answer. Rachel had proposed the more cautious option; the owner took the direct one, and it is
recorded that way round.

---

## 2. Batch 4 registration — eleven numbers, seven Locations, and two that needed reading

**Authorised separately by Minda** ("Yes, batch 4 registration"), after the moves were reported. The Document Register
(Smartsheet `7352854736144260`) now holds **221 rows**.

**Eleven numbers minted:**

| No. | Date | Document |
|---|---|---|
| `FC0000017` | 2012-02-14 | Certificate of Incorporation — Fishbone Drylining Ltd (07948220) |
| `FC0000018` | 2024-10-31 | Change of name — Drylining → Construction |
| `FP0000143` | 2015-07-15 | Certificate of Incorporation — Fishbone Properties Ltd (09687012) |
| `FH0000022` | 2016-04-26 | Incorporation **pack** — Fishbone Holdings Ltd (10146262) |
| `FW0000007` | 2021-02-15 | Certificate of Incorporation — Rubbish Taxi NE Ltd (13201875) |
| `FW0000008` | 2023-07-25 | VAT Certificate — Fishbone Waste, VRN 408853087 |
| `FA0000003` | 2018-03-16 | Certificate of Incorporation — Fishbone Investment Ltd (11259604) |
| `FA0000004` | 2024-04-10 | Change of name — Investment → Furniture by Fishbone |
| `FM0000010` | 2021-10-19 | Certificate of Incorporation — Commercial Properties (13687238) |
| `FM0000011` | 2023-04-30 | HMRC letter approving VAT registration, VRN 438 2786 61 |
| `FM0000012` | *(blank)* | HMRC corporation-tax UTR notice, form CT416 |

**Seven Locations corrected** with **no new number minted**, because the documents were already registered and policy §4 forbids
a second number for one document: `FC0000013`, `FP0000141`, `FH0000021`, `FA0000002`, `FM0000009`, `FG0000001`, `FH0000007`.

### Two entries that only reading could settle

**`FH0000022` is not a certificate.** Filed and titled as one, it is a **composite incorporation pack**: the certificate, the
IN01, the statement of capital, the memorandum and **bespoke** articles. It also carries the directors' **dates of birth and
residential addresses**, which are **cited here and in the register description, never copied** — `CHARTER.md` §4. Registering
it as "Certificate of Incorporation" would have understated what the estate holds and hidden personal data inside a document
nobody would think to check.

**`FA0000004` is a new document, not a duplicate of `FA0000001`.** On title alone it looked like the same change of name. Company
**11259604 was renamed twice**: incorporated as Fishbone Investment Ltd, renamed **Furniture by Fishbone Ltd** on 10 Apr 2024
(this document), renamed **Amfa Furniture Ltd** later (`FA0000001`). A byte-size comparison would have got this wrong and a title
match would have got it wrong; only opening both settled it. This is the second time the same lesson has been paid for — the
first was `FP0000004` — and it is now stated on `RA-15`: **titles and byte counts decide nothing on their own.**

### Two things deliberately left blank rather than guessed

**`FM0000012` was registered with no date.** HMRC's CT416 UTR notice shows none that Rachel would vouch for, and an invented or
inferred date on a tax document is worse than an empty cell.

**The UTR value itself was not written into the register.** It is a live tax identifier and the Document Register is a **shared**
sheet. This is the same reasoning applied all week to the six Government Gateway identifiers, and the same reasoning behind
`HL-0022` below.

### A new finding, and it is a missing document rather than a missing row

**`FM0000011` is HMRC's letter *approving* VAT registration, not a VAT Certificate of Registration.** So the estate does **not
hold** Fishbone Commercial Properties Ltd's actual VAT certificate — where Fishbone Waste's is held, and is now `FW0000008`.
Carried to `RA-15`. **Obtaining it is not Rachel's to do:** under `CHARTER.md` §3 and Minda's standing ruling, documents needed
from Companies House, HMRC or any other external registry are **requested via Peter and registered in the AI Workforce Hub**,
with Alex assisting — Rachel does not fetch them.

### A method deviation, recorded for the second time

The fixed method is **copy in → byte-verify → register → retire**. In Batch 4, as in Batch 3, **the retirements ran before the
registration**. The reason is plain and worth stating rather than glossing: the batch **paused between the two** for Minda's
go-ahead on the numbering, and the retirements were already complete when it paused.

Nothing was at risk — retirement depended on the primary being byte- or hash-verified, never on its having a number. But the
method has now been **written one way and run another twice**, which is a signal about the method and not about the batches.
Either `CHARTER.md` §3 should say that registration may follow retirement where an approval gate sits between them, or the
approval gate should come earlier. **For Minda**, on `RA-19`.

---

## 3. Hub and Help desk

**`AWT-0031` closed Done** (Tasks & Requests `8860839228606340`, row `5160271834908548`), Done date 2026-09-20, Health Green, on
Minda's ruling. The closing record states plainly that **Alex was right on all three points** he raised, and adds one nuance
rather than leaving it out:

> Alex's security objection — that both incorporation folders still carried the six Government Gateway files, which would have
> made the move a confidentiality problem — was **true of index v2 §7's snapshot and not of live Drive**. Those six had already
> left in Batch 1. That is the **same class of error Alex had correctly pulled Rachel up for** a day earlier, when Rachel cited a
> duplicate set from a later register query as though it came from v2. Neither of us was careless. **The fault is index v2 being a
> dated snapshot** — its own §10 admits it never re-verified the archive — so a byte-level duplicate register is evidence of what
> was true when it was built, never of what is true now.

The closing note went in as a **row discussion**, with `Source` pointed at it, because the `Response` cell is near the
4,000-character ceiling at which Smartsheet **silently truncates** (`HL-0015`).

**`AWT-0036` raised** (Alex, Medium, Open) — Minda's ruling that **estate-wide amendments come through `Raw/`**, reported to Alex
and to the Fishbone Workforce dashboard **as accepted by Minda**, on her instruction. This **withdraws `AWT-0034` Part B as
written**. Part B had asked that **nothing other than Rachel writes into Rachel's KB**, which was too absolute: the estate needs a
way to amend a colleague's records, and `Raw/` is a better answer than a prohibition. Recorded as a withdrawal, not quietly
dropped.

**`HL-0023` raised** (Help & Lessons `7780569054316420`, Medium, Open) — the `Raw/` convention, so the rest of the estate has it
and not only Alex.

**`HL-0022` corrected within the hour** — and the correction matters more than the original finding. `HL-0022` records that Drive's
`search_files` returns a **`contentSnippet` preview of each matching file's actual text**, printed into the session transcript
whether or not it was asked for, so **listing a folder discloses the contents of the files in it**. It was found the hard way: six
Government Gateway documents had been registered all week **without being opened**, a deliberate control, and a single
`search_files` call on the archive root printed **the login identifier digits themselves**.

Rachel's first version of the row said it was **not established** whether `search_files` could suppress snippets, and pointed at
`get_file_metadata` as the way round. **That was wrong and understated the fix.** `excludeContentSnippets: true` is accepted by
**`search_files` itself** — confirmed on six live folder listings including the one that leaked, none of which returned a snippet
while still returning title, id, mimeType, fileSize, parentId and timestamps. The row was corrected **naming the old wording**
rather than quietly replacing it. The rule in force is **pass the flag on every call**, not avoid the tool. One question is left to
the estate: whether every employee's Drive connector exposes the parameter. **The leaked values were not recorded, repeated or
written anywhere.**

The generalisable lesson, which is not confined to finance: **deciding not to open a file is not a control unless snippets are
suppressed at the call.**

---

## 4. `CHARTER.md` — Alex's amendment adopted, with its markup repaired

Found by diffing Drive against the git mirror after an unrelated write: **Drive 21,918 bytes, local and git 21,507**. Alex had
edited `CHARTER.md` directly. Three separate things were true of that edit and are recorded separately:

1. **The content was good and is adopted unchanged** — a §3 bullet on external binary documents, which is exactly the kind of
   thing the steward of housekeeping should be adding.
2. **A closing italic marker had been dropped**, leaving an earlier amendment block's emphasis unterminated. Repaired.
3. **The amendment was not logged in the footer.** Logged, **crediting Alex**.

Both copies are now **22,996 bytes**. Rachel's initial reading of this was that a stray writer had got into the KB; Minda's
answer — *"It was Alex"* — turned that from a security concern into a colleague's legitimate edit, and then into `AWT-0036`'s
`Raw/` convention, which is the durable fix.

---

## 5. A restructure of Rachel's own records, and the problem it exposed

Adding Batch 4 to the records could not be done by writing to them. Drive's `create_file` **silently truncates a single write at
31,316 bytes** (`HL-0005`) — it returns success, so a file past that point is quietly incomplete. Both live files were close to it
before a word of Batch 4 was written.

**`current-state.md` — third split.** Three rows moved **verbatim** to `current-state-history.md`: the 2026-09-19 records tidy, the
**Batch 2** row, and **the 2026-09-19 half of `Hub requests raised`**. The third is the one that mattered: that row had become a
**running chronological log**, 5,047 bytes of it, which is precisely what a **present snapshot** must not carry, and it would have
gone on growing every session. The live row now holds **only the open position** — who owes what, what needs Minda, what is closed
— and points at the history file for the narrative.

**`open-issues.md` — fourth split, and it needed a new file.** Adding Batch 4 to `RA-19`, the Batch 4 findings to `RA-11`,
`RA-15`, `RA-28` and `RA-14`, and opening `RA-31` took the file to **36,798 bytes — 5,482 past the truncation point**. The usual
remedy failed: `open-issues-history.md` had under 7 KB of headroom and could not absorb it.

So **`open-issues-history-2026-09.md` was opened — on Drive only.** `CHARTER.md` §2's mirror list names **seven specific files**,
and widening it is **Minda's call, not Rachel's**, so the new file is **flagged for her rather than assumed**. This is exactly how
`open-issues-resolved.md` began on 2026-09-19, before Minda widened the mirror from four files to seven.

`RA-11`, `RA-15`, `RA-19` and `RA-28` were **rewritten as compact current-position rows**, and their **previous text moved in
full, verbatim** — the whole cell each time, not a chosen extract. That was deliberate: extracting "the superseded part" of a
7,000-byte row means judging which sentence is still true, and doing that while already over the truncation point is how detail
gets lost. `open-issues.md`'s own header, which had accumulated four split notes and was 2,952 bytes of mostly history, was
replaced with one current note and moved verbatim to `open-issues-history.md`.

**Nothing was summarised away, edited, corrected or deleted anywhere in this restructure.**

### `RA-31` — raised the same session the problem arrived

**The history files are nearly full, so the next split has nowhere to go.** Every split so far has moved rows from a live file into
a companion history file. That works until the companion fills up too — and it now has. After today, `current-state-history.md`
sits within about **2.8 KB** of the ceiling and `open-issues-history.md` within about **3.3 KB**.

The likely fix is to **date the history files the way these `change-log` entries are dated**, with the live file pointing at a set
rather than at one file. Today's Drive-only file is the first instance of it. But that scheme changes `CHARTER.md` §2's mirror
list, so **it is Minda's to approve**. Raised now rather than at the moment it blocks a write — which is how `HL-0005` was found
the first time.

### Every file byte-verified, and the archive-then-recreate discipline held

Each of the five record files was **archived, never trashed** — renamed with a dated reason and moved to Rachel's `Archive/` — and then recreated from the local copy, with the returned `fileSize` checked against the local byte count before moving on. All five matched exactly on the first write:

| File | Bytes | Headroom to 31,316 |
|---|---|---|
| `current-state.md` | 29,959 | 1,357 |
| `current-state-history.md` | 28,518 | 2,798 |
| `open-issues.md` | 29,502 | 1,814 |
| `open-issues-history.md` | 28,386 | 2,930 |
| `open-issues-history-2026-09.md` (new, Drive only) | 20,569 | 10,747 |

The KB root was then re-listed: **eight markdown files, exactly one live copy of each basename** — the `HL-0020` check, run because the duplicate-control-file episode of 2026-09-19 showed that a missing recreate leaves two live copies and that **recency is not authority**. Every Drive listing in this session passed `excludeContentSnippets: true`, per `HL-0022`.

**Three stale figures were caught by reading each file back before emitting it**, which is why that step exists: `RA-31` still quoted `open-issues-history.md` at 24,549 after that file had grown; the `Open issues` row still read *19 open, 11 resolved* after `RA-31` was opened; and the same row still listed only two companion files. None reached Drive.

### A count error found while checking something else

`RA-28` has said **eleven** unidentified files since the day it was opened. **Its own list totals twelve.** The live row now says
twelve and says the heading was wrong from the start; the erroneous original is preserved verbatim in the new history file rather
than tidied out of existence. Batch 4 **did not reduce** that list — everything Batch 4 identified, it identified from a title or
a filename reference, never by opening one of these files — and saying so plainly is better than leaving a reader to infer it from
a changed number.

---

## 6. Where things stand

| | |
|---|---|
| **Consolidation** | Batches 1–4 **DONE**. 44 files moved, ids and byte sizes unchanged throughout; 20 redundant copies retired, labelled, never deleted; 23 numbers minted, 16 Locations corrected; register 197 → **221 rows**. Archive root: **nine folders, zero loose files**. |
| **Batch 5** | The **bank-statement series**. Still needs a folder convention from **Minda**, though `Loans` and `Registration & Tax IDs` now suggest its shape. |
| **Needs Minda** | `FG-CR-0001` (which `AWT-0034` Part A is correctly stalled behind); `RA-31` (the mirror list and the history-file dating scheme); `RA-3` (QuickBooks routine-posting rules); `RA-22`/`RA-23` (over-wide connector grants); `RA-24` (intercompany loans and unpaid corporation tax — Minda and RMT, not Rachel); the `CHARTER.md` §3 question about the approval gate in the consolidation method. |
| **Awaiting colleagues** | Peter on `AWT-0016` and `AWT-0017`; Alex on `AWT-0028` and `AWT-0036`; Victoria on `AWT-0029` and `AWT-0030`. |
| **Rachel's next** | Reconcile against the Document Register (`RA-15`); the Landbay pack registration, which needs a byte-level comparison of four FP pairs (`RA-11`); classify the twelve unidentified files (`RA-28`); `FS0000009`–`FS0000013`, left in the SSAS KB outside Batch 3's scope; the remainder of the v2 sweep (`RA-29`). |

**Standing constraints unchanged, and restated because they bound every action above:** index only Fishbone Group company
documents and never personal ones; **Beverley Place is the owner's personal house**; **Shakerbone Construction Ltd is out of
scope**; all files live on Google Drive, with only the governance files mirrored to git and **all financial documents on Drive
only**; **never the Collaboration Space and never OneDrive**, both on security grounds; external-registry documents come via Peter
and the Hub, not from Rachel.

---

_No pull request was raised and no financial posting was made. QuickBooks was not written to. No email was sent._
