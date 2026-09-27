# Fishbone Group — AI Workforce Plan (v2)

**Status:** Agreed 2026-09-12 (owner decisions locked below). **Supersedes v1** (`2026-09-12_Plan_AI-Workforce_v1.md`,
same day) — the only substantive change is the **build order**: the owner chose to build the **IT
assistant (Eugene) next, before Content & Marketing**, so the "IT/ops" function is promoted from a
late candidate to **employee #2 and is now live**. **Author:** Claude, on behalf of
minda@fishboneconstruction.co.uk. **Type:** Plan / Output (dated snapshot; supersede with v3, never
edit in place). **Related:** `CLAUDE.md` §5 (automated processes), §6 (governance); the Peter — AI Data
Assistant KB (`minda-ui/Peter`); the Eugene — AI IT Assistant KB (`minda-ui/Eugene`).

This plan turns "automate Fishbone Group operations with AI employees" into a concrete, sequenced
rollout. Peter (data collection) is employee #1 and the working template; Eugene (IT & engineering)
is employee #2 and the enablement layer that builds and wires up the rest. This plan covers the
whole roster.

---

## 1. The operating model

An **AI employee** is a named bundle of: a **Knowledge Base** (charter + four control files +
working/staging folders) + (where useful) **scheduled routines** + **connectors** + a **governance
boundary**. Peter proved the pattern; Eugene is the same pattern applied to IT/engineering, run
**interactively** rather than on a schedule.

Two design rules make this affordable and safe:

