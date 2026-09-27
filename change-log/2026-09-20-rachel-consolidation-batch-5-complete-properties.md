# Change log — 2026-09-20 (evening, later): Consolidation Batch 5 completed — Fishbone Properties

**Author:** Rachel, AI Finance Assistant
**Instruction:** Minda — *"Batch 5, can we complete it?"*
**Scope:** the main Financial Archive (`1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4`, SRC-31), Fishbone Properties Ltd only.
Construction, Waste, Holdings and Commercial were completed earlier the same day and are recorded separately.

---

## 1. What was done

Batch 5 — the **bank-statement series** — is finished for all five companies. The approved structure is unchanged:

> `<Company>/Bank Statements/<account>/<format>`, keyed to the **account number**, with **all years of an account in one
> continuous series**.

Properties' destination folder (`12zf6st4OKeTodLqBvu02FNPs--nLEZBB`) was empty at the start of the work and now holds
**ten account folders**. No file was copied, renamed, deleted or trashed. Every placement was a **move**, which preserves
the Drive file id.

---

## 2. Why Properties took longer than the other four

The other companies' sources were flat or nearly flat. Properties' were **nested two levels deep** under **two competing
naming schemes** — one by tax year, one by function — and, critically, **the folder labels could not be relied on**:

* a folder named **`Bank Statement pdf#` contained CSVs**, not PDFs;
* the function-named folders — `Income account`, `Loan account`, `Saving investment account`,
  `Management and maintenance account`, `Payroll account` — named **no bank and no account number**;
* a folder called **`New folder`** held statements for **three different accounts**.

Filing on the labels would have produced a tidy structure that was wrong. So the accounts were identified **from the
statements themselves** — the account number, sort code and account name printed on the document — and only then was
anything moved. This is `RA-18`'s rule applied at account level: **a folder name is not a classification.**

---

## 3. What that turned up: nine accounts across four banks, where the labels implied five

| Account | Bank / sort code | Evidence it was identified from |
|---|---|---|
| **84311663** | HSBC **40-34-18** | Statement header: *Business Current Account*, IBAN `GB33HBUK40341884311663`. This is the folder labelled "Income account". |
| **84311671** | HSBC **40-34-18** | Statement header; shown in online-banking export as *"Bmm Account"*. The "Saving investment account". |
| **24643100** | HSBC **40-34-18** | Filename series plus transfer references (`TFR 403418 24643100`) in the current account's own statements. The "Loan account". |
| **18331619** | **Tide** 04-06-05 | Statement: *"Account number: 18331619, Sort code: 04-06-05"*, ClearBank/Tide legal wording. |
| **18106536** | **Tide** 04-06-05 | Same, read from its own statement. |
| **18106456** | **Tide** 04-06-05 | Same, read from its own statement. |
| **Starling** (payroll) | Starling, no number | `StarlingStatement_*` exports; **no account number appears in any of them**. |
| **Revolut Business** | Revolut, no number | A **`Revolut Business Fee`** line and `Expenses app charges` inside the CSV. The folders called this the "Management and maintenance account" and named no provider at all. |
| **BBL** | no number | `BBL LOAN DRAWDOWN 7,500` on 07 Jun 2020, repaid by transfers in from `84311671` and `84311663`. |

**Three findings worth keeping:**

1. **There are three Tide accounts, not one.** All three were zeroed by a *balance adjustment / Tide debit* on
   **16 June 2022** — £140.45, £499.80 and £99.80 — which dates the end of that banking relationship precisely.
2. **The "Management and maintenance account" is Revolut Business, and nothing in the filing said so.** The label was
   impossible to accept once the Tide closure was known, because those files run from 2022 to 2026 — after Tide had
   gone. The provider was established by reading the export, not by inference.
3. **Properties has a bounce-back loan**, separate from the HSBC loan account `24643100`. £7,500 drawn 07 Jun 2020.

Where no account number exists anywhere in the source — Starling, Revolut, BBL — the folder is named **descriptively**,
following the `Credit card - Company` precedent already set in Construction.

---

## 4. Counts, and how they were verified

| | |
|---|---|
| Account folders created | **10** |
| Format folders | **15** (`CSV`, `PDF`, and one `OFX`) |
| Of those 25, adopted by move-and-rename | **6** |
| Of those 25, newly created | **19** |
| Files placed | **255** |
| Individual file moves | **187** |
| Folder moves (carrying 68 files) | **6** |

