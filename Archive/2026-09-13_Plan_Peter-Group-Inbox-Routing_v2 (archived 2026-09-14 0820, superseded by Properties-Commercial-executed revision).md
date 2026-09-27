# Fishbone Group — Plan: Peter Group Inbox (route all trading/holding entities to Peter) · v2

**Status:** Agreed 2026-09-13 (owner decisions locked, §7). **v2 (2026-09-13):** added the step-by-step
Properties/Commercial routing (§3b) and changed the routine to **two runs a day** — morning + afternoon
(§4, §7.4). **Revised 2026-09-14:** §3b Properties/Commercial routing locked as a **two-stage chain,
both stages Admin-console routing rules** — `info@`/`irina@`/`commercial@` consolidate into
`ops@fishboneproperties.co.uk` (Stage 1), which then routes to the hub (Stage 2); one cross-tenant hop.
Also: **Holdings executed 2026-09-14** — added as a Google-WS secondary domain (no live mailbox), MX cut over, two internal routing rules live (§3a). **Author:**
Claude, on behalf of
minda@fishboneconstruction.co.uk. **Type:** Plan / Output (dated snapshot; supersede with v2, never
edit in place). **Related:** `2026-09-12_Plan_AI-Workforce_v2.md` (Phase 0 access); the Peter
(`minda-ui/Peter`) and Eugene (`minda-ui/Eugene`) KBs; `CLAUDE.md` §5–6.

