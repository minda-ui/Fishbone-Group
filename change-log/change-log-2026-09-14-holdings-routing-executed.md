# Change log — 2026-09-14 — Holdings email routing executed; Peter plan §3a marked live

_Append-only; newest notes at the top. See `CLAUDE.md` §4. No Raw processing. The only Drive writes are the permitted Outputs/Archive filing (§6a); all live-system changes (DNS, Google Workspace Admin console) were executed by the owner on guide-only advice._

## Holdings email routing went live (owner executed, 2026-09-14)

Guided by this session (guide-only per §6a — the assistant touches no DNS or Admin console), Minda took `fishboneholdings.co.uk` live into Construction's Google Workspace and routed it to Peter's hub `ops@fishboneconstruction.co.uk`. All five §3a steps done:

1. **Secondary domain** — `fishboneholdings.co.uk` added to Construction's Workspace and ownership verified.
2. **Verification TXT** — the Google `google-site-verification` TXT was already present in the IONOS DNS, so this step was effectively pre-satisfied.
3. **Mailbox** — `info@fishboneholdings.co.uk` provisioned.
4. **DNS cutover** — MX repointed to Google; the IONOS MX (`mx00`/`mx01.ionos.co.uk`), IONOS DKIM CNAMEs and the IONOS `_dmarc` CNAME replaced with Google MX + a `google._domainkey` DKIM TXT + a Google DMARC TXT; SPF set to `v=spf1 include:_spf.google.com ~all`; stale parking `A` dropped. (Guide-only advice given on replace-vs-add for each record type.)
5. **Routing to hub** — `info@fishboneholdings.co.uk` → `ops@fishboneconstruction.co.uk` via **two internal routing rules** (same tenant): one keyed on envelope **recipient** (received), one on envelope **sender** (sent). **Both directions tested green.**

Holdings had **no live mailbox** (IONOS panel: domain "Not active", parking IP, no website), so this was an add-secondary-domain exercise, not a mailbox migration — no IMAP, no registrar change. Holdings was therefore never gated and is now the second entity live into the hub (after Construction).

**Lesson (Google Workspace routing).** To copy *both* sent and received mail for one address you need **two** routing rules — envelope-recipient for received, envelope-sender for sent — because the two envelope filters inside a single rule are **ANDed** (a message is never both to and from the same address). An initial one-rule attempt with both filters ticked matched nothing; splitting into two rules fixed it. This applies equally to the Properties §3b chain (its Stage 1 keys on the sender for the sent half). Eugene's forwarding runbooks must reflect it.

## Filing (archive-then-recreate, §6a)
- Plan re-filed in place under the same name `Outputs/2026-09-13_Plan_Peter-Group-Inbox-Routing_v2.md` (new id `10H-hPCyNyhrcZrJW2ZJLEz7pGBGeDNA2`, 16475 B, byte-verified == local): §3a rewritten as **executed 2026-09-14**; the `FH` routing-table row → ✅ done 2026-09-14; step 5 corrected to two rules; the status header, §7.5, §8 and footer updated. The prior v2 (id `1Fy7FiDsWhvmevBEgAgZ7QgXz0mdo059B`) was archived to `Archive/` (superseded by the Holdings-executed revision). Now-historical Holdings how-to and prerequisites were compressed to keep the upload within one reliable write — no executable step lost.
- `current-state.md` refreshed this session (Next action + Holdings-live note).

## Unchanged / still pending
Properties/Commercial (the two-stage routing-rule chain, §3b), Amfa and Waste forwards still await the owner's go; then Peter's charter/SRC update and the single combined twice-daily routine, and retiring the per-company routines. Hub access stays Minda + Peter only.

## Governance
Read + plan + Drive Outputs/Archive filing only (§6a). Every DNS and Admin-console change was the owner's; the assistant advised guide-only and executed nothing on any live system.
