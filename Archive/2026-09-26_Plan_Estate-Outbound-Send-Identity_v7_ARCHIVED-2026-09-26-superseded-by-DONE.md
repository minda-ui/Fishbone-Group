# Plan — Estate Outbound Send-Identity (fully resolved 2026-09-26; execution with Eugene)

- **Type:** Plan — design closed, `OI-11` ruled, execution continuing as Hub `AWT-0105` (Eugene)
- **Status:** Design closed and every open decision ruled. `AWT-0105` **In Progress** — two small human steps remain (Amfa mailbox confirm-or-create; Commercial Properties signature), both Eugene's/execution-side, none Alex's.
- **Started:** 2026-09-26, descoped from `2026-09-26_Plan_Estate-Mail-Triage-Pipeline_v2.md` (archived); through `v1`→`v6` (archived) as scope narrowed from six companies to two-plus-one-riding-along, and as Eugene's own investigation surfaced real findings; this version records Minda's ruling on Eugene's `OI-11`
- **Related:** `Process-Estate-Authority-Boundaries.md` (one-domain-one-owner); the Authority Register; `AX-15`/`AWT-0101` (Fishbone Properties Ltd's separate account/login — the precedent that raised the visibility-gap question this plan avoided repeating)

## Resolution — 2026-09-26

Two shapes were on the table for "each company sends under its own domain identity": six more separate Claude environments (repeating Properties' `AX-15` visibility gap five more times), or each company getting a real mailbox on its own domain with a human sending manually and **no Claude/Alex connector or drafting role at all**. Minda chose the latter (**Option 2**) — not a build for Alex (Alex sends no mail today regardless), purely a mailbox-provisioning task for Eugene.

## Scope corrections — 2026-09-26

- **Fishbone SSAS (FS) removed** — no domain of its own.
- **Fishbone Holdings Ltd (FH) and Fishbone Waste Ltd (FW) removed** — Minda's business call, both fine staying on the shared `ops@fishboneconstruction.co.uk` address.
- **Fishbone Commercial Properties Ltd (FM) moved off the new-provisioning list** — Minda: *"I think FM is on Fishbone Properties domain."* Confirmed independently by Eugene: FM has no domain or Workspace subscription of its own at all (his own `OI-1`).

**Two companies needed new mailboxes: FC and FA.** FM was left as an open decision (`OI-11`) — own domain, or accept the shared Properties mailbox.

## Eugene's findings on `AWT-0105`

Checked against the live `Infra-Inventory/Workspace-and-Email-Inventory.md` rather than treated as a uniform build:

| Company | Finding | Status |
|---|---|---|
| **FC** — Fishbone Construction Ltd | `info@fishboneconstruction.co.uk` already real, non-alias, live on FC's own domain. | **Done — no action needed.** |
| **FA** — Amfa Furniture Ltd | `info@amfa.uk` works as an interim identity now; `enquiries@amfa.uk` (named in `AWT-0093`, never confirmed live — flagged by `NA-3`) needs a human check/creation in Amfa's Admin console, then the DKIM/SPF/DMARC runbook. | **Confirm-or-create — human step remains.** |
| **FM** — Fishbone Commercial Properties Ltd | No domain or Workspace subscription of its own; `commercial@fishboneproperties.co.uk` sits on Properties' domain, not FM's. | **Raised as Eugene's `OI-11` — now ruled, see below.** |

## `OI-11` — ruled by Minda, 2026-09-26

**FM stays on the shared Fishbone Properties domain — no separate domain gets registered.** Minda's own words: *"it is stays on Properties domain, but we will create Commercial Properties signature."* Concretely: FM continues sending through the shared `commercial@fishboneproperties.co.uk` mailbox, but gets **its own distinct email signature** identifying correspondence as coming from Fishbone Commercial Properties Ltd — so recipients see the right company name even though the underlying mailbox is shared with Properties. This is the lightest-touch resolution of the two Eugene offered: no new domain, no new Workspace subscription, just a branding/identity fix layered onto the existing shared mailbox.

Relayed to Eugene directly on the Hub row (`AWT-0105`'s Response/result cell, appended without disturbing his own findings — his cell history was checked immediately beforehand to confirm nothing had changed since his last edit): close `OI-11` on this basis, add signature creation as FM's concrete next step in his runbook.

## What actually needs to happen — final

1. **FC** — nothing further; already has a working, non-alias domain mailbox.
2. **FA** — a human confirms or creates `enquiries@amfa.uk`, then runs the DKIM/SPF/DMARC runbook.
3. **FM** — Eugene creates a distinct Fishbone Commercial Properties Ltd email signature for use with the shared `commercial@fishboneproperties.co.uk` mailbox. `OI-11` closes on this basis.
4. **FH, FW, FS** — no action; FH/FW continue on `ops@fishboneconstruction.co.uk`, FS has no domain and isn't part of this exercise.
5. **Peter's `ops@` inbound triage** — untouched throughout.
6. **Who sends from which mailbox** follows the existing Authority Register one-domain-one-owner table, unchanged.
7. No Authority Register or Charter change needed — no connector is shared with Alex here.

## Still needed

1. The human step to confirm/create Amfa's `enquiries@amfa.uk` and run its DKIM/SPF/DMARC runbook.
2. Eugene creates FM's Commercial Properties signature and closes `OI-11`.
3. `AWT-0105` moves to Done once both of the above land. Nothing further from Alex's side — this was never an Alex build.

## History

- 2026-09-26 — plan drafted as a broad "estate mail-triage pipeline" idea, co-designed in conversation.
- 2026-09-26 — descoped to outbound-only once Minda clarified inbound triage (Peter's `ops@`) stays untouched.
- 2026-09-26 — resolved: each company gets its own domain mailbox, sent from manually by its owner; Alex has no connector or drafting role. Hub task `AWT-0105` raised to Eugene.
- 2026-09-26 — corrected: Fishbone SSAS removed (no domain). Five companies.
- 2026-09-26 — corrected again: Fishbone Holdings Ltd and Fishbone Waste Ltd removed (Minda's business call). Three companies: FC, FA, FM.
- 2026-09-26 — corrected a third time: Fishbone Commercial Properties Ltd (FM) moved off the new-provisioning list — already on the Fishbone Properties domain. Two companies: FC, FA.
- 2026-09-26 — Eugene's actual investigation folded in: FC already done, FA needs a small confirm-or-create step, FM raised as his own `OI-11`. `AWT-0105` status: In Progress.
- 2026-09-26 — `OI-11` ruled by Minda: FM stays on the shared Properties domain; a distinct Commercial Properties signature gets created instead of a new domain. Relayed to Eugene on the Hub row.
