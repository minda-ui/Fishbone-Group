# Change log — 2026-09-13 — Peter group-inbox routing plan locked (v2) and filed; chapter closed

_Append-only; newest notes at the top. See `CLAUDE.md` §4. This session produced no Raw processing and touched no live system of record — it finalised and filed a plan, and refreshed the standing files._

## Session summary

Finalised and filed the **Peter Group-Inbox Routing plan** — the design that brings every relevant Fishbone entity's business email to Peter for daily triage. The governing constraint: Peter's Gmail connector authenticates as **one** account, `ops@fishboneconstruction.co.uk` ("the hub"), so "route entity X to Peter" means **forward X's business mail into the hub**, and Peter sorts each item by the `Delivered-To` header, tagging `[FC][FP][FM][FA][FH][FW]`. **One combined routine** reads the hub and handles all six, replacing the per-company routines.

### Owner decisions locked (plan §7)
1. Single hub inbox + one combined Peter routine.
2. Route **six** entities: FC (Construction), FP (Properties), FM (Commercial), FA (Amfa), FH (Holdings), FW (Waste). **SSAS excluded** — no dedicated domain; its correspondence goes to personal inboxes Peter must never read, and it is dominated by member personal/financial data (Empowered Pensions). Revisit only if the mailbox later proves mostly benign admin.
3. Addresses per plan §3 (Amfa's live mailbox is the registration-typo `emquires@amfa.uk`; a separate Eugene/Admin-console fix should add `enquiries@`/`enquires@` aliases so real customer enquiries stop being lost).
4. **Schedule: twice daily** — a morning ~07:45 UK run (`45 6 * * *` UTC) and an afternoon ~15:00 UK run (`0 14 * * *` UTC), shifting to `45 7` / `0 15` at the 26 Oct 2026 UK clock change; runs are idempotent (dedup on thread-id) so the afternoon run only handles what the morning missed. (Owner asked for two checks this session.)
5. **Holdings migrates** `fishboneholdings.co.uk` off 1&1 into Construction's Google Workspace as a secondary domain, then routes internally (Eugene's consolidation runbook) — not an IONOS forward. Holdings routing is gated on that migration; the other five route first.
6. Hub access stays restricted to **Minda + Peter only** — the safeguard that makes co-locating all companies' mail in one mailbox safe.

### Added this session at the owner's request
- **§3b — step-by-step Properties/Commercial routing** (owner asked for the exact settings, both directions). One Admin-console routing rule in the **Properties** Workspace ("Ops routing → Peter hub"), mirroring Construction's live "Ops routing": affect Outbound + Internal-sending + Inbound + Internal-receiving; envelope-sender regexp `^(info|irina|commercial)@fishboneproperties\.co\.uk$`; "also deliver to" `ops@fishboneconstruction.co.uk`; bypass the cross-tenant spam/relay block if needed. Captures **sent** mail (the evidence a task was actioned) as well as received — a per-user Gmail forward would miss sent mail. A per-mailbox inbound-forward is documented as the fallback for the received half. Verify each address in both directions (test to → appears with the right `Delivered-To`; test from → the copy also lands in the hub).
- **§4/§7.4 — twice-daily schedule** as above.

### Filing
- Filed **`Outputs/2026-09-13_Plan_Peter-Group-Inbox-Routing_v2.md`** (id `18qXsfpkwnL7DPY9Nfd4ozZlIZ3prBQXl`), byte-verified on Drive (download-diff identical). The premature v1 (`1AfRNAkEJW42ccjqfrzM_CPRC4gV_Yohm`) was archived to `Archive/`.
- **Nothing forwarded or wired yet** — execution awaits the owner's go (plan §9): Eugene writes the forwarding runbooks, Minda sets the forwards and runs the Holdings migration, then Peter's charter/SRC update and the single combined routine are created and the per-company routines retired.

### Standing files
- `current-state.md` refreshed by archive-then-recreate. The pre-edit version (id `11IcWWmtbutfroy8X96js6qW5vIFfAPlC`) was archived. **The "Last session" cell was condensed** — the per-session narrative that had accumulated there (~10 sessions) was reduced to the latest session plus a short digest, with full detail for every prior session remaining in its dated `change-log/` file, per this file's own "present snapshot, not history" design. One large-file upload was botched by a transcription artifact and archived (labelled BOTCHED UPLOAD); the condensed re-upload (id `1Ek3KenghbyogTCMCUaTQ2uzISZYh2V6O`) is factually complete and byte-checked (fileSize, no U+FFFD, `£` preserved) — it carries one cosmetic thin-space artifact at one sentence join in the Next-action cell, which renders as a space and does not affect meaning.

### Deferred (owner)
- Review the **PayPal-credential `.docx`** security finding ("Take payment over the phone.docx", owner lana@fishbonewaste.co.uk) — flagged location only; deferred until after Peter, and the credential is not to be distributed.

### Governance
- Read + plan + file only. No email sent; no live system of record written except the narrow permitted Drive Outputs/Archive filing and standing-file maintenance (§6a). No sister-KB content edited.
