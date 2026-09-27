# Change log — 2026-09-20 (evening): missing-data list compiled and handed to Victoria

**Author:** Rachel, AI Finance Assistant
**Instruction:** Minda — *"When you finish with batch 5, create a list of missing data and pass to Victoria via Fishbone Workforce"*
**Raised as:** `AWT-0041` (Victoria, Medium, due 2026-09-27)

---

## 1. What was produced

**`Outputs/2026-09-20_missing-financial-data_consolidated-list.md`** — Drive id
`12TAz6-skDmJI129OGYCWSG1qAYSwMwGL`, **13,050 bytes**, byte-verified against the local copy.

Fifteen numbered items drawn from consolidation Batches 1–5, the index v1/v2 sweeps and the Document Register
reconciliation. Every one was found by **looking** — a series that stops, a register row pointing at nothing, or a
document that turned out to be something other than its title.

## 2. The structural decision, and why it matters

The list keeps **three things separate** that are easy to collapse into one number:

1. **Genuinely missing** (items 1–10) — the estate does not hold it anywhere Rachel can see.
2. **Held but unidentified** (items 11–13) — the document exists; what it *is* has not been established.
3. **Not yet examined** (§6, deliberately unnumbered) — nobody has opened it. **Unknown, not missing.**

Collapsing those would overstate the problem, and it would do so in a way that is hard to unpick later. An unopened
folder is not a gap. The document says so explicitly so that nobody reading it downstream has to guess.

It also flags **what is already routed** — `AWT-0016`/`AWT-0017` (Peter), `AWT-0028` (Alex) and `AWT-0030` (Victoria)
cover items 1, 2 and 10 — so the hand-off cannot produce duplicate tasks. Those need **chasing**, not re-raising.

## 3. What is new, and had not been reported anywhere before today

* **Item 7** — Fishbone Holdings is missing **seven months** of bank statements, October 2024 to April 2025. Found by
  Batch 5's continuous-series structure: the CSV run goes `20230511 → 20240911` and then jumps to `20250511`. This is
  the **third** gap that structure has surfaced by itself, after `RA-7` and `RA-8`.
* **Item 12** — `August 2022.pdf`, a multi-account HSBC scan whose text layer will not extract, deliberately left in
  `Account not identified` rather than filed under a probable account.
* **Item 13** — three Fishbone Properties bank accounts (Starling, Revolut Business, BBL) carry **no account number
  anywhere in the source**, so they are filed descriptively. Minda can supply the numbers in a minute and that would
  settle the filing permanently.

## 4. Where it was filed, and where it was not

Written to **Rachel's own KB `Outputs/`**, which is where a deliverable for another employee belongs. It is **not** a
financial document, so the single-home ruling does not put it in the Financial Archive; and it is **not** in the
Collaboration Space or on OneDrive, both barred. Drive only, never git.

## 5. How it was passed

`AWT-0041` on the AI Workforce Hub `Tasks & Requests` (sheet `8860839228606340`), row `8546808450647940`.

* **Next-free number checked properly** (`RA-15`'s rule): the whole sheet was aggregated, `isSampled: false`, 39 rows,
  every `Task ID` unique. High-water was `AWT-0040`, so `AWT-0041`. The sheet's own duplicate-guard column returned
  blank on the new row.
* **The long content went in a row discussion**, not the `Response` cell (`HL-0015`) — all 15 items in brief, with
  `Source` pointing at the Drive id. Every returned cell value was read back.
* **The ask is routing, not doing:** the document proposes a split in its §8, but the routing call is stated as
  Victoria's, not Rachel's.

## 6. Data handling

Nothing in the document, the task row or the discussion reproduces a **tax identifier, Government Gateway credential,
UTR, date of birth or residential address**. Where such a value exists in a source it is cited by document
(`CHARTER.md` §4). The standing exclusions — pension records for named individuals, payroll reports, tenant identity
documents, personal material, and the out-of-scope companies — are listed in §9 of the document so their absence is not
read as an oversight.

## 7. Records updated, and a correction made in passing

| File | Bytes | Change |
|---|---|---|
| `current-state.md` | 29,091 | `AWT-0041` added to `Hub requests raised`. **Batch 4's full narrative dated out** to the September history file — the live file had fallen to **65 bytes** of headroom after the `AWT-0041` line, which is not a margin. A compact Batch 4 row stays live carrying its one lasting finding. |
| `current-state-history-2026-09.md` | 20,410 | Received Batch 4's row verbatim, under its own heading. |

**A drift corrected rather than quietly restated.** The `Open issues` row said **"19 open, 12 resolved"** and
`RA-1`–`RA-31`. The live log holds **21 open** and runs to `RA-33` — the row had fallen two behind when `RA-32` and
`RA-33` were opened earlier in the evening. Corrected to 21 and 33, verified by counting the rows in `open-issues.md`
rather than by trusting either number. **The row now states what it used to say**, because that row's own text warns
about exactly this failure, and hiding an instance of it inside the warning would be worse than the drift.

---

_Rachel, AI Finance Assistant — Fishbone Group_
