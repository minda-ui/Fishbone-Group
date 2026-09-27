# Change log — 2026-09-21 — Rachel

## The rest of the FBP issues log, answered from our own documents — and two corrections

**Instruction:** Minda — *"let's do the rest of the issues log"*.
**Authority:** `CHARTER.md` §6 (Sandbox Mode). QuickBooks read-only. Nothing sent by Rachel.

---

### First, the state of the three earlier replies

**All three were sent by Minda**, confirmed from the **threads** rather than the drafts list (`HL-0028`):

| Reply | Sent |
|---|---|
| Year end (`Sandbox 05`) | `1a0c0e0901f00312`, 20/09 22:12 |
| Reconciliation (`Sandbox 06`) | `1a0c28875873777a`, 21/09 05:55 |
| Issues log 1.02/1.10/1.11 (`Sandbox 07`) | `1a0c288e954cb572`, 21/09 05:55 |

An `update_draft` call returned *"Message not a draft"*, and the drafts list showed them gone. **That was not treated
as a tool fault** — `HL-0024` was raised on exactly that misreading. The threads were checked, and they show the
messages sent.

### The work

`Sandbox 08` — `Sandbox/2026-09-21_sandbox-08_FBP-issues-log-remainder_AGGA.md`, id
`1R63uqdifS0zCbqnu1cqcdEZDvqgMiPnE`, 17,060 bytes — covers the **thirteen remaining points** (1.03–1.09, 1.12–1.17,
including **1.08**, which had been missed off the earlier list). Method: read the **Document Register** in full
(143 FP rows, `isSampled: false`, per `RA-15`), then **open the primary documents** rather than judge them by title
(`HL-0026`).

### Three findings that answer AGGA rather than just respond

**1.10 — the £11,964 is twelve standing orders.** Board minute `FP0000021` names both loans: **£283,000 at 3.80%
under an agreement of 1 May 2019, paid monthly by standing order of £897**, and **£20,000 at 6.00% under an
agreement of 15 October 2021, standing order £100**. £997 a month, £11,964 a year — the minute uses the figure
itself. So it is fixed cash, identical every year **by construction**, which is why it matched FY2025. It also
resolves the £10: £283,000 at 3.80% accrues £10,754.00 while £897 × 12 pays £10,764.00, because £896.1667 was
rounded up. The live question is **accrual against cash**.

**And an interest waiver nobody had told the accountants about.** The same minute accepts a waiver from Holdings:
effective **1 October 2026**, running to **30 September 2028**, no interest accruing or payable, both standing
orders cancelled, principal **£303,000 intact**, interest resuming 1 October 2028. **FY2026 is unaffected**;
**FY2027 falls to £4,985**. The board expressly resolved that the accountants be informed and raised its own
concern about the tax treatment of a waiver between companies under common control. **A condition falls due on
1 October 2026** — the countersigned letter, the minuted acceptance and a members' written resolution must be in
place or the waiver period starts late. Nine days out.

**1.04 — the reclass is disproved by our own records.** AGGA proposed treating the £2,720 at 131 Goathland as a
miscoded tenant deposit. The **master TDS export** (`FP0000114`), covering every deposit Fishbone Properties has
protected, open or closed, shows **131 Goathland nowhere in it**, **no deposit of £2,720 for any property** (range
£675–£1,250), and a **first tenancy dated 20 August 2026** — FY2027. So there was no tenancy in FY2025 for a
deposit to belong to. **This reaches beyond 1.04:** issue 1.14 claims the reclass explains investment property down
to £0.20. If the reclass goes, that explanation goes.

**1.03 — we hold the document and the costs are not nil.** `FP0000062` is the Blacks Direct sale bill **and**
completion statement for 51 Wheatfield Grove, 15 April 2026 — the three documents AGGA listed as outstanding, in
one. Sale £225,000.00 less Fleet Mortgages redemption £145,216.36, estate agent £2,100.00 and legal £1,472.40, net
proceeds **£76,211.24**. So costs of disposal are **£3,572.40**: the gain becomes **£40,427.60** not £44,000, and
the adjusted FY2026 loss **£(20,408.40)** not £(16,836).

The remaining nine items are answered as **held / not held** with document numbers — including that **no CT61
document exists anywhere on the register** (1.12), so the quarterly returns are unconfirmed rather than done.

### Two corrections

**1. Mine, on something already sent.** The sent `Sandbox 07` reply inferred that because the FY2026 balance sits
£16,347 below the combined tranches, *"the tranches themselves began to be repaid"*. `FP0000021` records the
principal of £303,000 as **remaining outstanding** four months after the year end. The observation was sound; the
inference was not necessary and is contradicted — the `HL-0024` pattern in miniature. The likelier reading, offered
as a candidate and not asserted, is that the **standing orders have been posted against the loan account rather
than to interest expense**, which would understate both the charge and the creditor. **The correction leads the
follow-up**, draft `r-488497889384249662`, message `1a0c291373359884`, replying on the same thread.

**2. `Sandbox 08` §(f).** It recommended replacing a staged draft that had in fact already been sent. Superseded.

**Both are recorded in an addendum** — `Sandbox/2026-09-21_sandbox-07-08_ADDENDUM_corrections-after-send.md`, id
`1OyR2IoRwxtmXuvtAp69VGrDR9oKcU0tN` — **beside the originals, not over them**, because `Sandbox 07` was the basis
for an email that has gone and the record of what was believed at that moment has to survive.

### Also today

* **`HL-0031`** raised on the group Help & Lessons desk (row `3679271011354500`, discussion `6724110705624964`),
  on Minda's instruction, about Rachel's own error: **never compose into a Drive write**. High-water checked at the
  moment of assignment — 30 of 30 rows, `isSampled: false` — and two rows had landed overnight (`HL-0029` Peter,
  `HL-0030` Darius), so a number carried over from last night would have collided.
* **Two register hygiene points flagged, not corrected:** `FP0000021`'s own text is internally numbered
  **FP0000020** and refers to the waiver request as FP0000001 where the register has FP0000002 — the document's
  internal numbering runs one behind throughout. Not Rachel's to edit. `FP0000004`'s filename mismatch was already
  on the record.
* **A coincidence recorded and ruled out:** the estate agent fee on the Wheatfield Grove sale is **£2,100.00**, the
  same figure as the disputed intercompany difference. Different dates, different counterparties, unrelated. Noted
  so it is not later mistaken for a lead (`RA-27` in spirit).

### Records

* `current-state.md` — updated; **666 bytes of headroom left**, so the next session needs a date-out under `RA-31`.
* `Sandbox 08`, the addendum, this entry; git mirror `minda-ui/rachel`.

**Nothing was sent by Rachel, nothing posted to QuickBooks, no live financial record changed.**

---

_Rachel, AI Finance Assistant — Fishbone Group._
