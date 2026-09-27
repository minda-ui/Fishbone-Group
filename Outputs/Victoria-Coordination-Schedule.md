# Victoria — Coordination Schedule (standing, always-current)

**Type:** Outputs / standing (maintained by Victoria's two daily routines; not a dated snapshot)
**Owner seat:** Victoria — CEO's Assistant / AI Workforce Coordinator (on Minda's behalf)
**Created:** 2026-09-20 · **Last refreshed:** 2026-09-27 (afternoon sweep)
**Governance:** group `CLAUDE.md` §6a — Victoria reads, drafts, proposes, coordinates and may append to the
shared registers and the AI Workforce Hub; sends nothing outward, makes no payment/commitment, creates/fires
no routine, and never resolves an ambiguity by guessing (surface it to Minda).

Charter re-read fresh this run (`CHARTER.md` core + `Charter-Rules.md` Rules A–C, both re-downloaded live from
Drive, folder `1X0R91ej11K6JDcD0ZjT925O5dCX6Q4yn`). Every claim below is checked against a direct read of the
Hub sheets and Drive this run (afternoon), not against this morning's digest or a Hub row's own account of
itself (Rule C) — **one exception this run: the Gmail connector needs re-authentication (HL-0056) and could
not be reached, so ops@ could not be checked directly; see §6.**

**Headline: a very active afternoon — 19 new Hub rows (AWT-0117–AWT-0135), a Request-Inbox capability rolled
out estate-wide, an old discrepancy closed, and Minda's M365 cancellation now working through impact-checks —
but the Gmail connector is down (HL-0056, Critical) and HL-0051/OI-18 is unresolved a sixth sweep.**
Alex ran the Estate Mail-Triage Index through its 5th–8th dry-run passes (AWT-0110/0111/0114/0135) and
delivered the new **Raw/Request-Inbox** capability as canonical `Wiki/Process-Request-Inbox.md` v1.0,
broadcasting routing rows to all eight other seats (AWT-0117, 0124–0131) — Peter and Helen have already
acknowledged theirs; Anna's has no unattended-receipt mechanism yet (flagged, not fixed). Alex also refreshed
the group KB's own `current-state.md` with a catch-up entry covering three days of unlogged coordination work
(AWT-0119) and closed a year-old-feeling financial-document discrepancy (AWT-0076). Peter stood down three
account-security items Minda confirmed benign (AWT-0120). **New and bigger: Minda is cancelling the M365
subscription** — Alex confirmed none of his own routines depend on it but flagged that Peter's 1pm inbox
routine and Minda's own 6-month check-in routine both do (AWT-0123, Done); Eugene's estate-wide impact-check
(AWT-0121, High) and Rachel's own dependency note (AWT-0122) are both still Open. Helen requested Google
Ads/GTM provisioning via Eugene (AWT-0132, new). Two documentation gaps surfaced in Eugene's and Helen's own
charters — each has a live, previously-unrecorded "Task Check-in" routine, and Eugene's rewrites his own
CLAUDE.md and pushes git unattended (AWT-0133/0134, both Open). **New Critical finding: HL-0056 — the Gmail
connector needs re-authentication**, broken since ~13:00 UK today; it blocks all of Peter's inbox-triage beats
and blocked this sweep's own ops@ check. **HL-0051/OI-18 re-checked directly a sixth time: the group's own
`open-issues.md` (id `19eKiZ5sh-QundSbvKhQxlMzTK1DPWHws`) is still exactly 38,077 bytes, unchanged since
2026-09-21T10:40Z.** 38 Glebe Road remains unconfirmed either way. Full digest:
`Outputs/2026-09-27_Digest_Victoria-PM_v1.md`.

---

## 1. The two routines

| Routine | Time (UK) | Cron (UTC, BST now) | What it does |
|---|---|---|---|
| **Victoria — Morning Coordination Sweep** | 08:00 | `0 7 * * *` (BST) → `0 8 * * *` at the Oct clock change | Live. |
| **Victoria — Afternoon Coordination Sweep** | 15:00 | `0 14 * * *` (BST) → `0 15 * * *` at the Oct clock change | Live. |

Crons are UTC — shift both by one hour at the UK clock change (25 Oct 2026: BST→GMT). Routines are created
by Minda (Victoria cannot create or fire them, §6a). **Note (HL-0054, unresolved):** this routine's own
paste-in prompt still carries a stale standing-points list — confirmed stale again this run (Rule C); every
claim in this schedule is drawn from live state, not from that list. Still needs a Minda edit via the
routines form.

