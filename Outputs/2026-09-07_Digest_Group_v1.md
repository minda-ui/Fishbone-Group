# Weekly Master-Index Digest — Fishbone Group

**Run:** 2026-09-07 (first live run of the proposed "Group weekly digest" routine, CLAUDE.md §5)
**Scope:** read-only survey of the six sister systems named in the routine's brief, covering
the ~7 days to 2026-09-07. **No sister system, live system, Companies House or HMRC record was
written to.** Findings are reported here for a human to action; no Wiki article or `Org-*.md`
file was edited by this run.

---

## 1. Fishbone Properties Ltd – Knowledge Base

**Changed — heavily.** This KB is the most active system in the group this week and now runs
its **own** weekly digest (`fishbone-weekly-digest` task, ran 2026-09-07 08:30, output
`Outputs/weekly-digest-2026-09-07.md`, sources: 47 dated change-log entries 09-01 to 09-07).
Highlights visible from this week's change-log entries and Tasks sheet (Smartsheet "1. General",
`1343219457722244`):

- **Intercompany interest waiver (Holdings → Properties) fully executed this week.** Properties'
  own board minute and members' resolution (FP0000020) signed 2026-09-07; Holdings' letter of
  variation countersigned and returned. Task **T00018** ("sign board minute FP0000020…") is
  **In Progress** — remaining sub-steps per Properties' own tracking: confirm the signed copy
  reached Holdings, confirm Mindaugas's countersignature on Holdings' letter FH0000012, cancel
  the two standing orders (£897.00 / £100.00 per month) after the 30/09/2026 payment, and inform
  the accountants. (See §6 below — the Holdings KB shows this further advanced than Properties'
  own task row reflects; the two sister systems are momentarily out of step with each other.)
- 14 new Document Register numbers (FP0000004–FP0000017) and 14 new Tasks rows (T00004–T00017)
  opened this week; most now **Done**. Open/In-progress items with a live deadline: **T00010**
  (pay BTJ £495 broker fee, FP 2101 Kensington remortgage, due 2026-09-09), **T00013** (LendInvest
  60006183 extension — signatures done, 1% amendment fee ~£945 still to pay, planned 2026-09-10),
  **T00014** (Landbay/FP 2401 remortgage — signed originals posted 2026-09-07, receipt by the
  solicitor and the OC80 completion blocker still unconfirmed), **T00015** (Octopus Energy meter
  readings, FP 2101 tenancy swap), **T00016** (3 The Byeways / FP 1901 — Kent Reliance reverted to
  variable rate; needs a stay-or-remortgage decision).
- Financial-snapshot and risk-register both current per the digest (financial snapshot last run
  2026-09-01, no fresher reconciliation this week — next scheduled 2026-10-01).

## 2. Fishbone Commercial Properties Ltd – Knowledge Base