This plan is **agreed and being executed piecemeal** — Construction and **Holdings are live** (Holdings
2026-09-14, §3a); Properties/Commercial, Amfa and Waste await the owner's go per source (§9). It
supersedes the earlier "separate Properties routine" approach.

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
| `FP` | Properties | Google WS | info@fishboneproperties.co.uk + irina@fishboneproperties.co.uk | Two routing rules — chain via `ops@fishboneproperties` → hub (**§3b**) | ◑ Stage 2 chain half-built |
| `FM` | Commercial | Google WS (inside Properties') | commercial@fishboneproperties.co.uk | Same chain (Stage 1 rule, **§3b**) | ⬜ |
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

### 3b. Properties + Commercial — step-by-step routing (owner asked, 2026-09-13)

Three Properties-tenant mailboxes must reach the hub, **both directions** (received *and* sent):
`info@`, `irina@`, `commercial@fishboneproperties.co.uk`. All three live in the **Properties Google
Workspace** (Commercial rides inside Properties' tenant), a **different tenant** from the Construction
hub. Peter tags `info@`/`irina@` → `[FP]`, `commercial@` → `[FM]` (matching rule in the header note at
the end).

**Design (owner, 2026-09-14): a two-stage chain, both stages Admin-console routing rules.**
`info@`/`irina@`/`commercial@` first consolidate into **`ops@fishboneproperties.co.uk`** inside the
Properties tenant — a single internal ops mailbox aggregating all three (a long-standing Fishbone
Properties want, useful to their own people independently of Peter) — and that mailbox then crosses to
the Construction hub: exactly **one** cross-tenant hop, everything else internal. Both stages are
**routing rules** (not per-user Gmail forwards), because Gmail's per-user "forward a copy" carries
INBOUND only and would drop each mailbox's **sent** mail — the evidence a task was actioned.

#### Stage 1 — consolidate inside the Properties tenant → `ops@fishboneproperties.co.uk`

In the **Properties** Workspace Admin console (admin.google.com, a Properties super-admin — *not*
Construction's), mirroring Construction's live "Ops routing":

1. **Apps → Google Workspace → Gmail → Routing → Add another rule.**
2. Name it **`Ops routing → Properties ops`**.
3. **Email messages to affect:** tick **Outbound**, **Internal – sending**, **Inbound**,
   **Internal – receiving** (all four = both directions).
4. **Do the following → Add more recipients → Add → Advanced.**
5. **Envelope filter → Only affect specific envelope senders → matches this pattern (regexp):**
   `^(info|irina|commercial)@fishboneproperties\.co\.uk$` (limits the rule to the three mailboxes; on
   the outbound side keys on the *sender* so only their sent mail is copied).
6. **Also deliver to → Add more recipients →** `ops@fishboneproperties.co.uk`. ("Also deliver to"
   **adds** a copy — `info@`/`irina@`/`commercial@` still land in their own inboxes; `ops@properties`
   gets the aggregated copy, sent and received.)
7. Do not rewrite To/From; save.

#### Stage 2 — cross the tenant boundary `ops@fishboneproperties.co.uk` → `ops@fishboneconstruction.co.uk`

Also a **routing rule** (owner, 2026-09-14), so `ops@properties`' own sent mail is carried across too.
Still in the **Properties** Admin console:

1. **Gmail → Routing → Add another rule**, name it **`Ops properties → Peter hub`**.
2. **Affect:** Outbound + Internal-sending + Inbound + Internal-receiving.
3. **Envelope filter → specific envelope senders → regexp:** `^ops@fishboneproperties\.co\.uk$`.
4. **Also deliver to →** `ops@fishboneconstruction.co.uk`.
5. **Cross-tenant spam/relay:** if the copy lands in spam at the hub, add `fishboneconstruction.co.uk`
   (or the specific hub address) to Properties' **Gmail → Routing → allowed senders / bypass**. This is
   the one hop that leaves the Properties tenant.

*(Fallback if you'd rather not filter inbound in Stage 1: a per-mailbox Gmail "forward a copy" into
`ops@properties` — but it drops sent mail, so the Stage 1 rule is preferred.)*

#### Verify (each address, both directions)

- **Received:** send a test *to* `info@`, `irina@`, `commercial@` in turn → each must reach
  `ops@fishboneproperties.co.uk` **and then** `ops@fishboneconstruction.co.uk`, still identifiable as
  that address (in `Delivered-To`/To/Cc).
- **Sent:** *from* each of the three, send a test to an external address → the copy must land in
  `ops@properties` and then the hub (proves both routing rules' sent-mail halves).
- **Chain itself:** a test sent straight *to* `ops@fishboneproperties.co.uk` must reach the hub
  (proves Stage 2).
- Confirm the hub still shows **no personal mail** (access is Minda + Peter only, §6).

**Header note:** each delivery hop prepends its own `Delivered-To`, so at the hub a Properties message
carries several (`ops@construction`, `ops@properties`, and the original `info@`/`irina@`/`commercial@`).
Peter's combined-routine prompt matches the **Properties mailbox anywhere in the stacked `Delivered-To`,
falling back to To/Cc on received mail and From on sent mail** — never only the top `Delivered-To`.

Filed as an **Eugene runbook** at execution time (`Runbook-Properties-Commercial-Routing-to-Hub.md`,
two routing rules); Minda executes every console step, Eugene/Peter verify read-only.

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
6. **Properties/Commercial:** two-stage routing-rule chain via `ops@fishboneproperties.co.uk` (§3b).
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

- **A.** Eugene writes the forwarding runbook for the remaining Google-Workspace sources (Properties,
  Commercial, Amfa, Waste — Construction and Holdings done); the **Properties/Commercial** steps are
  drafted in **§3b** (two-stage routing-rule chain via `ops@fishboneproperties.co.uk`).
- **B.** Minda applies the forwards/rules; test each with a live message; confirm it lands in the hub
  with the correct `Delivered-To`.
- **C.** Update Peter's charter §2a + add SRC entries for the forwarded sources (Properties,
  Commercial, Amfa, Holdings, Waste); write the single combined routine prompt.
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

*Plan v2, Fishbone Group. Agreed 2026-09-13; owner decisions locked (§7). Revised 2026-09-14: §3b as a
two-stage routing-rule chain via `ops@fishboneproperties.co.uk`; **Holdings executed 2026-09-14** —
secondary domain + MX cutover + two internal routing rules, both directions tested (§3a).
See the group `change-log/`.*
