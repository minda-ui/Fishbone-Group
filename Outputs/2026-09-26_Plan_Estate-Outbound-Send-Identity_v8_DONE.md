# Plan — Estate Outbound Send-Identity (CLOSED 2026-09-26)

- **Type:** Plan — fully closed. Design resolved, every decision ruled, execution confirmed complete by Eugene.
- **Status:** **DONE.** Hub `AWT-0105` moved to Done, 2026-09-26.
- **Started:** 2026-09-26, descoped from `2026-09-26_Plan_Estate-Mail-Triage-Pipeline_v2.md` (archived); through `v1`→`v7` (archived) as scope narrowed, Eugene's findings landed, and `OI-11` was ruled
- **Related:** `Process-Estate-Authority-Boundaries.md` (one-domain-one-owner); the Authority Register; `AX-15`/`AWT-0101` (Fishbone Properties Ltd's separate account/login — the precedent this plan avoided repeating)

## Final outcome — 2026-09-26

Minda's original idea (routine reports fan into a group staging folder, classified and dispatched by an Index step) turned out, once narrowed with her through conversation, to be purely about **outbound send identity**, not inbound triage — Peter's `ops@fishboneconstruction.co.uk` triage was never touched. The resolved shape: each company that needs its own identity gets a real domain mailbox, sent from manually by its owner; **no Claude/Alex connector or drafting role at all** (Alex sends no mail today regardless). Scope narrowed from an initial six companies down to two needing new provisioning (FC, FA), with FM resolved separately.

**All three companies now confirmed live, per Eugene's final report on `AWT-0105`:**

| Company | Mailbox | Status |
|---|---|---|
| **FC** — Fishbone Construction Ltd | `info@fishboneconstruction.co.uk` | Already live. |
| **FA** — Amfa Furniture Ltd | `enquiries@amfa.uk` | Now created and live; copies forward to `ops@fishboneconstruction.co.uk`, matching Nadia's existing intake design (Peter triages the `ops@` copy, routes Amfa enquiries into Nadia's `Raw/`, per Hub `AWT-0095`) — checked against Nadia's own `external-source-register.md` (`NASRC-6`/`7`) before treating this as resolved, confirming it isn't a cross-company leak into Peter's Construction-scoped inbox. |
| **FM** — Fishbone Commercial Properties Ltd | `commercial@fishboneproperties.co.uk` | Accepted as-is per Minda's `OI-11` ruling — shared Properties-domain mailbox, distinct Commercial Properties signature (Eugene's runbook covers this). |

Fishbone Holdings Ltd and Fishbone Waste Ltd continue on the shared `ops@fishboneconstruction.co.uk` address (Minda's business call, no standalone identity needed). Fishbone SSAS has no domain and was never in scope. Fishbone Properties Ltd itself was excluded throughout — already has its own separate account.

## Two items remain, but are out of this plan's scope

Tracked separately as **Nadia's own `NA-3`**, not part of `AWT-0105`:
1. Outbound DKIM/SPF/DMARC authentication for Amfa's mailbox (`Runbook-Amfa-Email-DKIM-SPF-DMARC.md`).
2. Nadia's own Gmail connector provisioning.

Neither blocks this plan's closure — both are Amfa/Nadia's own follow-up, entirely separate from the outbound-identity question this plan was raised to answer.

## What was never touched

- Peter's `ops@` inbound triage — untouched throughout.
- Who sends from which mailbox — follows the existing Authority Register one-domain-one-owner table, unchanged.
- No Authority Register or Charter change was needed — no connector was ever shared with Alex here.
- No Alex build of any kind — no folder, sheet, or process document beyond this plan file and the one Hub row.

## History

- 2026-09-26 — plan drafted as a broad "estate mail-triage pipeline" idea, co-designed in conversation.
- 2026-09-26 — descoped to outbound-only once Minda clarified inbound triage (Peter's `ops@`) stays untouched.
- 2026-09-26 — resolved: each company gets its own domain mailbox, sent from manually by its owner; Alex has no connector or drafting role. Hub task `AWT-0105` raised to Eugene.
- 2026-09-26 — corrected: Fishbone SSAS removed (no domain). Five companies.
- 2026-09-26 — corrected again: Fishbone Holdings Ltd and Fishbone Waste Ltd removed (Minda's business call). Three companies: FC, FA, FM.
- 2026-09-26 — corrected a third time: Fishbone Commercial Properties Ltd (FM) moved off the new-provisioning list — already on the Fishbone Properties domain. Two companies: FC, FA.
- 2026-09-26 — Eugene's actual investigation folded in: FC already done, FA needs a small confirm-or-create step, FM raised as his own `OI-11`. `AWT-0105` status: In Progress.
- 2026-09-26 — `OI-11` ruled by Minda: FM stays on the shared Properties domain; a distinct Commercial Properties signature gets created instead of a new domain. Relayed to Eugene on the Hub row.
- 2026-09-26 — **Eugene confirmed FA's mailbox live and cross-checked against Nadia's own intake design. All three companies (FC, FA, FM) confirmed. `AWT-0105` moved to Done. Plan closed.**
