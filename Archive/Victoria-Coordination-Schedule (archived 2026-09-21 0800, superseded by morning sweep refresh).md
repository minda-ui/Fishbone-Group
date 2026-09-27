# Victoria — Coordination Schedule (standing, always-current)

**Type:** Outputs / standing (maintained by Victoria's two daily routines; not a dated snapshot)
**Owner seat:** Victoria — CEO's Assistant / AI Workforce Coordinator (on Minda's behalf)
**Created:** 2026-09-20 · **Last refreshed:** 2026-09-20 (first cut)
**Governance:** group `CLAUDE.md` §6a — Victoria reads, drafts, proposes, coordinates and may append to the
shared registers and the AI Workforce Hub; sends nothing outward, makes no payment/commitment, creates/fires
no routine, and never resolves an ambiguity by guessing (surface it to Minda).

This is the **list of record** Victoria's two daily coordination routines run against: the morning sweep checks
what was done and what's new against this file; the afternoon sweep does the same again and tees up tomorrow.
Built from `2026-09-20_Outstanding-Items-Consolidated_v1.md`.

---

## 1. The two routines (to be created by Minda via the routines form)

| Routine | Time (UK) | Cron (UTC, BST now) | What it does |
|---|---|---|---|
| **Victoria — Morning Coordination Sweep** | 08:00 | `0 7 * * *` (BST) → `0 8 * * *` at the Oct clock change | After John's 07:00 intake run. Checks what was done since the last sweep, catches new items (Hub/OIs/Raw/adviser inbox), flags today's deadlines, updates this file, writes an AM digest. |
| **Victoria — Afternoon Coordination Sweep** | 15:00 | `0 14 * * *` (BST) → `0 15 * * *` at the Oct clock change | Same resolution: re-checks progress against the morning digest, catches midday arrivals, flags slippage, tees up tomorrow, writes a PM digest. |

Prompts to paste into the form are in the **Appendix**. Crons are UTC — shift both by one hour at the UK
clock change (25 Oct 2026: BST→GMT), per the group routine lesson. Routines are created by Minda (Victoria
cannot create or fire them, §6a).

---

## 2. Desk vs delegated

### Victoria's desk (do / prepare myself)
- **Waste business-rates decision-prep** (OI-14) — assemble the facts so Minda can act (pay / contact council). **OVERDUE.**
- **Alexey offset decision-prep** (30 Sep) — review Rachel's sandbox draft, put the recommendation to Minda for her send.
- **OI-13 — Amfa workshop reorg** research (machines → Holdings, lease to Amfa; pre-sale asset protection).
- **AWT-0030 — Landbay facility page** in the Loans KB (3 Oct).
- **Master-index housekeeping** — OI-15 (index stale: Loans Wiki retired, house-rules doc, Routines programme), OI-16 (three stale `Org-*` articles). A reviewed session.
- **These two routines** and the schedule itself.

### Delegated — track only (via the Hub)
- **Alex** — AWT-0028 (file 3 FY2023 PDFs, 26 Sep), AWT-0034 (carry finance-doc rulings into shared records; **Part A now UNBLOCKED — v1.4 shipped 2026-09-20**), AWT-0036 (Raw/-amendment convention), AWT-0039 (email-process index entry, 27 Sep).
- **Peter** — AWT-0016 (FY2023 accounts parent row, done bar 0028).
- **Helen** — AWT-0033 (house-style, In Progress), AWT-0038 (team email signatures, Open).
- **John** — Properties intake pipeline, live & attended (daily 07:00 UK); Victoria reviews/sends his drafts.
- **Rachel** — Alexey sandbox drafts + FY2025 reconciliation (three new adviser emails routed to her 2026-09-20 evening); awaiting Minda's sends/decisions.

---

## 3. Fixed-deadline calendar (blocked onto days)

| Day | Blocked item | Whose action |
|---|---|---|
| **Every sweep until cleared** | **Waste rates £3,042.33 (OI-14) — OVERDUE**, liability order 21/08/26 | Minda / RMT |
| **Fri 25 Sep** (pre-deadline nudge) | Confirm AWT-0028 / 0016 / 0034 on track for tomorrow; 26–27 Sep fall on the weekend | Victoria → Alex/Peter |
| **Sat 26 Sep** | AWT-0028, AWT-0016, AWT-0034 due | Alex / Peter |
| **Sun 27 Sep** | AWT-0039 (email-process index entry) due | Alex |
| **Tue 29 Sep** (pre-deadline nudge) | Alexey offset — final review of Rachel's draft, ready for Minda's send | Victoria → Minda |
| **Wed 30 Sep** | **Alexey offset — respond/confirm** | Minda (Rachel drafted) |
| **Fri 2 Oct** (pre-deadline nudge) | Landbay page on track for 3 Oct | Victoria |
| **Sat 3 Oct** | AWT-0030 — Landbay facility page | Victoria |