**Verification, both directions:**

* **Forward** — every one of the 193 move calls returned the file with its **id unchanged** and its **`fileSize`
  unchanged**. Nothing was re-uploaded, so nothing could be truncated (`HL-0005` does not arise on a move).
* **Backward** — after the moves, **every source folder was re-listed** and confirmed to contain **no files**. Only
  empty folder shells remain in the old year-based tree. This is the check that catches a file silently left behind,
  and it was run rather than assumed.

All Drive calls carried `excludeContentSnippets: true` (`HL-0022`).

---

## 5. Two things deliberately **not** done

**5.1 One file was not filed under a guess.** `August 2022.pdf` (1,086,267 bytes) is a multi-account HSBC scan whose
text layer will not extract cleanly. Its siblings in the same source folder belong to `84311663`, and its byte size
suggests several accounts in one document — but "suggests" is not evidence. It sits in a folder named
**`Account not identified`**, where it is visible and awaiting someone who can open it, rather than being filed
plausibly and wrongly.

**5.2 Same-name, same-size pairs were kept, not retired.** Several statements appear in two adjacent year folders at
identical byte counts — e.g. `20240503_24643100.csv` in both 2023-24 and 2024-25. This is **expected**: the archive's
fiscal year ends 3 May, so both years' exports include the boundary month. `RA-27` forbids retiring a file on size
alone, and no sha256 comparison was run because nothing was going to be retired either way. Both copies are in the
series.

---

## 6. What the structure surfaced by itself

This is the third time the continuous-series structure has exposed a gap that the old tax-year folders hid:

* **`RA-7`** — Construction's CIS returns stop at April 2023;
* **`RA-8`** — Construction's BBL statements stop at May 2024;
* **new, from Holdings earlier today** — the CSV series runs `20230511 → 20240911`, then jumps to `20250511`.
  **Seven months are missing: October 2024 to April 2025.**

That was the argument for keeping each account in one series rather than chopping it by year, and it has now paid for
itself three times.

---

## 7. What remains under `RA-19`

**The second source, which is a fetch and not a reshape.** The company knowledge bases' `Raw/` folders hold **live 2026
statements more recent than anything now in the archive** — Properties' `84311663` and `24643100` run March to August
2026, and Commercial holds two Starling series. Index v2 recorded that bank statements were being captured into the
KBs rather than the archive; this is that, concretely, and it is the remaining work on this row.

---

## 8. Records updated

| File | Bytes | Change |
|---|---|---|
| `current-state.md` | 31,003 | Batch 5 row rewritten as **DONE, all five companies**; `Next action` item (4) updated; the `Index v2` row compacted to make room. |
| `open-issues.md` | 31,041 | `RA-19` rewritten to the completed position; `RA-14` compacted; a **seventh move** note added to the header. |
| `current-state-history-2026-09.md` | 16,464 | Received the in-progress Batch 5 row and the full Index v2 row, **verbatim**, each under its own heading. |
| `open-issues-history-2026-09-part2.md` | 15,865 | Received `RA-19`'s and `RA-14`'s previous text, **verbatim**. |

Each was written by **archive-then-recreate**, the superseded copy moved to `Archive/` under a `SUPERSEDED` title with
its previous byte count — **never trashed** — and each new copy **byte-verified against the local file** before this
entry was written.

**`RA-31` bit twice during the update, and both times the byte check caught it before the write:**

* `current-state.md` went **420 bytes over** the 31,316 ceiling. Rather than trim the new Batch 5 text, the finished
  **Index v2** row was dated out to the September history file — *when a file fills it dates, it is never trimmed*.
* `open-issues.md` went **35 bytes over**. `RA-14` was compacted and its previous text moved verbatim, which also
  reflects reality: its records question is settled and only the business question — does Amfa trade — is still live.

`open-issues.md` now has **under 400 bytes** of headroom and `current-state.md` about **313**. The next row to grow in
either forces another move. That is `RA-31`, and it is still open for Minda on the mirror-list question.

---

## 9. Nothing here needed a new authority

The `Bank Statements` folder type was authorised by Minda when Batch 5 began, and creating account and format folders
inside an authorised type is **adding, not reshaping** (`RA-20`). No file left the archive, none was deleted, and no
personal material was touched.

---

_Rachel, AI Finance Assistant — Fishbone Group_
