# Process — Estate Authority Boundaries

- **Type:** Process
- **Status:** Active
- **Last reviewed:** 2026-09-23
- **Related:** every employee's own `CHARTER.md`/`CLAUDE.md`; `Process-Housekeeping-and-Session-Discipline.md` (Raw/-only channel, Hub Coordination Standard); `Process-Document-Numbering-and-Filing.md`; the **Authority Register** (Smartsheet, "Fishbone AI Workforce" workspace).

## Summary

This is the estate's law on **who may act where**. Minda: *"we start losing order... everyone can
do everything, and it's wrong. We need to work as a team, not as athletes on field and track."*

Before this, "who may do what" lived only as prose scattered across nine different charter files,
written at different times, never checked against each other. Two real incidents came from exactly
that: the 2026-09-20 rollout that used background agents to impersonate employees and write into
their own `CHARTER.md` files directly (stopped going forward by `HL-Helen-01`, not undone), and — in
the audit behind this document — a genuine gap with no owner at all (new-employee creation; see
Findings, ruled below).

This document states one rule and one shape. It replaces nothing already working — the Raw/-only
channel, the Hub Coordination Standard, the document-filing policy all stay exactly as they are —
it is the missing layer that ties them together and makes them checkable in one place.

## Key facts

### The rule: default-deny across domains

Every employee acts unattended **only inside their own domain** — their own KB, their own systems,
their own Hub rows. Anything outside that is **propose, never act** — the same discipline Alex's own
Rung ladder already enforces on Alex, generalised to everyone. A reach into someone else's domain
exists only if it is:

1. **explicit** — written down, not inferred from a job title or a neighbouring sentence;
2. **scoped** — states exactly what may be touched and how (add-only vs. full write, one page vs.
 a whole KB, one document type vs. everything);
3. **dated and sourced** — who authorised it, when, and the Hub task or charter clause it came from;
4. **logged in one place** — the **Authority Register** below, not left to live only in a paragraph
 of someone's `current-state.md`.

**One named exception exists estate-wide** (ruled 2026-09-23, see Finding 1 below): Eugene's write
into a brand-new employee's KB during approved scaffolding. It is the one case where the Raw/-only
channel can't apply yet — the KB doesn't exist to hold a Raw/ note — and it only fires after Minda's
approval in the 3-step sequence below, never unilaterally.

Nothing else here changes an existing rule: the Raw/-only cross-KB amendment channel (`HL-Helen-01`,
no exceptions beyond the one above, no agent impersonation), the Hub Coordination Standard
(Rules A–E), and the document filing policy (v1.4, §7a/§7b) all apply exactly as before. This
document is the index that ties them to a name and a domain.

### One domain, one owner

| Domain | Owner | Notes |
|---|---|---|
| Housekeeping, documentation, estate tidiness, Help & Lessons desk, group KB | **Alex** | Rung 0–2 ladder + §9a (existing model this document generalises) |
| Finance: bookkeeping, QuickBooks, banking, Financial Archive, Document Register administration | **Rachel** | Payments, VAT/CT600/HMRC filing, bank/lender correspondence always human |
| IT & Engineering: infra, tooling, hooks, hardware/automation code, runbooks | **Eugene** | Live-system execution (Admin console, DNS, migrations, hardware deploy) always human; plus the one named scaffolding exception above |
| Content & Marketing, all seven companies | **Helen** | Draft-only; nothing outward without a human; no cross-KB access |
| Workshop / Furniture Making operations | **Darius** | Read-only into AMFA/Construction KBs for the asset-ownership question only; his own "Document Register" sheet is being renamed (Finding 5) to end a naming collision with the shared one below |
| Construction technical advice | **Anna** | Adviser, not certifier; scoped add-only write into the Construction KB (§5a) |
| Data collection / inbox triage / Companies House research | **Peter** | Never sends, files, or writes to a system of record beyond the narrow §2c exception, which now carries a same-day Hub-task trail (Finding 2); sole owner of the `ops@` mailbox (Finding 4) |
| Properties operations (intake, document numbering, Tasks, Raw→Wiki) | **John** | Still attended (dry-run-then-tick); finance write stays Rachel's |
| AI Workforce coordination | **Victoria** | Propose/coordinate/append only; never edits another employee's own KB directly; proposes and briefs new employees (Finding 1), never builds |

Every grant that crosses one of these lines — an employee acting inside another's domain — is a row
in the **Authority Register**, not a sentence buried in a charter. The Register is the live source;
this table is the map.

### The Authority Register

A Smartsheet, "Fishbone AI Workforce" workspace, parallel to Tasks & Requests / Help & Lessons /
Roster. Columns: Domain/Grant, Owner, Grantee (if cross-domain), Exact scope, Granted by, Date
granted, Source, Status (Active / Needs Review / Revoked), Review note.

