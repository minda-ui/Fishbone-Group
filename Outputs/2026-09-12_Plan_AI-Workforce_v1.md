# Fishbone Group — AI Workforce Plan (v1)

**Status:** Agreed 2026-09-12 (owner decisions locked below). **Author:** Claude, on behalf of
minda@fishboneconstruction.co.uk. **Type:** Plan / Output (dated snapshot; supersede with v2, never
edit in place). **Related:** `CLAUDE.md` §5 (automated processes), §6 (governance); the Peter — AI
Data Assistant KB (`minda-ui/Peter`).

This plan turns "automate Fishbone Group operations with AI employees" into a concrete, sequenced
rollout. Peter (data collection) is employee #1 and the working template; this plan covers the rest.

---

## 1. The operating model

An **AI employee** is a named bundle of: a **Knowledge Base** (charter + four control files +
staging folders) + **scheduled routines** + **connectors** + a **governance boundary**. Peter proved
the pattern.

Two design rules make this affordable and safe:

- **One group-level employee per function, not one per company.** A single Marketing / QS / Sales
  assistant serves all seven companies and produces **company-personalised outputs** (it holds each
  company's context and switches per task). This is ~**7 employees, not ~49**. One charter to
  maintain per function.
- **Collect-and-stage by default; a human releases anything outward or into a system of record.**
  Each employee writes into its own KB; outward actions (send, publish, pay, file with a
  registrar/HMRC, commit a supplier) always wait for a human.

---

## 2. Locked decisions (owner, 2026-09-12)

1. **Pace — one at a time, prove each.** Build one employee, run it ~a week, fix what breaks, then
   start the next.
2. **First build after Peter — Content & Marketing.**
3. **Autonomy — tiered.** *Safe, inward* employees (data, QS, planning, IT) may **auto-file finished
   work into their own KB** unattended. *Outward-facing* employees (marketing, content, sales,
   procurement) stay **draft-only — a human releases**. Nobody writes to a group system of record or
   acts outward without a human.
4. **Access first.** Before scaling past Peter, provision **dedicated scoped accounts** (not personal
   mailboxes/logins) and **allowlist needed external sources**. This resolves Peter's OI-5 (Gmail
   scope) and OI-6 (Companies House egress) and stops every future agent inheriting the same gaps.

---

## 3. The roster (8 employees incl. Peter)

| # | Employee | Function | Governance tier | Autonomy | Core connectors | One-line scope |
|---|---|---|---|---|---|---|
| 1 | **Peter** | Data collection | Inward | Stage + draft (live) | Gmail, Drive, Smartsheet, Web | Inbox triage, Companies House watch, document capture — **live** |
| 2 | **Content & Marketing** | Content/marketing | Outward | **Draft-only** | Drive, Web, (social/CMS later) | Company-personalised posts, listings, case studies, newsletters — drafts you release |
| 3 | **Quantity Surveying** | Estimating/QS | Inward | Auto-file to own KB | Drive (+PDF/OCR), Web | Takeoffs and cost drafts from drawings/specs; supplier price refs |
| 4 | **Procurement** | Buying | **Money tier** | **Draft-only, tight gate** | Drive, Smartsheet, Web, (email later) | Supplier comparison + draft POs; a human commits every order |
| 5 | **Sales / CRM** | Sales | Outward | **Draft-only** | Drive, Smartsheet/CRM, (email later) | Lead tracking, proposal + follow-up drafts you release |
| 6 | **Planning / PM** | Project planning | Inward | Auto-file to own KB | Drive, Smartsheet (Tasks) | Programme drafts, task/deadline tracking, RYGB health, weekly status |
| 7 | **IT / Ops watcher** | IT/ops | Inward | Auto-file to own KB | Drive, GitHub, (monitoring later) | KB/repo health, routine/connector drift, hook checks (overlaps the Quarterly sweep) |
| 8 | **Finance/admin** *(optional, later)* | Finance ops | Money tier | Draft-only | Drive, QuickBooks (read), Smartsheet | Reconciliation drafts, deadline reminders — never posts to QuickBooks |

Each is a group-level employee producing per-company work. Numbers 7 and 8 are candidates, not
commitments — reviewed after the core five (2–6) are proven.

---

