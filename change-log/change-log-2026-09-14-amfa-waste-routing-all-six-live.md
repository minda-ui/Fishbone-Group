# Change log — 2026-09-14 — Amfa + Waste routing executed; all six sources live (routing phase complete)

_Append-only; newest notes at the top. See `CLAUDE.md` §4. No Raw processing. The only Drive writes are the permitted Outputs/Archive filing (§6a); all live-system changes (Google Workspace Admin console routing + spam settings) were executed by the owner on guide-only advice._

## Amfa and Waste routing went live; all six sources now route to the hub (owner executed, 2026-09-14)

Guided by this session (guide-only per §6a), Minda built the last two source routings, completing the Peter group-inbox routing phase:

- **Amfa (`[FA]`) — live.** Amfa's own Workspace (`amfa.uk`) routes `info@amfa.uk` and `enquires@amfa.uk` to the hub `ops@fishboneconstruction.co.uk` via **two Amfa-tenant routing rules** (envelope-recipient `^(info|enquires)@amfa\.uk$` for received, envelope-sender for sent), both directions tested green. The primary is now `info@amfa.uk`; the old mis-registered typo mailbox `emquires@amfa.uk` is retired, closing the "silently losing enquiries" risk (no alias fix outstanding).
- **Waste (`[FW]`) — live.** Waste's own Workspace (`fishbonewaste.co.uk`) routes `info@` and `sales@fishbonewaste.co.uk` to the hub via **two Waste-tenant routing rules** (`^(info|sales)@fishbonewaste\.co\.uk$`), both directions tested green. Dormant/low volume, routed for completeness.

**All six sources now route into the hub** — Construction, Holdings, Properties/Commercial, Amfa and Waste — completing the routing phase. Peter tags each by `Delivered-To`: `[FC][FP][FM][FA][FH][FW]`.

## Cross-tenant spam — mitigated (Fix A applied; Fix B deferred as a task)

Some cross-tenant relayed copies (Properties, Commercial, Amfa, Waste) initially landed in the hub's Spam. **Fix A applied (owner):** a hub-side approved-senders **spam-bypass list** in Construction's Admin console listing the five group domains (`fishboneconstruction.co.uk`, `fishboneproperties.co.uk`, `amfa.uk`, `fishbonewaste.co.uk`, `fishboneholdings.co.uk`), so relayed copies skip the spam filter — mail now lands in the inbox.

**Fix B — deferred task (Eugene/Minda):** enable **DKIM** (and confirm SPF/DMARC) on `fishboneproperties.co.uk`, `amfa.uk` and `fishbonewaste.co.uk` (Holdings already has it) so relayed copies authenticate at source. This is the durable fix that eventually removes the need for the bypass; the owner chose to leave it as a follow-up task rather than do it now.

## Lesson (reiterated)
Every cross-tenant / multi-mailbox routing this session used **two rules per source** — envelope-recipient for received, envelope-sender for sent — because a single Google routing rule ANDs its two envelope filters. Applies to Holdings (§3a), Properties/Commercial (§3b) and Amfa/Waste (§8). Eugene's forwarding runbooks must reflect it.

## Filing (archive-then-recreate, §6a)
- Plan re-filed in place under the same name `Outputs/2026-09-13_Plan_Peter-Group-Inbox-Routing_v2.md` (new id `1SlQP5rCAYofn7PuBO69zZIKENHe5ia2g`, 16312 B, byte-verified == local): §3 table `FW` row → ✅ done; §8 gained Waste + cross-tenant-spam bullets (Fix A applied, Fix B deferred); status header, opening ("agreed and executed — all six live"), §9 (A–B marked done; routing phase complete) and footer updated. Prior version (id `1tG1CRptcn84NAb-Pzt4uHiqq9Yfde06f`) archived to `Archive/`.
- `current-state.md` refreshed this session.

## Still pending (the Peter routine)
Routing is complete; what remains (plan §9 C–E): update Peter's charter §2a + add SRC entries for all six sources; write and create the single combined **twice-daily** routine (Gmail+Drive+Smartsheet) via the claude.ai/code/routines form; retire the per-company routines. Hub access stays Minda + Peter only.

## Governance
Read + plan + Drive Outputs/Archive filing only (§6a). Every Admin-console and DNS/spam-setting change was the owner's; the assistant advised guide-only and executed nothing on any live system.
