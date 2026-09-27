# Fishbone Group — Plan: Peter Group Inbox (route all trading/holding entities to Peter) · v2

**Status:** Agreed 2026-09-13 (owner decisions locked, §7). **v2 (2026-09-13):** added the step-by-step
Properties/Commercial routing (§3b) and changed the routine to **two runs a day** — morning + afternoon
(§4, §7.4). **Executed 2026-09-14:** **Holdings** added as a Google-WS secondary domain (no live mailbox),
MX cut over, two internal routing rules live (§3a); and **Properties/Commercial** live via the §3b
two-stage chain (`info@`/`irina@`/`commercial@` → `ops@fishboneproperties.co.uk` → the hub) — four rules,
both directions tested green. **Author:**
Claude, on behalf of
minda@fishboneconstruction.co.uk. **Type:** Plan / Output (dated snapshot; supersede with v2, never
edit in place). **Related:** `2026-09-12_Plan_AI-Workforce_v2.md` (Phase 0 access); the Peter
(`minda-ui/Peter`) and Eugene (`minda-ui/Eugene`) KBs; `CLAUDE.md` §5–6.

This plan is **agreed and being executed piecemeal** — **Construction, Holdings and Properties/Commercial
are live** (Holdings + Properties/Commercial 2026-09-14, §3a/§3b); **Amfa and Waste** await the owner's go
per source (§9). It supersedes the earlier "separate Properties routine" approach.

---

## 1. Objective & the governing constraint

Bring **every relevant Fishbone entity's business email to Peter** for daily triage. Peter's Gmail
connector authenticates as **one** account — `ops@fishboneconstruction.co.uk` — so the only mailbox a
routine can read is that one. Therefore **"route entity X to Peter" = forward X's business mail into
that mailbox.** This plan builds a single group agent inbox that **six** entities feed, with Peter
sorting each item to its owning company.

---

## 2. Target architecture

- **`ops@fishboneconstruction.co.uk` = the single group agent inbox ("the hub").** Six entities
  forward a copy in; Peter tags each item + ledger row by company `[FC] [FP] [FM] [FA] [FH] [FW]`
  (matched via `Delivered-To` + To/Cc/From, §3b header note).
- **One combined daily routine** ("Peter — group inbox triage + capture") reads the hub and handles
  all six — **replacing** the per-company routines. One inbox, one routine, no double-scan.

---

## 3. Routing table (locked)

Five sources are already on Google Workspace (forwarding is a Gmail setting). **Holdings is being
migrated off 1&1 / IONOS onto Google Workspace as a secondary domain inside Construction's tenant**
(owner decision, 2026-09-13) — so once migrated its mailbox lives in the same tenant as the hub and
routes internally; see §3a.