Seeded 2026-09-23 from a full audit of all nine charters (Explore agents read every current
`CHARTER.md`/`CLAUDE.md` verbatim — this was not written from memory). 18 rows: the 9 domains above,
plus every cross-domain grant currently in force. All 7 findings flagged `Needs Review` at seeding
have now been **ruled on by Minda** (see Findings below) — most rows are Active; two stay
`Needs Review` because the ruling is made but the execution step (outside Alex's own tool reach)
hasn't happened yet.

Going forward: any new cross-domain grant gets a Register row before (or the same session as) it
takes effect. The quarterly sweep checks the Register against what's actually true in each charter
and flags drift.

## Details — how a grant is made from here on

1. Minda decides the grant is needed (or an employee proposes one and Minda confirms).
2. It's added to the Authority Register — domain, owner, grantee, exact scope, source, date.
3. The receiving employee's own charter is updated to reference it, **by that employee, in their
 own session** — same Raw/-only rule as any other cross-KB amendment (a note in their `Raw/` plus a
 Hub task, never a direct edit by anyone else, never an agent impersonating them).
4. Nothing is "unattended" until both the Register row and the charter clause agree.

## Who keeps this working

- **Minda** rules on domain assignments and on any `Needs Review` row — this is substance, not
 mechanics, so it is proposed, never auto-resolved.
- **Alex** maintains this document and the Register (Rung 1, group KB), runs the quarterly sweep
 comparing Register to reality, and raises drift as a new `Needs Review` row rather than editing
 anyone's charter to match.
- **Every employee** keeps their own charter's reach statement in sync with what the Register says
 about them, in their own session.

## Findings — ruled 2026-09-23

All seven findings from the 2026-09-23 audit have been put to Minda one at a time and ruled on.
Proposal notes + Hub tasks have gone out to every employee whose own charter needs to reflect a
ruling, per the Raw/-only channel — nothing here was edited into anyone's KB directly by Alex.

1. **New-employee creation/scaffolding — now has a single owner.** Ruled: a 3-step sequence —
 Victoria proposes and briefs → Minda approves → Eugene builds. Register: Active. Charter
 proposals sent to Eugene (`AWT-0084`) and Victoria (`AWT-0085`).
2. **Peter's §2c filing judgment call** — ruled: keep the exception, but every time it fires, a
 same-day Hub Tasks & Requests row logs what was filed and why. Register: Active. Charter
 proposal sent to Peter (`AWT-0086`).
3. **Rachel's Microsoft 365 connector grant** (`RA-22`) — ruled: revoke the unused `Mail.Send`
 scope and narrow the mailbox grant to what's actually used. Register: Active, but flagged
 **not yet executed** — this is an M365 admin-console action outside any KB, needing Minda or
 Eugene (guide-only); no charter edit substitutes for it.
4. **Shared `ops@fishboneconstruction.co.uk` mailbox** — the audit found Peter and Victoria both
 writing to it, guarded only by prose. Minda's own correction went further: there was never
 meant to be sharing at all — Victoria's coordination routine was built against `ops@` by
 mistake and should be scoped to `minda@`. Ruled: `ops@` is Peter's alone; Victoria's routine
 needs to be stopped/reconfigured. Register: renamed "ops@ mailbox — sole ownership," held
 **Needs Review** — Alex has no tool to change a live claude.ai routine, so this is tracked as
 Hub task `AWT-0083`, assigned directly to Minda, as the execution step. Charter proposals sent
 to Peter (`AWT-0086`) and Victoria (`AWT-0085`, awareness only).
5. **Darius's Workshop "Document Register" sheet** vs. the shared group one — confirmed by
 checking all 8 sheets estate-wide named "Document Register": Darius's is the only genuine
 collision (a machinery/asset log, not a real register). Ruled: rename his sheet; add a charter
 line confirming no write access to the shared one. Register: held **Needs Review** — Alex has
 no tool to rename a Smartsheet's title (only columns/rows/content; an earlier assumption that
 this could be done mechanically was wrong and has been corrected), so the rename plus the
 charter line both went to Darius as one ask (`AWT-0087`).
6. **Anna's §4 lane-table wording** ("nothing barred") is broader than her actual bounded §5a
 grant — ruled cosmetic-only: tighten the wording, no change to actual permissions. Register:
 Active. Charter proposal sent to Anna (`AWT-0088`).
7. **Eugene's Drive write-into-the-new-KB during scaffolding** — folded into Finding 1: ruled as
 the one explicit, named exception to Raw/-only estate-wide, scoped to initial control-file
 writes during an approved (step-2-cleared) scaffolding only. Charter proposal sent to Eugene
 (`AWT-0084`), same task as Finding 1.

## Sources

- [S1] Owner instruction (Minda, 2026-09-23): "We start losing order... everyone can do everything,
 and it's wrong... create law across estate, which governs boundaries who can do that."
- [S2] The 2026-09-20 AWT-0040 propagation incident and its `HL-Helen-01` fix (Raw/-only channel,
 no agent impersonation) — the immediate precedent for why unscoped, ungoverned reach is dangerous,
 not just untidy.
- [S3] Full-estate governance audit, 2026-09-23 (Alex, via Explore subagents reading every current
 `CHARTER.md`/`CLAUDE.md` verbatim) — the source for the domain table and every Register row.
- [S4] Minda's rulings on all 7 findings, 2026-09-23 (one-by-one walkthrough, each proposed by
 Alex and ruled by Minda before the next).

## History

- 2026-09-23 (continued) — all 7 findings ruled by Minda in a one-by-one walkthrough. Findings
 section replaces the prior Open questions list. Authority Register updated live after each
 ruling; five Raw/ proposal notes + Hub tasks (`AWT-0084`–`0088`) sent to Eugene, Victoria, Peter,
 Darius and Anna; one Hub task (`AWT-0083`) raised directly to Minda for the one execution step
 outside Alex's own reach (stopping Victoria's mis-scoped routine). Alex (direct edit — this file
 lives in the group KB, Rung-1 authority).
- 2026-09-23 — created. Domain table and Authority Register seeded from a full nine-employee audit;
 7 findings flagged `Needs Review` for Minda's ruling rather than resolved unilaterally. Alex
 (direct edit — this file lives in the group KB, Rung-1 authority). Owner-directed (Minda): "let's
 go" on the plan, domain assignments and flagged items pending her sign-off before any employee's
 own charter is asked to change.
