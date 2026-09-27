# Plan — Estate Outbound Send-Identity (resolved 2026-09-26 — Alex not involved)

- **Type:** Plan — resolved to a one-line architecture decision plus a provisioning task; nothing further for Alex to design
- **Status:** Design closed. Execution (mailbox provisioning) handed to Eugene as a Hub task (`AWT-0105`).
- **Started:** 2026-09-26, descoped from `2026-09-26_Plan_Estate-Mail-Triage-Pipeline_v2.md` (archived); resolved from `..._Outbound-Send-Identity_v1.md` (archived); corrected from `..._v2_RESOLVED.md` (archived, SSAS removed); corrected again from `..._v3_RESOLVED.md` (archived, FH and FW removed)
- **Related:** `Process-Estate-Authority-Boundaries.md` (one-domain-one-owner); the Authority Register; `AX-15`/`AWT-0101` (Fishbone Properties Ltd's separate account/login — the precedent that raised the visibility-gap question this plan avoided repeating)

## Resolution — 2026-09-26

Two shapes were on the table for "each company sends under its own domain identity":

1. Six more separate Claude environments, one per company, each with its own connector — literally repeating the Properties (`AX-15`) setup five more times, and repeating its cross-account visibility gap five more times.
2. Each company gets a real mailbox on its own domain; the human who owns that correspondence sends from it directly in their own mail client. **No Claude connector touches it. Alex has no role in it at all.**

Minda: *"Option 2 - each company sends manually, Alex not involved."*

This is not actually a build for Alex — Alex already sends no mail today (no `Mail.Send` tool available, human-executed only), so this changes only which address a human sends *from*, not anything about Alex's connectors, routines, or drafting role. **Nothing here needs designing, building, or ratifying as an Alex process.** It's a mailbox-provisioning task for Eugene/IT and a plain documentation note.

## Corrections — 2026-09-26

- **Fishbone SSAS (FS) removed.** Minda: *"Fishbone SSAS shouldn't be in a list, it hasn't got domain."* SSAS has no domain of its own to provision a mailbox on.
- **Fishbone Holdings Ltd (FH) and Fishbone Waste Ltd (FW) removed.** Minda: *"FH and FW don't need to be represented as standalone companies, so they can use ops@ inbox for sending emails."* Unlike the SSAS case this isn't a technical constraint (both presumably could have their own domain) — it's Minda's own business judgment that these two don't need a distinct outbound identity and are fine continuing to send through the shared `ops@fishboneconstruction.co.uk` address, same as today.

**Three companies remain in scope**, not six.

## What actually needs to happen

1. **Eugene provisions/confirms a real mailbox on each company's own domain** for the three companies getting a distinct outbound identity:

   | Prefix | Entity |
   |---|---|
   | FC | Fishbone Construction Ltd |
   | FA | Amfa Furniture Ltd |
   | FM | Fishbone Commercial Properties Ltd |

   Everyone else (Fishbone Holdings Ltd, Fishbone Waste Ltd, Fishbone SSAS) continues sending through the shared `ops@fishboneconstruction.co.uk` address, unchanged. Fishbone Properties Ltd is excluded from this exercise entirely — already has its own separate `ops@fishboneproperties.co.uk` account.

2. **Who sends from which mailbox follows the existing Authority Register one-domain-one-owner table** — unchanged from today (Rachel finance, Anna Construction technical, Nadia Amfa sales, etc.). Only the from-address changes for FC/FA/FM; ownership doesn't, and nothing changes at all for FH/FW/FS.
3. **Peter's `ops@` inbound triage is untouched** — settled before the outbound-only descope and still holds; nothing about inbound classification changes here.
4. No Authority Register or Charter change is required — no new connector is shared with Alex, so the shared-connector rule doesn't apply here. If Eugene's provisioning surfaces anything unexpected (e.g. a mailbox that ends up shared across people), that would go through the normal Register process at that point, not pre-emptively here.

## Still needed

1. Hub Tasks & Requests row `AWT-0105` to Eugene: provision/confirm the three domain mailboxes above (corrected twice — from six down to three).
2. Nothing else. This plan closes once `AWT-0105` is Done — there's no further design step, artifact, or sign-off needed from Alex's side.

## History

- 2026-09-26 — plan drafted as a broad "estate mail-triage pipeline" idea, co-designed in conversation.
- 2026-09-26 — descoped to outbound-only once Minda clarified inbound triage (Peter's `ops@`) stays untouched.
- 2026-09-26 — resolved: each company gets its own domain mailbox, sent from manually by its owner; Alex has no connector role and no drafting role. Hub task `AWT-0105` raised to Eugene.
- 2026-09-26 — corrected: Fishbone SSAS removed from the list (no domain of its own). Five companies, not six.
- 2026-09-26 — corrected again: Fishbone Holdings Ltd and Fishbone Waste Ltd removed (Minda's business call — they don't need a standalone identity, both fine on `ops@`). Three companies remain: FC, FA, FM. `AWT-0105` corrected to match.