Weekends: 26/27 Sep and 3 Oct fall on Sat/Sun, so the routine raises the nudge on the **Friday before**.

---

## 4. Weekly rhythm (for the non-deadline work)

| Day | Focus (in addition to the daily deadline + Hub done/new reconciliation both sweeps do) |
|---|---|
| **Mon** | Master-index & Open-Issues housekeeping (OI-15, OI-16 refresh check) |
| **Tue** | Adviser / finance thread status (Alexey threads, Rachel's drafts and reconciliation) |
| **Wed** | Properties→Group migration stage check (John cutover readiness, stages 2c→5) |
| **Thu** | Document-system health (Doc Register, Change Requests queue, register drift) |
| **Fri** | Strategic / backlog (§E items) + a short **weekly digest** to Minda |

---

## 5. Live outstanding-items list

*(Reconciled 2026-09-20 evening. FG-CR-0001 → v1.4 is now DONE; AWT-0034 Part A unblocked.)*

**A. Deadlines** — Waste rates (OVERDUE, Minda); Alexey offset (30 Sep, Minda/Rachel); AWT-0028/0016/0034 (26 Sep, Alex/Peter); AWT-0039 (27 Sep, Alex); AWT-0030 Landbay page (3 Oct, Victoria).
**B. Needs Minda** — Alexey's other replies (year-end simplified + ITC matrix now in, routed to Rachel; intercompany balance; accounts to RMT); OI-13 Amfa reorg; Waste dormancy confirmation.
**C. In flight (delegated)** — AWT-0033/0038 (Helen), AWT-0036/0040 (Alex), John (Properties intake), Rachel (Alexey drafts + reconciliation).
**D. Housekeeping** — OI-15 (index stale), OI-16 (stale Org-* articles), open/provisional lessons (HL-0025).
**E. Strategic** — Properties→Group migration stages 2c–5; Peter document-writer expansion; routines not yet created (Quarterly sweep, Group lending monitor).

**Done since the list was pulled:** FG-CR-0001 → policy **v1.4** shipped and Accepted (2026-09-20); Victoria CHARTER §5 Hub Coordination Standard folded in; Alexey's three 2026-09-20 evening emails routed to Rachel.

---

## Appendix — routine prompts to paste into the routines form

*Each is self-contained (a routine starts with no memory). Create both at `claude.ai/code/routines` with the
**Google Drive + Smartsheet + Gmail (read)** connectors. Victoria cannot create them (§6a).*

### A1. Victoria — Morning Coordination Sweep  (UK 08:00; cron `0 7 * * *` UTC while BST)

```
You are Victoria, the Fishbone Group's CEO's Assistant / AI Workforce Coordinator, running your MORNING
coordination sweep on Minda's behalf. Charter: the "Victoria - CEO's Assistant" Drive folder, CHARTER.md.
Working home: the Fishbone Group KB. Governance is the group CLAUDE.md section 6a — you read, draft, propose,
coordinate, and may append to the shared group registers and the AI Workforce Hub, but you send nothing
outward, make no payment or commitment, create or fire no routine, write to no system of record beyond the
6a exceptions, and never resolve an ambiguity by guessing (surface it to Minda). Byte-verify every Drive
write (uploaded fileSize == local bytes; zero U+FFFD) and use archive-then-recreate; never trash.

Do this, in order:
1. READ your list of record: Outputs/Victoria-Coordination-Schedule.md (Drive Outputs folder
   1jrOGx1lqGfTHKkzUcM8ce__tOGsqPlEp). It holds the desk-vs-delegated split, the fixed-deadline calendar,
   the weekly rhythm, and the live outstanding-items list.
2. CHECK WHAT WAS DONE since the last sweep. Read the AI Workforce Hub Tasks & Requests sheet
   8860839228606340: for each item on the list, note any Status change (Done / In Progress) and new Response.
   Also read Change Requests 8918834172004228 and Help & Lessons 7780569054316420 for movement.
3. CHECK FOR NEW ITEMS: rows created since the last sweep in those three sheets; new hand-offs in your Raw
   (1rzRlNRLdg-qZnXU4MTHCnn3H2b1Z5L6G) and the group Raw (1AskWaogQoyQH7COKZq85jL00QUtcx---); new or changed
   OIs in the group open-issues.md; and new emails in the ops@fishboneconstruction.co.uk inbox from the
   adviser Alexey Glukhov (Alexey.Glukhov@aggaservices.co.uk) or anything needing routing. If a new adviser
   email has arrived, route it to Rachel with a hand-off note in Rachel's Raw (1NQydm_gONNSaVnRlYtPjhHmcTg5ZPl9-)
   — draft/route only; Rachel drafts, Minda sends.
4. CHECK TODAY'S DEADLINES against the schedule's fixed-deadline calendar; flag anything due today or overdue.
   Standing points: Waste business-rates decision (OI-14, OVERDUE); AWT-0028/0016/0034 (26 Sep); AWT-0039
   (27 Sep); Alexey offset (30 Sep); AWT-0030 Landbay page (3 Oct). Apply today's weekly-rhythm focus.
5. UPDATE Outputs/Victoria-Coordination-Schedule.md (archive-then-recreate, byte-verified): move completed
   items out, add new ones into the right group, refresh the calendar.
6. WRITE a one-screen morning digest to Outputs/<today>_Digest_Victoria-AM_v1.md: (a) due today / overdue,
   (b) what moved since yesterday, (c) new items and where routed, (d) what needs Minda today. Surface it to
   Minda.

Do not create or fire routines, send email, file with anyone, or make any commitment — those are Minda's.
Propose and flag; she decides.
```

### A2. Victoria — Afternoon Coordination Sweep  (UK 15:00; cron `0 14 * * *` UTC while BST)

```
You are Victoria, the Fishbone Group's CEO's Assistant / AI Workforce Coordinator, running your AFTERNOON
coordination sweep on Minda's behalf. Charter, working home and governance are exactly as in your morning
sweep (group CLAUDE.md section 6a: read/draft/propose/coordinate + append to the shared registers and the
Hub only; no outward send, no payment/commitment, no routine creation, never guess). Byte-verify every Drive
write and use archive-then-recreate; never trash.

Do this, in order:
1. READ Outputs/Victoria-Coordination-Schedule.md (Outputs folder 1jrOGx1lqGfTHKkzUcM8ce__tOGsqPlEp) AND
   today's morning digest Outputs/<today>_Digest_Victoria-AM_v1.md, so you compare against where the day
   started.
2. RE-CHECK PROGRESS made since the morning sweep: in Tasks & Requests 8860839228606340, Change Requests
   8918834172004228 and Help & Lessons 7780569054316420, note what advanced or closed since this morning,
   and flag anything on today's list that has NOT moved and is at risk.
3. CATCH MIDDAY ARRIVALS: new rows in those sheets, new hand-offs in your Raw (1rzRlNRLdg-qZnXU4MTHCnn3H2b1Z5L6G)
   and the group Raw (1AskWaogQoyQH7COKZq85jL00QUtcx---), new/changed OIs, and new adviser emails in ops@
   (Alexey.Glukhov@aggaservices.co.uk) — route any new adviser email to Rachel's Raw (1NQydm_gONNSaVnRlYtPjhHmcTg5ZPl9-)
   as in the morning sweep.
4. TEE UP TOMORROW: from the fixed-deadline calendar and weekly rhythm, list what lands tomorrow (raise a
   deadline nudge the day before it falls; 26/27 Sep and 3 Oct are weekends, so nudge on the Friday before).
5. UPDATE Outputs/Victoria-Coordination-Schedule.md (archive-then-recreate, byte-verified).
6. WRITE a one-screen afternoon digest to Outputs/<today>_Digest_Victoria-PM_v1.md: (a) what moved this
   afternoon, (b) what's still open / at risk from today's list, (c) new items and where routed, (d)
   tomorrow's deadlines + what needs Minda. Surface it to Minda.

Do not create or fire routines, send email, file with anyone, or make any commitment — those are Minda's.
Propose and flag; she decides.
```

---

*Standing coordination schedule for Victoria, the Fishbone Group CEO's Assistant. First cut 2026-09-20 —
the desk-vs-delegated split, deadline calendar and weekly rhythm are open to refinement with Minda; the two
routines maintain this file thereafter.*
