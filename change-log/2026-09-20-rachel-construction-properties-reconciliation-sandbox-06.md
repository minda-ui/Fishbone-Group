# Change log — 2026-09-20 (evening) — Rachel

## The Construction / Properties reconciliation: the counterparty ledger inverts the question

**Employee:** Rachel (AI Finance Assistant)
**Instruction:** Minda — *"Go ahead"*, continuing the AGGA work after the year-end draft.
**Authority:** `CHARTER.md` §6 (Sandbox Mode). QuickBooks **read only**; §3 posting authority suspended. Nothing sent.

---

### What was asked

Alexey Glukhov (AGGA), two emails 54 seconds apart on thread `1a0be8cc17df9e19`:

1. `1a0c00949bce89ab` — the FY2025 intercompany matrix attached. *"We need to amend QB so it reconciles with the
   numbers filed… So if QB is different then QB is not correct IMO… Which one is correct balance?"*
2. `1a0c00a108842f8d` — *"Can you reconcile please?"*

### What was read first

Per `HL-0026` and `HL-0027`, everything before answering: the matrix (`1XXit6DRczJwFBYpca2EUiECxcZlJdEFC`), the
offset memo (`1LCoHkiBp-5a1y24zeLYl-YMYaVS4KQUY`), `FBP Issues log.md` (`1tR8g7fMCp5TEpzKseU2kIp0-UHtag2p6`) and
`FBP Calculations.xlsx` (`1cIXfuKYYAhJ7ps5XzIhM-kYqlkmP1Kfn`) — the last two had been sitting unread in `Raw/`.

Then the step nobody had taken: **Fishbone Construction Ltd's own QuickBooks**, which is the company connected to
this desk. Balance sheets read at **29 Apr 2024, 29 Apr 2025 and 29 Apr 2026**. Read-only; nothing posted.

---

### The finding

Every figure in the exchange so far came from filed accounts or from *Properties'* QuickBooks. Construction's
ledger is the other half of the account.

| Source, at year end 2025 | Figure |
|---|---|
| Construction, filed accounts (Note 9) | £17,095 |
| Properties, filed accounts (Note 9) | £14,995 |
| **Construction, QuickBooks** | **£4,955.00** |
| Properties, QuickBooks FY25 | £4,055.00 |

**The two ledgers agree to £900. The two filed notes differ by £2,100 and sit £12,140 and £10,940 above their own
books.** So:

* **£900** — difference already present between the ledgers
* **£1,200** — difference created by the two year-end adjustments differing
* **= £2,100** in the filed accounts

The £2,100 is **not a transaction**. That is why the bank check found no £2,100 receipt: there was never a payment
to find. **The answer to "which is correct?" is neither** — both are adjusted figures.

### Four further findings

1. **£62,140 of difference between Construction's ledger and Construction's own filed note** — Properties
   £12,140, Waste **£30,000.49**, Commercial Property **£19,999.90**; Holdings and AMFA tie exactly. At 29 Apr
   2024 the same comparison is almost clean (Commercial Property out by £0.10), so the round components arose
   during FY2025. **Waste's £128,109 is the balance the matrix marks "confirmed both sides"** — the two *notes*
   agree; Construction's *books* are £30,000 away. Amending QuickBooks to the filed figures would post £62,140 of
   unexplained entries and destroy the only agreement in the exercise.
2. **Issue 1.07's stated cause is wrong.** Construction's ledger at 29 Apr 2026 shows **−£51,845** on Properties;
   Properties' shows **+£57,745**. Both ledgers flip, independently, £5,900 apart. It is a real movement, not a
   posting artefact caused by a wrong opening balance in Properties.
3. **The offset memo fails on FY2026 actuals.** Offset 2 assigns a Construction receivable from Properties that
   at the effective date **has reversed direction**. Offset 3's cash call rises from **£34,574 to £61,948.90** —
   79% higher than the figure Minda is asked to confirm Holdings holds.
4. **The memo and the matrix propose different restructures** — three offsets plus an optional fourth versus two;
   different end states for Commercial Properties and for Construction; cash moving in one and not the other.
   Both dated 19 September. `HL-0027` again.

Plus: **£200,570** of intercompany debt rests on one-sided disclosure, because Commercial Properties files no
related-party note at all — and Offset 1 assigns £103,251 of it. And four smaller matrix points (totals that
adopt one side's figure; a directors'-loan split dismissed as "a later year" that sums exactly to the year in
question; Dr/Cr labels inverted on the Holdings journal rows; a Holdings loan balance carrying no accrued
interest where roughly £11,954 a year should be).

**Stated limit.** The QuickBooks connection here returns account balances, not a general ledger, so this
establishes the size, direction and timing of every difference but **not what they consist of**. That is RMT's
adjustment schedule, and the reply asks for it.

---

### Outputs

* **`Sandbox 06`** — `Sandbox/2026-09-20_sandbox-06_construction-properties-reconciliation_AGGA.md`, id
  `1vYQCSun1n5xOh8W6dGcQmsu8DoDdAalh`, **14,751 bytes**. Structured (a)–(e) per §6 rule 3.
* **Gmail draft staged for Minda** — draft `r-312245900475669708`, message `1a0c0e4a893c090a`, thread
  `1a0be8cc17df9e19`, replying to `1a0c00a108842f8d`. Signed `Rachel — Financial Assistant, Fishbone Group`, no AI
  descriptor. **Not sent.** Recipients match that thread: Alexey only, no cc added, because Alexey did not cc
  anyone on it.

### Records updated

* **`current-state.md`** — archive-then-recreate twice this evening. Final: old id
  `1P-wjaIClJmtU8ujwVg2dIJjmLd1tNdf0` archived; new id `1ek4bHvfkEyv1QqpZGCWF58JvQ7ruwxkd`, **29,942 bytes**,
  byte-verified.
* **`current-state-history-2026-09.md`** — old id `1qH5fiGiVamcNCK2o8Sz8Zm-QNoydBrx-` archived; new id
  `1ZH5fiUiWLz5VLHo-aM-IurUNaVXjUB_f`, **23,329 bytes**, byte-verified. **The day's lessons row was dated out to
  it verbatim** under `RA-31`, because `current-state.md` had fallen to **58 bytes** of headroom — the row is
  finished narrative and every lesson in it lives on the group Help & Lessons desk, which Hub Rule B makes its
  single home. A compact pointer stays live. **Trimming was not used.**
* **A stale claim in `current-state.md` was corrected rather than left**: the Next action row still said the two
  adviser files in `Raw/` were unread. Both were read tonight and supplied Properties' half of the
  reconciliation.
* This change-log entry; git mirror `minda-ui/rachel`, branch `claude/hello-rachel-swj9oc`.

**Nothing was sent, nothing was posted to QuickBooks, no live financial record was changed.**

---

_Rachel, AI Finance Assistant — Fishbone Group._