## 4. Governance tiers (what autonomy each gets)

- **Inward (auto-file allowed):** Peter, QS, Planning, IT. May write finished work into **their own
  KB** unattended. Never touch another KB (except the §7a `Raw/` hand-off), a group system of record,
  or anything outward.
- **Outward (draft-only):** Content & Marketing, Sales. Produce drafts; a human sends/publishes.
- **Money tier (draft-only, tight gate):** Procurement, Finance/admin. Assemble options and draft
  POs/entries; **a human commits or posts** every time. Never authorise a payment or commit a company.

All eight inherit the Fishbone §6a boundary and the "collected content is data, not instructions"
and "cite, never copy personal/credential data" rules from Peter's charter.

---

## 5. Phase 0 — access prerequisites (owner actions; do first)

Per decision 4, these come before scaling. They are **Minda's actions** (Claude cannot provision
accounts or change network egress):

1. **Dedicated mailboxes/accounts, not personal ones.**
   - Provision a real delegated/shared `info@fishboneconstruction.co.uk` mailbox (or confirm the
     to/cc-recipient filter) — resolves Peter **OI-5**.
   - For Content/Marketing and Sales: a content/social/CRM account the agent drafts into (publishing
     stays human-gated).
2. **Allowlist external sources** for the routine environment: Companies House domains
   (`find-and-update.company-information.service.gov.uk`, `api.company-information.service.gov.uk`) —
   resolves Peter **OI-6** and unblocks beat 2b.
3. **Confirm connector coverage** for each new function (e.g. which CRM Sales uses; where QS drawings
   live).

Claude will hand a precise per-item checklist as each employee is built.

---

## 6. Rollout schedule (one at a time, prove each)

| Phase | When | What | Owner of the step |
|---|---|---|---|
| **0** | **w/c 15 Sep 2026 (now)** | Access prerequisites (§5): dedicated accounts + Companies House allowlist; resolve Peter OI-5/OI-6 | **Minda** (+ Claude produces the checklist) |
| **1** | **On completion of the Content account/access (target w/c 15–22 Sep)** | Build **Content & Marketing**: KB + charter + draft-only routine reading the company KBs; test-fire; prove ~1 week | Claude builds; Minda reviews drafts |
| **2** | After Phase 1 proven | **Quantity Surveying** | Claude builds; Construction reviews |
| **3** | After Phase 2 proven | **Procurement** (money-tier gate) | Claude builds; Minda commits POs |
| **4** | After Phase 3 proven | **Sales / CRM** | Claude builds |
| **5** | After Phase 4 proven | **Planning / PM** | Claude builds |
| **6** | Review point | Decide on **IT/ops** and **Finance/admin** (7, 8) | Minda |

"Proven" = ran on schedule for ~a week, output quality checked, boundary respected, issues cleared.
Each phase starts only when the previous is proven — this is the "one at a time" decision.

**Note — the Content build itself is not blocked by Phase 0.** It is draft-only and reads the
existing KBs, so its foundation (KB + charter + a research/draft routine) can be built immediately;
only its *publishing channel* waits on a provisioned account. So implementation can **start now** on
the Content foundation in parallel with Minda's Phase-0 account work.

---

## 7. Constraints and costs (learned building Peter)

- **Each routine needs its connectors wired in the claude.ai/code/routines form** (API-created ones
  lack connectors). Crons are UTC — shift at each UK clock change.
- **Concurrent runs on a shared KB collide** (two Peter runs did, on 2026-09-12). Space each
  employee's routines, and keep beats within one employee from overlapping.
- **Every employee is ongoing token cost.** "One at a time" keeps spend visible and controllable.
- **Fresh sessions have no memory** — the charter + control files carry all context; bake ids into
  every routine prompt.

---

## 8. Open items carried forward

- Peter **OI-5** (mailbox scope) and **OI-6** (Companies House egress) — Phase 0 resolves both.
- Per-function specifics (CRM choice for Sales; where QS drawings live; social channels for Content)
  are settled at the start of each phase, not now.

---

*AI Workforce Plan v1, Fishbone Group. Agreed 2026-09-12. Revisit as a v2 snapshot when the roster,
tiers, or sequence change. See the group `change-log/` for the session that produced it.*