**Changed — structurally, not just content.** This KB **no longer uses a root `CHANGELOG.md`**
(the routine brief's assumption is stale): the change-log model moved to dated
`Outputs/change-log-YYYY-MM-DD-*.md` files on 2026-09-05, matching the Properties Ltd and group
model. `CLAUDE.md` was last replaced 2026-09-07 17:07 (32 KB). Since the group's last read
(2026-09-03/05):

- The Smartsheet **Document Register** (`1744084861585284`) went live 2026-09-05, seeded
  `FCP0000001`–`FCP0000005`; on 2026-09-07 the owner decided a narrow **append exception**
  (automation may append a row on an explicit per-document instruction, never edit/delete/restatus)
  — otherwise the register and the property register stay fully read-only for automation, same as
  the group's own rule.
- QuickBooks remains confirmed **not usable** for this company (the Intuit connector still points
  at Fishbone Properties Ltd).
- Company snapshot (§7) is still dated "as of 2026-09-03" inside that KB and lists the £213,226
  "other creditors" as an open question — the **group's own** `Org-Fishbone-Commercial-Properties-Ltd.md`
  already carries the resolved breakdown (owes Construction £97k, Properties £103k), so the group
  index is ahead of the sister KB here, not behind it. No action needed on the group side.

## 3. Fishbone SSAS – Knowledge Base

**Changed — very actively, all today.** Newest entries (`change-log-2026-09-07-land-registry-and-scheme-valuation.md`,
`-loan-pack-filed.md`, `-loan-agreement-filed.md`, `-outstanding-items-pass.md`) show:

- The three HM Land Registry documents for title **TY59507** were filed and read in full: the
  29/04/2025 charge is confirmed dated/entered, with a restriction on further disposals and a
  clause that the chargees are "under an obligation to make further advances" — not previously
  identified from the mortgage deed summary, and **not yet reconciled** against the loan agreement
  (which shows only a single drawdown). Raised as a new open question inside the SSAS KB itself.
- The administrator's 5 April 2025 scheme valuation, portfolio valuation and statement of account
  were filed. These **verify** the scheme's HMRC 50%-of-fund test for the £41,500 Commercial
  Properties loanback at **49.58%** (net assets £83,701.24), tightening the estimate the group's
  OI-6 currently cites informally, and confirm the loanback shows at nil at valuation date pending
  the 29/04/2025 drawdown.
- None of this changes the group's headline figures (the loanback balance, the three-layer debt
  split in `open-issues.md` OI-6, or OI-7's Ferndale title conclusion) — it is corroborating detail
  the group's `Org-Fishbone-SSAS.md` could cite if a session wants to sharpen it, but nothing here
  contradicts what the master index already records.

## 4. Fishbone Construction Ltd – Knowledge Base

**Changed — the KB's maturity, not just its content.** The master index (`CLAUDE.md` §1, and
`external-source-register.md` SRC-08) still describes this KB as **"Skeleton… five procedure docs
only."** That is now out of date: as of this week the KB has a live `CLAUDE.md` (v3, 2026-09-05),
a populated `Wiki/`, dated `Outputs/change-log-*.md` entries (newest 2026-09-06: "info-workspace-setup",
"inbox-housekeeping-review"), and — per the owner's 2026-09-06 instruction — a **daily email-intake
automation** (info@fishboneconstruction.co.uk inbox, 07:00 local, "first unattended run not yet
verified"). This is a maturity-level change the master index should record (see §6).

Separately, a **Fishbone Construction Ltd QuickBooks connection** is now in active use (see §5
below, via the Loans Wiki's reconciliation work) — the group's own open question ("which companies'
QuickBooks files the Intuit connector reaches") can be partly answered: Construction, not only
Properties, is reachable.

## 5. Loans Wiki

**Changed, and one finding needs a human's eyes.** The newest entry, "Change Log — 2026-09-07
21-12" (created during this very session's read), records that Minda asked for a second model to
be built and tested against a document, *"FBC_DMD_Loan_Dividend_Transaction_3.docx"*, describing a
31/05/2025 transaction: a £500,000 interim dividend from Fishbone Construction to Fishbone Holdings
and an assignment of a £685,000 "D Macdonald" loan to Holdings at par, with a recommendation to
revise the **filed** FY2024/25 accounts to add a post-balance-sheet-event note.

**The reconciliation found the ledger does not support the document**: the D Macdonald loan stayed
in Construction's own books throughout (£682,650 → £647,419 today), no dividend was booked, and
Construction had only £1,213 of cash on the stated transaction date. The entry's own conclusion:
*"the transaction cannot be treated as a 31/05/2025 event, disclosed as a post balance sheet event,
or used to revise the filed accounts… Documents dated 31/05/2025 created now would be false
records."* It also flags an unexplained ~£129,308 fall in Construction's retained earnings between
30/04/2026 and 07/09/2026 that RMT needs to reconcile.

This is flagged here, not acted on: it is exactly the kind of "material conflict between sources"
`open-issues.md` exists for, and it touches the group's own OI-6 debt figures for Construction
(£532,829 as at 21/08/2026, from the authoritative repayment-plan workbook — unchanged since
2026-09-04, so not itself affected yet, but the D Macdonald loan's £647,419 balance today is not
obviously the same thing and the relationship between the two figures is not established).

The authoritative workbook this database relies on, `Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx`,
has **not changed** since 2026-09-04, so `open-issues.md` OI-6's three-layer figures are still the
current read of it.

## 6. Fishbone Holdings Ltd — an undocumented new sister system

**Not on the checklist, but the single largest piece of drift found this run.** A full
**Fishbone Holdings Ltd – Knowledge Base** (Drive root `1sZJ4frIcVqsgON4eewAqmdKq5YEXInvu`, git
mirror `minda-ui/Fishbone-Holdings-Ltd`) was created **2026-09-05** and has since processed
fourteen items (`FH0000001`–`FH0000014`), built out 13+ Wiki articles and an Investment Register,
and — as of today — fully executed the interest-waiver on the Holdings→Properties loans (both
boards' minutes signed, the letter of variation countersigned, Annex A confirmed by the owner, and
the two standing orders cancelled). This company-level KB does not appear anywhere in this group
database: `CLAUDE.md` §1 still states *"Fishbone Holdings Ltd | No sister system"*, it is absent
from `Wiki/00_INDEX.md`'s master-index map, and neither `Org-Fishbone-Holdings-Ltd.md` nor
`Org-Fishbone-Properties-Ltd.md` (last touched 2026-09-06/07, before today's Holdings-side
paperwork completed) reflects the waiver.

This directly closes part of `CLAUDE.md` §7's open question 2 ("the outcome of the Holdings
interest-waiver request of 31/08/2026") — the answer is: **agreed**, effective 1 October 2026 to
30 September 2028, all conditions met 2026-09-07 — but the master index does not yet say so.

## 7. Smartsheet — workspace "1. General", Tasks sheet (`1343219457722244`)

18 rows, all dated 2026-08-31 to 2026-09-07. 14 Done, 1 In Progress-and-effectively-superseded
(T00018, see §1 and §6 — the Holdings KB shows the process further along than this row does),
3 open items requiring a human decision this week: **T00010** (BTJ broker fee, due 2026-09-09),
**T00016** (3 The Byeways rate decision, due 2026-09-12), **T00015** (Octopus meter readings, due
2026-09-11). None of these are new to the group picture beyond what §1 already covers; they are
Properties Ltd operational items, not group-level facts.

---

## Master-index drift

Everything below is a finding for a human to action in a reviewed session — **no Wiki article,
`Org-*.md` file, `00_INDEX.md` or `CLAUDE.md` was edited by this run.**

1. **New sister system not indexed (largest item).** Add the Fishbone Holdings Ltd – Knowledge Base
   to `CLAUDE.md` §1's sister-systems table and to `Wiki/00_INDEX.md`'s master-index map; it has
   its own CLAUDE.md, Raw/Wiki/Outputs/Archive, and a git mirror, and is already the most complete
   record of the Holdings↔Properties loan relationship. See the new Open Issue raised below.
2. **Interest waiver on the Holdings→Properties loans is resolved**, not open. `CLAUDE.md` §7
   open question 2 should be updated (or closed) and `Org-Fishbone-Holdings-Ltd.md` /
   `Org-Fishbone-Properties-Ltd.md` refreshed with: waiver effective 1 Oct 2026–30 Sep 2028;
   contractual rates (3.8%/6%) resume 1 Oct 2028; both companies' board papers signed 2026-09-07;
   standing orders (£897/£100 per month) cancelled the same day per the Holdings KB.
3. **Fishbone Construction Ltd – Knowledge Base has outgrown "Skeleton."** `CLAUDE.md` §1 and
   `external-source-register.md` SRC-08 should be revised: it now has an active Wiki, dated
   change-log entries, and a daily email-intake automation (unverified first unattended run).
4. **Fishbone Commercial Properties Ltd's change-log model changed** (root `CHANGELOG.md` retired
   2026-09-05 in favour of dated `Outputs/` files); `CLAUDE.md` §1 and SRC-10's description should
   be updated so a future session's "read first" pointer is accurate.
5. **Compliance-sensitive finding needing a human decision, not an index edit.** The Loans Wiki's
   Macdonald loan/dividend reconciliation (§5 above) concludes a proposed accounting treatment is
   not supported by the ledger and warns against creating backdated documents. This is not itself
   master-index drift, but it is material enough to raise as an Open Issue so it is not lost.
6. **No drift found** in: the SSAS loanback balance, the three-layer debt figures (OI-6), the
   Ferndale title conclusion (OI-7), or the FY2025-filed status (§6b) — all corroborated, not
   contradicted, by this week's sister-system activity.

---

*Read-only run. Sources: `Fishbone Properties Ltd - Knowledge Base` Outputs/ (change-log entries
and `weekly-digest-2026-09-07.md`); `Fishbone Commercial Properties Ltd - Knowledge Base` CLAUDE.md
and Outputs/; `Fishbone SSAS - Knowledge Base` Outputs/; `Fishbone Construction Ltd - Knowledge Base`
CLAUDE.md, README.md and Outputs/; `Loans/` root (Change Log — 2026-09-07 21-12) and
`Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx` metadata; `Fishbone Holdings Ltd - Knowledge Base`
CLAUDE.md and Archive/; Smartsheet workspace "1. General", Tasks sheet `1343219457722244`.*
