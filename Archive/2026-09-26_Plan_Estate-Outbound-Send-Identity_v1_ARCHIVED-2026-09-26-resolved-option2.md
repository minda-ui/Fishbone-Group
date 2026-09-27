# Plan — Estate Outbound Send-Identity (descoped from "Mail-Triage Pipeline")

- **Type:** Plan (not yet a ratified Process — nothing here is built)
- **Status:** Draft — being co-designed by Minda and Alex directly
- **Started:** 2026-09-26, descoped same day from `2026-09-26_Plan_Estate-Mail-Triage-Pipeline_v2.md` (archived, group KB Archive)
- **Related:** `Process-Estate-Authority-Boundaries.md` (one-domain-one-owner); the Authority Register; `AX-15`/`AWT-0101` (Fishbone Properties Ltd's separate account/login)

## Scope decision — 2026-09-26

The original whiteboard sketch (each company with its own inbox) conflated two different problems:
- **Inbound classification** — who should read/act on an incoming message. Already handled today by Peter's existing `ops@fishboneconstruction.co.uk` triage across the six companies that share that connector. Minda's ruling: **leave this untouched** — Peter's routine stays exactly as is.
- **Outbound identity** — correspondence from a given company should look like it's from that company, not generically from the shared `ops@` address. This is the only piece still in scope.

Minda: *"It's purely outbound — cut the plan down to that scope."*

Everything below is scoped to outbound only. The classification design that was drafted for inbound triage (Layer 1/2 domain table, Step 0/Sandbox Mode, four-gate auto-dispatch, Known Correspondents whitelist, audit trail, Inbox-Reports staging folder) is **cut, not carried forward** — it solved a problem this plan no longer covers. It remains on record in the archived v2 file if an inbound-triage need resurfaces later; nothing there is lost, just not part of this plan.

## Problem

Six companies (all but Fishbone Properties Ltd, which already has its own separate `ops@fishboneproperties.co.uk` login/account) currently send outbound mail through the one shared `ops@fishboneconstruction.co.uk` connector — meaning a Fishbone Waste Ltd invoice query reply, an Amfa sales quote, and a Construction technical answer all currently go out looking like they're from the same generic address, regardless of which company or which employee is actually corresponding.

## Design

### Likely mechanism — not yet verified

Both Gmail ("Send mail as" aliases) and M365 ("Send As" / "Send on Behalf" permissions) support sending under a different from-address/display identity from a single mailbox, without a second login or a second connector. If available here, this sidesteps the one-login-per-connector platform constraint entirely for the outbound side — no new infrastructure, just alias configuration on the connector already in place.

**Not yet confirmed for this estate's actual connector/domain setup.** To verify with Eugene:
1. Can `ops@fishboneconstruction.co.uk` (or whichever connector ends up handling this) send as per-company alias addresses?
2. Do those alias addresses already exist for each company, or do they need to be created?
3. Any per-company existing precedent already covers this (e.g., does Fishbone Properties Ltd's separate account already establish what a working alias/identity looks like)?

### Per-company identity mapping

Uses the same verified entity list as the Document Register ("Entity (owner)" picklist), scoped here to the six companies that share the `ops@` connector (Fishbone Properties Ltd excluded — already has its own account; Group/FG excluded — not an operating company that sends its own correspondence):

| Prefix | Entity |
|---|---|
| FC | Fishbone Construction Ltd |
| FH | Fishbone Holdings Ltd |
| FW | Fishbone Waste Ltd |
| FA | Amfa Furniture Ltd |
| FM | Fishbone Commercial Properties Ltd |
| FS | Fishbone SSAS |

Who drafts/sends under which identity follows the existing Authority Register one-domain-one-owner table already in force — no new ownership rules needed here (e.g. Rachel for finance correspondence, Anna for Construction technical, Nadia for Amfa sales, etc., each now sending under their own company's identity rather than the generic shared one).

### Execution mode

Sending stays **human-executed**, unchanged from today's boundary: Alex's `Mail.Send` tool is not available to this session (confirmed via `ToolSearch`, no match) and this plan doesn't propose changing that. Alex's role, if any, is drafting support — never pressing send. This matches the existing Sandbox Mode / Rung-ladder discipline used everywhere else in the estate.

## Still needed before anything here is built

1. Verify Send-As/Send-on-Behalf feasibility with Eugene (the three questions above).
2. Decide rollout order — all six companies at once, or a pilot with one or two first (mirrors the attended-first pattern used for every other new capability this estate has stood up).
3. Minda's sign-off on this whole plan before any alias/identity is actually configured.

## History

- 2026-09-26 — descoped from the broader "Mail-Triage Pipeline" draft (`v2`, archived) once Minda clarified the need is purely outbound send-identity, not inbound classification. Peter's existing `ops@` triage confirmed unchanged. New, much smaller plan drafted covering only per-company outbound identity.