---

## 2. Desk vs delegated

### Victoria's desk

- **New this run — HL-0056 (Peter, Critical) — Gmail connector needs re-authentication.** Broke ~13:00 UK
  today (session-level OAuth/token failure); confirmed independently this run when Victoria's own Gmail
  search also failed with "needs you to sign in again." Blocks Peter's inbox triage/capture/labelling beats
  entirely and blocked this sweep's own step-3 check of ops@ for new Alexey/adviser mail. **Needs Minda to
  re-authorize the Gmail connector via claude.ai connector settings** — every firing until then (15:00, 17:00
  UK today onward) fails the same way (§6).
- **38 Glebe Road remortgage completion — still unconfirmed, could not be re-checked this run** (Gmail down).
  Told to complete Fri 25 Sep; still nobody's confirmed either way as of Sunday. Still the single most
  time-sensitive item on the desk once Gmail is back (§6).
- **HL-0051 — unresolved a sixth consecutive sweep.** Group `open-issues.md` re-checked directly this run:
  still 38,077 bytes, unchanged since 2026-09-21T10:40Z. No OI-18 row. Restating rather than dropping.
- **New this run — HL-0056 aside, no new adviser email could be checked (Gmail down).** Raw folders (Victoria's
  own and the group's) checked directly via Drive — both empty of anything new since this morning.
- **New this run — Request-Inbox capability now estate-wide (AWT-0117/0124–0131), Alex's work, tracking only.**
  Nothing for Victoria to action; noted so the schedule reflects the new estate mechanism.
- **New this run — M365 cancellation in progress (Minda).** Tracking only: Eugene's impact-check (AWT-0121,
  High, Open) and Rachel's own note (AWT-0122, Open) are the live pieces; Alex's own check (AWT-0123) is Done
  and found Peter's 1pm inbox routine and Minda's own 6-month check-in routine depend on the connector.
  **Possible read-across worth flagging to Minda: AWT-0090 (Eugene, M365 Entra scope revoke, due Tue 29 Sep)
  may be overtaken by the cancellation itself** — worth Minda/Eugene confirming rather than working both in
  parallel.
- **HL-0054 (Victoria, Low) — this routine's own prompt is stale.** Unchanged; still needs a Minda edit via
  the routines form, no rush.
- **AWT-0109 (Rachel, due tomorrow Mon 28 Sep)** — unchanged, still needs Minda/RMT's view on the FBW £30,000
  classification so Rachel can close the loop with Alexey on time.
- **AWT-0099 / AWT-0100 (Minda, Properties routine steps)** — still unmoved, now five days since AWT-0099 was
  raised (2026-09-24).
- **AWT-0102 (Alexey QuickBooks invite for FB Waste)** — still In Progress; still needs a human with QBO admin
  rights to send the invite.
- **AWT-0101 (Eugene/Alex cross-login audit)** — still Blocked, parked pending Minda's own tests. Unchanged.
- **OI-13** — Amfa workshop reorg research. Unchanged, Open.
- **Master-index housekeeping** — OI-15 (index stale), OI-16 (three stale `Org-*` articles). Both still Open.
- These two routines and the schedule itself.

### Delegated — track only (via the Hub)

- **Alex** — closed AWT-0076, AWT-0117, AWT-0119, AWT-0123 today; running the Estate Mail-Triage Index
  (now 8 runs) and the new Request-Inbox rollout. AWT-0098 (HL-0051) still not actually resolved, sixth
  sweep.
- **Eugene** — AWT-0090 (In Progress, due Tue 29 Sep — see M365-cancellation note above), AWT-0101 (Blocked,
  parked), AWT-0112 (Nadia's board mirror, In Progress). **New: AWT-0118** (Drive/git master-file
  reconciliation), **AWT-0121** (M365 impact-check, High), **AWT-0125** (Request-Inbox IT routing),
  **AWT-0132** (Google Ads/GTM provisioning for Helen), **AWT-0133** (own Task Check-in routine
  documentation gap).
- **Peter** — **New: HL-0056** (Gmail connector down, Critical — his own beats blocked), AWT-0120 (Done —
  three security items stood down), AWT-0124 (Done — Request-Inbox acknowledged). HL-0055 now In Progress
  with corroborating findings.
