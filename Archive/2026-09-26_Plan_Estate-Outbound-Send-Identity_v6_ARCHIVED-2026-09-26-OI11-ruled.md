# Plan — Estate Outbound Send-Identity (design closed 2026-09-26; execution in progress with Eugene)

- **Type:** Plan — design closed to a one-line architecture decision; execution now under way as Hub `AWT-0105` (Eugene)
- **Status:** Design closed. `AWT-0105` **In Progress** — Eugene has already investigated and reported findings per company; one new blocker (`OI-11`, Eugene's own KB) needs Minda's decision.
- **Started:** 2026-09-26, descoped from `2026-09-26_Plan_Estate-Mail-Triage-Pipeline_v2.md` (archived); resolved from `..._Outbound-Send-Identity_v1.md` (archived); corrected through `v2`→`v5` (archived — SSAS removed, then FH/FW removed, then FM moved off the new-provisioning list); this version folds in Eugene's actual findings against the live infrastructure inventory
- **Related:** `Process-Estate-Authority-Boundaries.md` (one-domain-one-owner); the Authority Register; `AX-15`/`AWT-0101` (Fishbone Properties Ltd's separate account/login — the precedent that raised the visibility-gap question this plan avoided repeating)

## Resolution — 2026-09-26

Two shapes were on the table for "each company sends under its own domain identity":

1. Six more separate Claude environments, one per company, each with its own connector — repeating the Properties (`AX-15`) setup five more times, and its cross-account visibility gap five more times.
2. Each company gets a real mailbox on its own domain; the human who owns that correspondence sends from it directly in their own mail client. **No Claude connector touches it. Alex has no role in it at all.**

Minda: *"Option 2 - each company sends manually, Alex not involved."* Not a build for Alex — Alex sends no mail today regardless (no `Mail.Send` tool available) — purely a mailbox-provisioning task for Eugene.

## Scope corrections — 2026-09-26

- **Fishbone SSAS (FS) removed** — no domain of its own.
- **Fishbone Holdings Ltd (FH) and Fishbone Waste Ltd (FW) removed** — Minda's business call, both fine staying on the shared `ops@fishboneconstruction.co.uk` address.
- **Fishbone Commercial Properties Ltd (FM) moved off the new-provisioning list** — Minda: *"I think FM is on Fishbone Properties domain."* Confirmed independently by Eugene's investigation below.

## Eugene's findings on `AWT-0105` — 2026-09-26

Eugene checked each company against the live `Infra-Inventory/Workspace-and-Email-Inventory.md` before writing anything (Rule C — verify, don't assume), rather than treating this as a uniform build:

| Company | Finding | Status |
|---|---|---|
| **FC** — Fishbone Construction Ltd | `info@fishboneconstruction.co.uk` is a real, non-alias mailbox already live on FC's own domain. Recommended as the outbound identity as-is. | **Already done — no action needed.** |
| **FA** — Amfa Furniture Ltd | `info@amfa.uk` works now as an interim identity. `enquiries@amfa.uk` (named in Nadia's `AWT-0093` build, never confirmed live — flagged by Nadia's own `NA-3`) needs a human check in Amfa's Admin console, creation if missing, then `Runbook-Amfa-Email-DKIM-SPF-DMARC.md` before it can send. | **Confirm-or-create — small human step remains.** |
| **FM** — Fishbone Commercial Properties Ltd | **No domain or Workspace subscription of its own** (confirmed via Eugene's own `OI-1`). `commercial@fishboneproperties.co.uk` sits on Properties' domain, not FM's. This matches Minda's "FM is on Fishbone Properties domain" exactly — FM has no independent identity to provision at all. | **Blocked — raised as Eugene's `OI-11`, needs Minda's decision (below).** |

Eugene wrote `Runbooks/Runbook-Outbound-Mailbox-Provisioning-AWT-0105.md` (v0.1) covering all three with the concrete next step for each. Entirely guide-only so far — no console change made. `AWT-0105` moves to Done once FA's mailbox is confirmed/created and `OI-11` is resolved for FM.

### `OI-11` — decision needed from Minda

FM has no domain or Google Workspace subscription of its own. Two ways forward, per Eugene:
1. **Register FM its own domain** — a real, separate project (domain purchase, Workspace subscription, DNS/DKIM/SPF/DMARC setup), matching how FC and FA are eventually meant to look.
2. **Accept the shared Properties-domain mailbox as-is** — FM continues sending as/through `commercial@fishboneproperties.co.uk` (or a similar Properties-domain address), formally acknowledging it doesn't have (and isn't getting, for now) its own separate identity.

This is a business decision, not a technical one — Eugene raised it rather than picking a side.

## What actually needs to happen — updated

1. **FC** — nothing further; already has a working, non-alias domain mailbox.
2. **FA** — a human (Rachel/Nadia/Eugene, whoever holds Amfa's Admin console access) confirms or creates `enquiries@amfa.uk`, then runs the DKIM/SPF/DMARC runbook before it's used to send.
3. **FM** — paused on Minda's `OI-11` decision (own domain vs. shared Properties-domain mailbox). No further action until she rules.
4. **FH, FW, FS** — no action; continue on `ops@fishboneconstruction.co.uk` (FH/FW) or not applicable (FS has no domain).
5. **Peter's `ops@` inbound triage** — untouched throughout, as settled before the outbound-only descope.
6. **Who sends from which mailbox** follows the existing Authority Register one-domain-one-owner table, unchanged — only the from-address changes for FC/FA (and FM, once `OI-11` is settled).
7. No Authority Register or Charter change needed — no connector is shared with Alex here.

## Still needed

1. Minda's ruling on `OI-11` (Eugene's KB) — FM's own domain vs. shared Properties-domain mailbox.
2. The human step to confirm/create Amfa's `enquiries@amfa.uk` and run its DKIM/SPF/DMARC runbook.
3. Nothing else from Alex's side — this was never an Alex build.

## History

- 2026-09-26 — plan drafted as a broad "estate mail-triage pipeline" idea, co-designed in conversation.
- 2026-09-26 — descoped to outbound-only once Minda clarified inbound triage (Peter's `ops@`) stays untouched.
- 2026-09-26 — resolved: each company gets its own domain mailbox, sent from manually by its owner; Alex has no connector or drafting role. Hub task `AWT-0105` raised to Eugene.
- 2026-09-26 — corrected: Fishbone SSAS removed (no domain). Five companies.
- 2026-09-26 — corrected again: Fishbone Holdings Ltd and Fishbone Waste Ltd removed (Minda's business call). Three companies: FC, FA, FM.
- 2026-09-26 — corrected a third time: Fishbone Commercial Properties Ltd (FM) moved off the new-provisioning list — already on the Fishbone Properties domain. Two companies: FC, FA.
- 2026-09-26 — Eugene's actual investigation folded in: FC already done, FA needs a small confirm-or-create step, FM is genuinely domain-less and raised as his own `OI-11` for Minda's decision. `AWT-0105` status: In Progress.
