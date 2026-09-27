# Change log — 2026-09-14 — Peter routing plan §3b revised: two-stage routing-rule chain

_Append-only; newest notes at the top. See `CLAUDE.md` §4. No Raw processing, no live system of record touched — a plan revision only._

## §3b Properties/Commercial routing locked as a two-stage chain (owner, 2026-09-14)

At the owner's direction, the Properties/Commercial routing in the Peter Group-Inbox Routing plan (§3b) was changed from a single direct cross-tenant rule to a **two-stage chain, both stages Admin-console routing rules**:

- **Stage 1 (inside the Properties tenant):** a routing rule `Ops routing → Properties ops` consolidates `info@`/`irina@`/`commercial@fishboneproperties.co.uk` (sent + received, envelope-sender regexp) into **`ops@fishboneproperties.co.uk`** — a single internal ops mailbox aggregating all three. This solves a long-standing Fishbone Properties want (one internal ops inbox) independently of Peter; "also deliver to" adds a copy, so the three mailboxes still receive their own mail.
- **Stage 2 (the one cross-tenant hop):** a second routing rule `Ops properties → Peter hub` routes `ops@fishboneproperties.co.uk` (sent + received) to **`ops@fishboneconstruction.co.uk`**. Made a routing rule (not a plain Gmail forward) so `ops@properties`' own sent mail is carried across too.

**Why both are routing rules, not per-user forwards:** Gmail's per-user "forward a copy" carries inbound only and would drop each mailbox's sent mail (the evidence a task was actioned). A received-half-only per-mailbox forward is documented as a fallback but is not preferred.

**Header-matching consequence:** the two hops each prepend a `Delivered-To`, so at the hub a Properties message carries several. Peter's combined-routine prompt matches the Properties mailbox **anywhere in the stacked `Delivered-To`, falling back to To/Cc (received) / From (sent)** — never only the top `Delivered-To`. Recorded in §2, §3b and the §3b header note.

## Filing
- The plan was re-filed **in place under the same name** `Outputs/2026-09-13_Plan_Peter-Group-Inbox-Routing_v2.md` (new id `1-34C7qlrM0SvRE62F_SnGbtJDxYau1Qx`), status line + footer marked **"Revised 2026-09-14"**; the prior v2 (id `18qXsfpkwnL7DPY9Nfd4ozZlIZ3prBQXl`) was archived to `Archive/`. Kept the same filename so the standing-file references stay valid. fileSize matched local (16516 B); content verified against the source. Non-essential prose was trimmed (~1.6 KB) to keep the upload within a single reliable write — no executable step lost.
- The Eugene runbook (`Runbook-Properties-Commercial-Routing-to-Hub.md`) will now describe **two** routing rules when it is written at execution time.

## Unchanged
Still **agreed, not executed** — nothing forwarded/wired until the owner says go. All other decisions (six entities, SSAS excluded, Holdings migration, twice-daily schedule, hub access Minda+Peter only) stand.

## Governance
- Read + plan + file only; only the permitted Drive Outputs/Archive filing (§6a). No email, no sister-KB edits.