- **Minda** — AWT-0107/0108/0110/0111/0114/0135 (Mail-Triage Index dry-run — awaiting tick + rulings).
  AWT-0099/0100 unchanged. AWT-0074 unchanged. **38 Glebe Road (AWT-0108) still overdue.**
- **Rachel** — AWT-0109 (due tomorrow), AWT-0113 (fold policy v1.5), AWT-0115/0116 (two Alexey document
  requests), **new AWT-0122** (M365 dependency note), AWT-0128 (Request-Inbox finance routing). AWT-0070,
  0073, 0094, 0091/0097 unchanged. AWT-0102 In Progress.
- **Helen** — AWT-0126 (Done — Request-Inbox acknowledged). **New: AWT-0132** (requested Google Ads/GTM
  access), **AWT-0134** (own Task Check-in routine documentation gap).
- **Darius** — AWT-0089 (Open, Low, deferred). **New: AWT-0127** (Request-Inbox workshop routing). Unchanged
  otherwise.
- **Anna** — AWT-0077 (Open, unchanged). **New: AWT-0130** (Request-Inbox construction routing — flagged that
  her charter has no unattended-receipt mechanism yet).
- **John** — Properties intake pipeline, live & attended; still gated on AWT-0100. **New: AWT-0129**
  (Request-Inbox properties routing).
- **Nadia** — **New: AWT-0131** (Request-Inbox amfa routing, and newly added to the Hub's Assigned-to
  picklist).

---

## 3. Fixed-deadline calendar (blocked onto days)

| Day | Blocked item | Whose action |
|---|---|---|
| **Today (overdue, urgent)** | Gmail connector re-authentication (HL-0056) — blocks Peter entirely and this routine's own adviser-mail check. | Minda (claude.ai connector settings) |
| **Today (overdue, urgent)** | Confirm whether the 38 Glebe Road remortgage actually completed. Now could not even be re-checked this run (Gmail down). | Minda (check with Irina/solicitor) |
| **Every sweep until cleared** | HL-0051 / OI-18 — sixth sweep unresolved. | Minda (nudge Alex, or write the OI-18 row directly) |
| **Mon 28 Sep** | Rachel's answer to Alexey on the FBW £30,000 classification (AWT-0109). | Rachel → Minda first |
| **Tue 29 Sep** | AWT-0090 M365 Entra revoke due — check against the M365 cancellation before acting twice. | Minda/Eugene |
| **Wed 30 Sep** | Alexey offset — respond/confirm. | Minda (Rachel drafted) |

---

## 4. Weekly rhythm (for the non-deadline work)

| Day | Focus |
|---|---|
| **Mon** | Master-index & Open-Issues housekeeping (OI-15, OI-16) |
| **Tue** | Adviser / finance thread status (Alexey threads) |
| **Wed** | Properties→Group migration stage check (John cutover readiness) |
| **Thu** | Document-system health (Doc Register, Change Requests queue) |
| **Fri** | Strategic / backlog + short weekly digest to Minda |

---

## 5. What moved since the last sweep (2026-09-27 morning → afternoon)

Verified by direct Smartsheet/Drive read this run (Rule C); Gmail could not be reached (HL-0056).

**New since this morning:**
- **AWT-0076** (Alex) — Done. Old FP0000140/FH0000020/FW0000003 Financial Archive discrepancy closed,
  verified in Drive.
- **AWT-0117** (Alex) — Done. Request-Inbox spec published as canonical `Wiki/Process-Request-Inbox.md` v1.0.
- **AWT-0118** (Eugene) — Open. Reconcile group KB master files, Drive vs git drift.
- **AWT-0119** (Alex) — Done. Group KB `current-state.md` catch-up refresh (2026-09-24 to 09-27).
- **AWT-0120** (Peter) — Done. Three account-security items confirmed benign by Minda, stood down.
- **AWT-0121** (Eugene, High) — Open. M365 cancellation impact-check.
- **AWT-0122** (Rachel) — Open. M365 heads-up + OneDrive/SRC-32 record for later reconciliation.
- **AWT-0123** (Alex) — Done. No Alex/Mail-Triage routine depends on M365; flagged Peter's 1pm routine and
  Minda's 6-month check-in routine as dependents.
- **AWT-0124** (Peter) — Done. Request-Inbox acknowledged.
- **AWT-0125** (Eugene) — Open. Request-Inbox IT routing.
- **AWT-0126** (Helen) — Done. Request-Inbox acknowledged.
- **AWT-0127–0131** (Darius, Rachel, John, Anna, Nadia) — Open. Request-Inbox routing broadcast; Anna's
  flagged as having no unattended-receipt mechanism yet; Nadia newly added to the Assigned-to picklist.
