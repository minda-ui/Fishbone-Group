# Change log — 2026-09-14 — Properties/Commercial email routing executed (§3b two-stage chain, four rules)

_Append-only; newest notes at the top. See `CLAUDE.md` §4. No Raw processing. The only Drive writes are the permitted Outputs/Archive filing (§6a); all live-system changes (Google Workspace Admin console routing) were executed by the owner on guide-only advice._

## Properties + Commercial routing went live (owner executed, 2026-09-14)

Guided by this session (guide-only per §6a), Minda built the §3b two-stage routing-rule chain in the **Properties** Google Workspace, taking `info@`/`irina@`/`commercial@fishboneproperties.co.uk` (both directions) into Peter's hub via `ops@fishboneproperties.co.uk`. **Properties (`[FP]`) and Commercial (`[FM]`) are now live** — the third entity onto the hub after Construction and Holdings.

**Built as four routing rules (two per stage):**
- **Stage 1a (received):** Inbound + Internal-receiving; envelope-**recipient** `^(info|irina|commercial)@fishboneproperties\.co\.uk$`; also deliver to `ops@fishboneproperties.co.uk`.
- **Stage 1b (sent):** Outbound + Internal-sending; envelope-**sender**, same regexp; also deliver to `ops@fishboneproperties.co.uk`.
- **Stage 2a (received):** Inbound + Internal-receiving; envelope-**recipient** `^ops@fishboneproperties\.co\.uk$`; also deliver to `ops@fishboneconstruction.co.uk`.
- **Stage 2b (sent):** Outbound + Internal-sending; envelope-**sender** `^ops@fishboneproperties\.co\.uk$`; also deliver to `ops@fishboneconstruction.co.uk`.

**Tested green both directions:** external → `commercial@` → `ops@properties` → hub (received chain, proves 1a + 2a + the cross-tenant hop + the `[FM]` path); and `commercial@` → external → both ops mailboxes (sent chain, proves 1b + 2b). The shared regexp covers `info@`/`irina@` identically. No spam/relay allowlisting was needed at the hub.

**Correction to §3b (the Holdings lesson applied).** The plan's original §3b had **one** Stage 1 rule with a single envelope-**sender** filter — which catches only *sent* mail; a message *received* at `info@` has an external envelope sender and would have been missed. Same for Stage 2. Corrected on execution to **two rules per stage** (recipient-filter for received, sender-filter for sent), because a single Google routing rule **ANDs** its two envelope filters and cannot match both directions at once. This is the same rule-of-thumb recorded for Holdings.

## Filing (archive-then-recreate, §6a)
- Plan re-filed in place under the same name `Outputs/2026-09-13_Plan_Peter-Group-Inbox-Routing_v2.md` (new id `1bYTJsfxXtre2J-e09TWWHH00NmYwU2o9`, 14974 B, byte-verified == local): §3b rewritten as **executed 2026-09-14** with the four-rule structure; `FP` and `FM` routing-table rows → ✅ done 2026-09-14; status header, opening, §7.6, §9 and footer updated. Prior version (id `10H-hPCyNyhrcZrJW2ZJLEz7pGBGeDNA2`) archived to `Archive/`. The now-executed §3b was compressed from the step-by-step how-to to a record of the live setup — no executable detail lost.
- `current-state.md` refreshed this session.

## Unchanged / still pending
**Amfa and Waste** forwards (simple Gmail per-user forwards) still await the owner's go; then Peter's charter/SRC update and the single combined twice-daily routine, and retiring the per-company routines. Hub access stays Minda + Peter only.

## Governance
Read + plan + Drive Outputs/Archive filing only (§6a). Every Admin-console change was the owner's; the assistant advised guide-only and executed nothing on any live system.