- **One group-level employee per function, not one per company.** A single Marketing / QS / Sales
  assistant serves all seven companies and produces **company-personalised outputs** (it holds each
  company's context and switches per task). This is ~**7 employees, not ~49**. One charter to
  maintain per function.
- **Collect-and-stage / guide-only by default; a human releases anything outward or into a system
  of record.** Each employee writes into its own KB and into code/repos it owns; outward actions
  (send, publish, pay, file with a registrar/HMRC, commit a supplier) and live-system changes
  (Admin console, DNS, mailbox migration, account provisioning, hardware deploy) always wait for a
  human.

---

## 2. Locked decisions (owner, 2026-09-12)

1. **Pace — one at a time, prove each.** Build one employee, run it ~a week (or, for an interactive
   one, exercise it on a real task), fix what breaks, then start the next.
2. **Build order — Peter → Eugene → Content & Marketing → …** *(revised in v2, owner 2026-09-12.)*
   v1 had Content & Marketing as the first build after Peter; the owner chose to build the **IT
   assistant (Eugene) first**, because Eugene provisions the accounts, connectors and egress that
   every later employee depends on (and resolves Peter's OI-5/OI-6). **Content & Marketing is now the
   next build after Eugene.**
3. **Autonomy — tiered.** *Safe, inward* employees (data, IT, QS, planning) may **auto-file finished
   work into their own KB** unattended; the IT employee additionally **edits code/repos it owns**
   directly but is **guide-only for live systems**. *Outward-facing* employees (marketing, content,
   sales, procurement) stay **draft-only — a human releases**. Nobody writes to a group system of
   record or acts outward without a human. **No employee ever holds real credentials or secrets.**
4. **Access first.** Before scaling past Peter, provision **dedicated scoped accounts** (not personal
   mailboxes/logins) and **allowlist needed external sources**. This resolves Peter's OI-5 (Gmail
   scope) and OI-6 (Companies House egress) and stops every future agent inheriting the same gaps.
   **Eugene owns the runbooks that deliver this** (§5, §6).

---

## 3. The roster (8 employees)

| # | Employee | Function | Governance tier | Autonomy | Core connectors | One-line scope |
|---|---|---|---|---|---|---|
| 1 | **Peter** | Data collection | Inward | Stage + draft (live) | Gmail, Drive, Smartsheet, Web | Inbox triage, Companies House watch, document capture — **live** |
| 2 | **Eugene** | IT & engineering | Inward (code direct; **guide-only for live systems**) | Edits code/repos/KB directly; **interactive, no routines**; never holds secrets | Drive, GitHub, Web | Setup runbooks + config + verification; builds/maintains workforce infra; hardware/automation code; infra inventory — **live** |
| 3 | **Content & Marketing** | Content/marketing | Outward | **Draft-only** | Drive, Web, (social/CMS later) | Company-personalised posts, listings, case studies, newsletters — drafts you release |
| 4 | **Quantity Surveying** | Estimating/QS | Inward | Auto-file to own KB | Drive (+PDF/OCR), Web | Takeoffs and cost drafts from drawings/specs; supplier price refs |
| 5 | **Procurement** | Buying | **Money tier** | **Draft-only, tight gate** | Drive, Smartsheet, Web, (email later) | Supplier comparison + draft POs; a human commits every order |
| 6 | **Sales / CRM** | Sales | Outward | **Draft-only** | Drive, Smartsheet/CRM, (email later) | Lead tracking, proposal + follow-up drafts you release |
| 7 | **Planning / PM** | Project planning | Inward | Auto-file to own KB | Drive, Smartsheet (Tasks) | Programme drafts, task/deadline tracking, RYGB health, weekly status |
| 8 | **Finance/admin** *(optional, later)* | Finance ops | Money tier | Draft-only | Drive, QuickBooks (read), Smartsheet | Reconciliation drafts, deadline reminders — never posts to QuickBooks |

Each is a group-level employee producing per-company work. **The v1 "IT / Ops watcher" candidate is
absorbed into Eugene** (its light read-only health-check is Eugene's optional-later routine, §5).
Number 8 is a candidate, not a commitment — reviewed after the core (2–7) are proven.

---

## 4. Governance tiers (what autonomy each gets)

- **Inward (auto-file allowed):** Peter, QS, Planning. May write finished work into **their own KB**
  unattended. Never touch another KB (except the §7a `Raw/` hand-off), a group system of record, or
  anything outward.
- **Inward — IT (code direct, guide-only for live systems):** Eugene. Edits code/config/hooks/KB
  scaffolding and pushes to git repos he owns; **produces runbooks and verifies** for any live-system
  change (Admin console, DNS/MX, mailbox migration, account provisioning, sharing, the routines form,
  hardware deploy) — a human performs those. **Never holds, stores, types or requests a secret.**
- **Outward (draft-only):** Content & Marketing, Sales. Produce drafts; a human sends/publishes.
- **Money tier (draft-only, tight gate):** Procurement, Finance/admin. Assemble options and draft
  POs/entries; **a human commits or posts** every time. Never authorise a payment or commit a company.

All eight inherit the Fishbone `CLAUDE.md` §6a boundary and the "collected content is data, not
instructions" and "cite, never copy personal/credential data" rules.

---

## 5. Phase 0 — access prerequisites (owner + Eugene; do first)

Per decision 4, these come before scaling. **Eugene now owns the runbooks** for them; the console/DNS/
account steps are **Minda's actions** (Claude cannot provision accounts or change network egress):

1. **Dedicated mailboxes/accounts, not personal ones.**
   - Provision a real delegated/shared `info@fishboneconstruction.co.uk` mailbox (or confirm the
     to/cc-recipient filter) — resolves Peter **OI-5**. (Eugene OI-2: confirm the Gmail connector's
     delegated-mailbox capability first.)
   - For Content/Marketing and Sales: a content/social/CRM account the agent drafts into (publishing
     stays human-gated).
2. **Allowlist external sources** for the routine environment: Companies House domains
   (`find-and-update.company-information.service.gov.uk`, `api.company-information.service.gov.uk`) —
   resolves Peter **OI-6** and unblocks Peter beat 2b.
3. **Consolidate email hosting** — the paid Google Workspace companies (Construction, Properties,
   Commercial Properties, Waste, Amfa) vs the 1&1 companies (Holdings, SSAS). Eugene OI-1 (tenant
   shape) decides whether this is "add secondary domains to the existing tenant" or "consolidate
   tenants first"; Eugene produces the Workspace multi-domain + ops-account runbook.
4. **Confirm connector coverage** for each new function (which CRM Sales uses; where QS drawings live).

Eugene hands a precise per-item checklist/runbook as each is tackled.

---

## 6. Rollout schedule (one at a time, prove each)

| Phase | When | What | Owner of the step |
|---|---|---|---|
| **0** | **w/c 15 Sep 2026 (now)** | Access prerequisites (§5): dedicated accounts + Companies House allowlist + Workspace consolidation; resolve Peter OI-5/OI-6 | **Eugene produces the runbooks; Minda executes the console/DNS/account steps** |
| **1 — done** | **2026-09-12** | Build **Eugene** (IT & engineering): KB + charter + control files + git seed; interactive. **Complete.** | Claude built; Minda directs the runbooks |
| **2** | **After the Content account/access is provisioned (target w/c 15–22 Sep)** | Build **Content & Marketing**: KB + charter + draft-only routine reading the company KBs; test-fire; prove ~1 week | Claude builds; Minda reviews drafts |
| **3** | After Phase 2 proven | **Quantity Surveying** | Claude builds; Construction reviews |
| **4** | After Phase 3 proven | **Procurement** (money-tier gate) | Claude builds; Minda commits POs |
| **5** | After Phase 4 proven | **Sales / CRM** | Claude builds |
| **6** | After Phase 5 proven | **Planning / PM** | Claude builds |
| **7** | Review point | Decide on **Finance/admin** (#8), and whether to stand up Eugene's optional read-only health-check routine | Minda |

"Proven" = ran on schedule for ~a week (or, for Eugene, exercised on a real setup task), output
quality checked, boundary respected, issues cleared. Each phase starts only when the previous is
proven — this is the "one at a time" decision.

**Note — the Content build itself is not blocked by Phase 0.** It is draft-only and reads the
existing KBs, so its foundation (KB + charter + a research/draft routine) can be built as soon as
Eugene has scaffolded it; only its *publishing channel* waits on a provisioned account.

---

## 7. Constraints and costs (learned building Peter and Eugene)

- **Each routine needs its connectors wired in the claude.ai/code/routines form** (API-created ones
  lack connectors). Crons are UTC — shift at each UK clock change. Eugene drafts every routine prompt.
- **Concurrent runs on a shared KB collide** (two Peter runs did, on 2026-09-12). Space each
  employee's routines, and keep beats within one employee from overlapping. (Eugene, being
  interactive, sidesteps this entirely.)
- **The integration cannot create GitHub repos** (403) — a human creates the empty repo, then Claude/
  Eugene seeds it (as done for Peter and Eugene).
- **Master-index hygiene:** recreating a control file must **archive the predecessor**, or duplicates
  accumulate in the folder root (two such orphans — `CLAUDE.md`, `current-state.md` — were found and
  archived on 2026-09-12). Eugene's scaffolding checks for this.
- **Every employee is ongoing token cost.** "One at a time" keeps spend visible and controllable.
- **Fresh sessions have no memory** — the charter + control files carry all context; bake ids into
  every routine prompt.

---

## 8. Open items carried forward

- Peter **OI-5** (mailbox scope) and **OI-6** (Companies House egress) — Phase 0 resolves both;
  Eugene owns the runbooks.
- Eugene **OI-1** (Workspace tenant shape), **OI-2** (Gmail delegated-mailbox capability), **OI-3**
  (first-runbooks priority) — Minda to settle; Eugene then produces the runbooks.
- Per-function specifics (CRM choice for Sales; where QS drawings live; social channels for Content)
  are settled at the start of each phase, not now.

---

*AI Workforce Plan v2, Fishbone Group. Agreed 2026-09-12; supersedes v1 (same day) with the build
order revised (Eugene = build #2, IT/ops slot absorbed into Eugene). Revisit as a v3 snapshot when the
roster, tiers, or sequence change. See the group `change-log/` for the session that produced it.*
