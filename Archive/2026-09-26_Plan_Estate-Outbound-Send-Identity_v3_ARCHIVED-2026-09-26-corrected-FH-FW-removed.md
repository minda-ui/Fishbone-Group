# Plan — Estate Outbound Send-Identity (resolved 2026-09-26 — Alex not involved)

- **Type:** Plan — resolved to a one-line architecture decision plus a provisioning task; nothing further for Alex to design
- **Status:** Design closed. Execution (mailbox provisioning) handed to Eugene as a Hub task (`AWT-0105`).
- **Started:** 2026-09-26, descoped from `2026-09-26_Plan_Estate-Mail-Triage-Pipeline_v2.md` (archived), then resolved from `..._Outbound-Send-Identity_v1.md` (archived), then corrected from `..._v2_RESOLVED.md` (archived) to remove Fishbone SSAS
- **Related:** `Process-Estate-Authority-Boundaries.md` (one-domain-one-owner); the Authority Register; `AX-15`/`AWT-0101` (Fishbone Properties Ltd's separate account/login — the precedent that raised the visibility-gap question this plan avoided repeating)

## Resolution — 2026-09-26

Two shapes were on the table for "each company sends under its own domain identity":

1. Six more separate Claude environments, one per company, each with its own connector — literally repeating the Properties (`AX-15`) setup five more times, and repeating its cross-account visibility gap five more times.
2. Each company gets a real mailbox on its own domain; the human who owns that correspondence sends from it directly in their own mail client. **No Claude connector touches it. Alex has no role in it at all.**

Minda: *"Option 2 - each company sends manually, Alex not involved."*

This is not actually a build for Alex — Alex already sends no mail today (no `Mail.Send` tool available, human-executed only), so this changes only which address a human sends *from*, not anything about Alex's connectors, routines, or drafting role. **Nothing here needs designing, building, or ratifying as an Alex process.** It's a mailbox-provisioning task for Eugene/IT and a plain documentation note.

## Correction — 2026-09-26

**Fishbone SSAS (FS) removed from the list.** Minda: *"Fishbone SSAS shouldn't be in a list, it hasn't got domain."* SSAS has no domain of its own to provision a mailbox on — it isn't a company sending its own outbound correspondence in the way the other five are, so it doesn't belong in this exercise at all. **Five companies**, not six.

## What actually needs to happen

1. **Eugene provisions/confirms a real mailbox on each company's own domain** for the five companies that currently share `ops@fishboneconstruction.co.uk` outbound (Fishbone Properties Ltd excluded — already has its own account; Group/FG excluded — not an operating company; Fishbone SSAS excluded — no domain of its own):

   | Prefix | Entity |
   |---|---|
   | FC | Fishbone Construction Ltd |
   | FH | Fishbone Holdings Ltd |
   | FW | Fishbone Waste Ltd |
   | FA | Amfa Furniture Ltd |
   | FM | Fishbone Commercial Properties Ltd |

2. **Who sends from which mailbox follows the existing Authority Register one-domain-one-owner table** — unchanged from today (Rachel finance, Anna Construction technical, Nadia Amfa sales, etc.). Only the from-address changes; ownership doesn't.
3. **Peter's `ops@` inbound triage is untouched** — this was settled before the outbound-only descope and still holds; nothing about inbound classification changes here.
4. No Authority Register or Charter change is required — no new connector is shared with Alex, so the shared-connector rule doesn't apply here. If Eugene's provisioning surfaces anything unexpected (e.g. a mailbox that ends up shared across people), that would go through the normal Register process at that point, not pre-emptively here.

## Still needed

1. Hub Tasks & Requests row `AWT-0105` to Eugene: provision/confirm the five domain mailboxes above (corrected from six — SSAS removed).
2. Nothing else. This plan closes once `AWT-0105` is Done — there's no further design step, artifact, or sign-off needed from Alex's side.

## History

- 2026-09-26 — plan drafted as a broad "estate mail-triage pipeline" idea, co-designed in conversation.
- 2026-09-26 — descoped to outbound-only once Minda clarified inbound triage (Peter's `ops@`) stays untouched.
- 2026-09-26 — resolved: each company gets its own domain mailbox, sent from manually by its owner; Alex has no connector role and no drafting role. Hub task `AWT-0105` raised to Eugene.
- 2026-09-26 — corrected: Fishbone SSAS removed from the list (no domain of its own). Five companies, not six. `AWT-0105`'s description corrected to match.