| Tag | Entity | Hosting | Forward into hub from | Mechanism | Status |
|---|---|---|---|---|---|
| `FC` | Construction | Google WS | info@ + minda@ + invoice@ (fishboneconstruction.co.uk) | Gmail | ✅ done |
| `FP` | Properties | Google WS | info@fishboneproperties.co.uk + irina@fishboneproperties.co.uk | Four routing rules — chain via `ops@fishboneproperties` → hub (**§3b**) | ✅ done 2026-09-14 |
| `FM` | Commercial | Google WS (inside Properties') | commercial@fishboneproperties.co.uk | Same chain (**§3b**) | ✅ done 2026-09-14 |
| `FA` | Amfa | Google WS (own; domain `amfa.uk`) | **emquires@amfa.uk** (registration typo — see §8) | Gmail | ⬜ |
| `FH` | Holdings | **1&1 domain → Google WS secondary** | info@fishboneholdings.co.uk | secondary domain + MX + 2 internal rules (**§3a**) | ✅ done 2026-09-14 |
| `FW` | Waste | Google WS | info@fishbonewaste.co.uk + sales@fishbonewaste.co.uk | Gmail | ⬜ dormant, low volume |
| `FS` | **SSAS** | 1&1 (no dedicated mailbox) | — | — | **EXCLUDED (§5)** |

Property vs Commercial share the `fishboneproperties.co.uk` domain but different mailboxes:
`info@`/`irina@` → `[FP]`, `commercial@` → `[FM]` — Peter distinguishes them by matching the mailbox
across `Delivered-To` + To/Cc/From (the two-hop chain in §3b stamps a fresh `Delivered-To` per hop).

### 3a. Holdings — added to Google WS as a secondary domain (owner, 2026-09-13; **executed 2026-09-14**)

**1&1 / IONOS is only the registrar/DNS host** for the Fishbone domains, and `fishboneholdings.co.uk` had
**no live mailbox** (confirmed 2026-09-14 — IONOS panel "Not active", parking IP, no website). So this was
**not** a mailbox migration: the domain stays registered at 1&1 and only its **DNS** was edited, adding it
to Construction's Google Workspace as a **secondary domain**.

**Done 2026-09-14, all five steps:** (1) added `fishboneholdings.co.uk` as a **secondary domain** in
Construction's Workspace and verified; (2) Google verification TXT already present in the IONOS DNS;
(3) provisioned `info@fishboneholdings.co.uk`; (4) **MX cut over to Google** + SPF/DKIM/DMARC (the IONOS
MX/DKIM/`_dmarc` records replaced with Google's, stale parking `A` dropped); (5) routed `info@` to the hub
`ops@fishboneconstruction.co.uk` with **two internal routing rules** — one keyed on envelope **recipient**
(catches received), one on envelope **sender** (catches sent) — because a single Google routing rule
**ANDs** its two envelope filters and so cannot match both directions at once. Both directions tested
green. No IMAP migration, no registrar change.

**Holdings was therefore not gated and is now live.** **SSAS stays on 1&1 and is excluded** (§5); its own
migration is a separate infra question, not needed for Peter routing.

### 3b. Properties + Commercial — two-stage routing-rule chain (owner, 2026-09-13; **executed 2026-09-14**)

Three Properties-tenant mailboxes — `info@`, `irina@`, `commercial@fishboneproperties.co.uk` — reach the
hub **both directions** (received *and* sent). All live in the **Properties Google Workspace** (Commercial
rides inside Properties' tenant), a different tenant from the Construction hub. Peter tags
`info@`/`irina@` → `[FP]`, `commercial@` → `[FM]` (header note below).

**Design: a two-stage chain, all Admin-console routing rules in the Properties tenant.** Stage 1
consolidates the three mailboxes into **`ops@fishboneproperties.co.uk`** (a single internal ops inbox — a
long-standing Fishbone Properties want, independent of Peter); Stage 2 routes that mailbox to the
Construction hub — one cross-tenant hop. Routing rules, not per-user forwards, so **sent** mail (the
evidence a task was actioned) is carried too.

**Executed 2026-09-14 as four rules** — two per stage, because a single Google rule **ANDs** its two
envelope filters and so cannot match both directions: one keyed on envelope **recipient** (received), one
on envelope **sender** (sent). Built in the **Properties** Admin console (a Properties super-admin), via
Apps → Google Workspace → Gmail → Routing → Add another rule; each rule's action is Modify message → Also
deliver to → Add more recipients:

- **Stage 1a (received):** affect Inbound + Internal-receiving; envelope-**recipient** regexp
  `^(info|irina|commercial)@fishboneproperties\.co\.uk$`; also deliver to `ops@fishboneproperties.co.uk`.
- **Stage 1b (sent):** affect Outbound + Internal-sending; envelope-**sender**, same regexp; also deliver
  to `ops@fishboneproperties.co.uk`.
- **Stage 2a (received):** affect Inbound + Internal-receiving; envelope-**recipient**
  `^ops@fishboneproperties\.co\.uk$`; also deliver to `ops@fishboneconstruction.co.uk`.
- **Stage 2b (sent):** affect Outbound + Internal-sending; envelope-**sender** `^ops@fishboneproperties\.co\.uk$`;
  also deliver to `ops@fishboneconstruction.co.uk`.

"Also deliver to" only *adds* a copy — the three inboxes still get their own mail; `ops@properties` gets
the aggregate. If the cross-tenant copy hits spam at the hub, allowlist `fishboneconstruction.co.uk` in
Properties' Gmail → Routing bypass (was not needed in practice). **Tested green both directions** (external
→ `commercial@` → `ops@properties` → hub; and `commercial@` → external → both ops mailboxes); the shared
regexp covers `info@`/`irina@` identically. A purely-internal message between two of the three may reach
`ops@properties` twice (sent + received rule) — harmless; Peter dedups on thread-id.

**Header note:** each hop prepends a `Delivered-To`, so at the hub a Properties message carries several
(`ops@construction`, `ops@properties`, and the original `info@`/`irina@`/`commercial@`). Peter's
combined-routine prompt matches the **Properties mailbox anywhere in the stacked `Delivered-To`, falling
back to To/Cc (received) / From (sent)** — never only the top `Delivered-To`. To be captured in an Eugene
runbook (`Runbook-Properties-Commercial-Routing-to-Hub.md`, four rules) as the record of the live setup.

---

## 4. The combined routine (design)

- **One prompt, run twice a day** — a **morning** check and an **afternoon** check (owner, 2026-09-13),
  replacing the separate Construction and Properties runs:
  - **Morning ~07:45 UK** — after every company's own 07:00 intake, so Peter sees the overnight/early
    mail once the KB intakes have taken their copy.
  - **Afternoon ~15:00 UK** — catches everything that arrived during the working day (invoices,
    replies, new enquiries) so nothing time-sensitive waits until the next morning.
  - Each run is **idempotent**: it dedups on thread-id / ledger row, so the afternoon run only picks up
    what the morning run did not already triage (no double-processing of the same message).
  - **Cron (UTC — shift at the 26 Oct 2026 UK clock change):** morning `45 6 * * *` (→ `45 7 * * *`
    after 26 Oct), afternoon `0 14 * * *` (→ `0 15 * * *` after 26 Oct). Implement as two schedule
    entries of the **same** combined prompt.
- **Sorts each message to its company by `Delivered-To`**, tags `[FX]`, and applies **per-company
  coordination**:
  - **Construction & Properties** each have their own `fishbone-daily-inbox-raw` KB routine (07:00)
    that writes their Wiki/Tasks — Peter is a **supplement** there (triage + draft + deadline +
    sent-mail-evidence only).
  - **Amfa, Waste, Holdings, Commercial** have **no** daily intake routine — Peter is the **only**
    triage; still read + draft + stage only, never writes into their KBs.
- Retains everything already built: invoice@ AP handling, outbound-as-evidence, capture hand-offs, the
  "changed bank details = fraud risk" flag.
- **Boundary unchanged:** read + draft only; never sends; never writes into any company KB (a §7a
  hand-off is done by the group DB / a human, never by Peter).

---

## 5. SSAS — excluded (owner, 2026-09-13)

SSAS is the group **pension scheme**, not a trading company, with **no dedicated domain/mailbox** — its
correspondence goes to **personal inboxes** (Peter must never read, charter §3) and is dominated by
**member personal + financial data** (administered by Empowered Pensions). High sensitivity, negligible
triage value → **excluded from the hub.** Its own **Fishbone SSAS KB** is its canonical home; the
corporate trustee (Empowered Trustees Ltd, 12291059) is already on Peter's CH watch (SRC-9). Forward a
one-off SSAS email by hand if ever needed.

---

## 6. Governance & data protection

- **Access is restricted (owner, 2026-09-13):** the hub `ops@fishboneconstruction.co.uk` is reachable
  by **only Minda and Peter** (the scoped, 2FA agent account) — no third party and no other staff can
  read it. That is what makes co-locating all six companies' mail in one mailbox **safe**: the mixing
  is physical only; access is not widened.
- **Cross-company mixing:** all mail physically lands in **Construction's** Workspace mailbox;
  `Delivered-To` keeps entities logically separate. Amfa (sale-ready, OI-13) noted as a future
  carve-out. Dormant Waste routed for completeness.
- **Peter never writes into any company KB** — a §7a `Raw/` hand-off is done by the group DB or a
  human, not by Peter.
- **Vault / evidence retention** is per **originating** mailbox, not the hub (Construction's live;
  others TBC).

---

## 7. Locked decisions (owner, 2026-09-13)

1. **Single hub inbox** (`ops@fishboneconstruction.co.uk`) **+ one combined Peter routine** — agreed.
2. **Route six entities:** `FC, FP, FM, FA, FH, FW`. **SSAS excluded.**
3. **Addresses** as in §3.
4. **Schedule:** combined routine runs **twice daily** — morning ~07:45 UK + afternoon ~15:00 UK,
   idempotent (§4).
5. **Holdings:** add `fishboneholdings.co.uk` to Construction's Workspace as a secondary domain
   (registrar stays at 1&1; no live mailbox to migrate), then route internally (§3a) — **done, live 2026-09-14.**
6. **Properties/Commercial:** two-stage routing-rule chain via `ops@fishboneproperties.co.uk` (§3b) — **done, live 2026-09-14.**
7. **Hub access** stays restricted to Minda + Peter only (§6).

---

## 8. To verify at setup (does not block locking the plan)

- **Amfa mailbox — resolved:** the live mailbox is **`emquires@amfa.uk`** — a Google Workspace
  **registration typo** ("e**m**quires", not "enquiries"), confirmed by the owner. We route from that
  exact mailbox, so Peter works as-is. **Separate IT fix (Eugene/Minda, Admin console):** mail to the
  *correct* `enquiries@amfa.uk` currently reaches nothing, so Amfa is **silently losing enquiries** —
  add `enquiries@`/`enquires@` as **aliases** on the same mailbox. Tracked as an Eugene infra item.
- **Holdings — done (§3a).** Executed 2026-09-14 (secondary domain + MX cutover + two internal routing
  rules, both directions tested green); no outstanding prerequisites.

---

## 9. Execution sequence (once the owner says go — nothing done yet)

- **A.** Eugene writes the forwarding runbook for the remaining Google-Workspace sources (**Amfa, Waste** —
  Construction, Holdings and Properties/Commercial done); the live Properties/Commercial four-rule setup is
  recorded in **§3b** and to be captured as a runbook.
- **B.** Minda applies the Amfa + Waste forwards; test each with a live message; confirm it lands in the
  hub with the correct `Delivered-To`.
- **C.** Update Peter's charter §2a + add SRC entries for the forwarded sources (Properties, Commercial,
  Holdings live; Amfa, Waste to come); write the single combined routine prompt.
- **D.** Create the combined routine in the `claude.ai/code/routines` form (Gmail + Drive +
  Smartsheet); test-fire; verify per-company sorting.
- **E.** Retire the superseded per-company routines (Construction's live one folds into the combined
  run).

---

## 10. Done when

All six entities forward into the hub; a test from each is triaged under the correct `[FX]` tag; the
single combined routine is live; the old per-company routines are retired; Peter's charter/SRC/ledger
reflect the group inbox.

---

*Plan v2, Fishbone Group. Agreed 2026-09-13; owner decisions locked (§7). **Executed 2026-09-14:**
Holdings (secondary domain + MX cutover + two internal rules, §3a) and Properties/Commercial (§3b
two-stage chain, four rules) both live, both directions tested. See the group `change-log/`.*