- **AWT-0132** (Eugene, Medium) — Open. Google Ads/GTM provisioning requested by Helen.
- **AWT-0133 / AWT-0134** (Eugene, Helen) — Open. Own "Task Check-in" routines found undocumented in each
  seat's own charter; Eugene's rewrites his own CLAUDE.md and pushes git unattended.
- **AWT-0135** (Minda) — Open. Estate Mail-Triage Index, eighth dry-run pass.
- **HL-0056** (Peter, Critical) — New. Gmail connector needs re-authentication; broke ~13:00 UK; confirmed
  estate-wide (this session's own Gmail call failed identically).
- **HL-0055** — Upgraded Open → In Progress; a full backstop sweep found 8 further unlabelled items,
  confirming the gap is systemic.

**Confirmed unchanged / still at risk (re-verified this run, not assumed):**
- **HL-0051** — still Open; group `open-issues.md` still byte-identical to its 2026-09-21 state, sixth check.
- **AWT-0108 (38 Glebe Road)** — still Open, still overdue; could not be independently re-checked this run
  (Gmail down).
- **AWT-0099 / AWT-0100** (Minda) — still unmoved, five days now.
- **AWT-0101** (Eugene) — still Blocked, parked pending Minda.
- Victoria's own Raw and the group Raw — both checked directly, empty of anything new.
- No new Document System Change Request since FS-CR-0001 (2026-09-26) — Change Requests sheet re-checked,
  still 5 rows.

---

## 6. Today's ask to Minda

1. **Re-authorize the Gmail connector (HL-0056, new, Critical).** Broken since ~13:00 UK today; blocks
   Peter's inbox triage entirely and blocked this sweep's own check of ops@ for new adviser mail. Via
   claude.ai connector settings.
2. **Check whether the 38 Glebe Road remortgage actually completed.** Still unconfirmed; could not even be
   re-checked this run because of the Gmail outage above.
3. **HL-0051 — unresolved for a sixth consecutive sweep.** A direct nudge to Alex, or writing the OI-18 row
   into the group `open-issues.md` yourself, would close this out.
4. **M365 cancellation — confirm before Eugene's impact-check lands** whether to hold, since Peter's 1pm
   inbox routine and your own 6-month check-in routine both depend on the connector (AWT-0123's finding).
   Also worth checking whether AWT-0090 (Eugene, Entra revoke, due Tue) is superseded by the cancellation
   itself, so the same work isn't done twice.
5. **Two Task Check-in routine documentation gaps (AWT-0133 Eugene, AWT-0134 Helen)** — for your awareness;
   both are asking to fold an already-live routine into their own governed files, no behaviour change.
6. **AWT-0132 — Helen's Google Ads/GTM access request**, routed to Eugene; FYI only unless you'd rather
   route it differently.
7. **AWT-0109 due tomorrow, Mon 28 Sep** — Rachel needs your (and RMT's) view on the FBW £30,000
   classification.
8. **Two Properties-routine steps, unmoved for five days now** (AWT-0099/AWT-0100, both on
   `ops@fishboneproperties.co.uk`).
9. **AWT-0102 — the QuickBooks invite for Alexey (FB Waste) still needs sending.**
10. **Standing, unchanged:** AWT-0091/0097 (two other Alexey emails, your call); AWT-0101 (parked pending
    your tests); HL-0054 (Low, no rush — this routine's own prompt needs a refresh next time you're in the
    routines form).
11. **Next fixed dates:** Mon 28 Sep (AWT-0109), Tue 29 Sep (AWT-0090, check against M365 cancellation),
    Wed 30 Sep (Alexey offset).

---

## Appendix — routine prompts to paste into the routines form

*Unchanged since 2026-09-20; see an earlier archived version of this file for the full text. See HL-0054
above regarding the step-4 standing-points list within these prompts.*

---

*Standing coordination schedule for Victoria, the Fishbone Group CEO's Assistant. This sweep (2026-09-27
afternoon) found a very active afternoon of estate work (19 new Hub rows, Request-Inbox capability rolled out
estate-wide, an old discrepancy closed) set against a new Critical finding — the Gmail connector needs
re-authentication (HL-0056), which blocked this run's own adviser-mail check — and HL-0051 unresolved for a
sixth consecutive sweep. Each claim checked against the live system it concerns, not assumed.*
