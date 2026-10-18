# Fishbone operating model v0.1 (DRAFT for Minda)

Victoria, 2026-10-18. Hub AWT-0831 / AWT-0776 (plan v5, Build Register). Answers Minda's three questions of 18 Oct: weekly jobs, how mail triage works, and the big picture. Everything here is a proposal; nothing is switched on.

Evidence: Roster (13 rows), Estate Index prompt v6, Peter's two inbox prompts and Companies House prompt, Alex's sweep prompt, the FC/FA/FP/FM inbox-report prompts, `Process-Inbox-Housekeeping.md`, Hub rows AWT-0765/0766/0768/0775/0776/0822. **Not verified:** which routines are running right now. The Roster is out of date in places (it still shows Eugene's and Helen's weekday check-ins and "Victoria: none"), and Eugene's full inventory (AWT-0775) is due 29 Oct. Section 6 lists what I need confirmed.

## 1. Short answers

1. **Weekly jobs: you are right. Make both daily.**
   - **Alex:** the Monday sweep becomes a daily housekeeping pass (section 4). A weekly summary stays as a Monday report, not as the only check.
   - **Peter, Companies House:** retire the weekly run. A request is a Hub row, answered by his next work run (at most three hours). Companies House alert emails go through the mail pipeline to Peter.
   - **One gap an alert cannot cover:** it fires when something is filed, not when a deadline is missed. Keep a short statutory calendar (accounts, confirmation statements, seven companies) as dated Hub rows owned by Peter, so a missed filing still shows.
2. **Mail triage is layered, and it does double up.** Section 2 shows how it works and where.
3. **Big picture:** sections 3 to 7: process map with owners, overlaps, housekeeping standard, logging standard, roadmap.

## 2. How mail triage works today

All company mail lands in one mailbox, `ops@fishboneconstruction.co.uk` (it carries the `minda@`, `info@`, `invoice@` and company copies). Who reads it:

| # | Routine | Cadence | What it does | Unique to it |
|---|---|---|---|---|
| 1 | Peter, group inbox triage | 2 a day (07:45, 15:00 UK) | Tags company, classifies, flags deadlines and fraud, drafts replies, stages documents for the register | Drafts, deadline and fraud flags, register candidates |
| 2 | Inbox-report routines FC, FA, FM, FP | 7 a day | Extract sender, subject, one-line summary into `Raw/Inbox-Reports/` | Only feeds #3 |
| 3 | Estate Index routine (v6) | 7 a day | Reads #2, Properties Raw and Request-Inbox; classifies; sends to a seat's Raw, escalates to you, or closes by rule; writes Audit Trail and one Hub row each | Routing, closing by rule, audit |
| 4 | Victoria minda@ housekeeping | twice a day (per the 21 Sep process page; **not verified running**) | Labels and archives noise | Gmail labels |
| 5 | Construction and Properties KB daily inbox routines | 07:00 | Write their own Wiki and Tasks | Their KB updates |
| 6 | Seats: Anna's project email check, John's intake, Nadia's enquiries (Peter also routes Amfa enquiries to Nadia by hand, AWT-0095) | various | Read their own mail | Their own domain work |

**Where it doubles up**
- Peter (#1) and the Index (#3) both classify the same mail by company and topic. Peter writes a "needs Minda" list; the Index escalates to you. That is two judgements of the same email.
- Amfa enquiries take two routes to Nadia: Peter by hand, and FA report then Index.
- Four inbox-report routines (#2) exist only to feed #3.
- #4 labels what #1 also tags.

**Proposal: read once, classify once, then do.**
1. **Collect:** one report per run, whichever routine does it cheapest. The FC/FA/FM/FP reports stay as feeders only if Eugene's inventory shows they are cheap; otherwise merge them into one.
2. **Classify:** the Index is the only classifier. Add Layer-1 lines: documents for the register, deadlines and bank-detail changes go to Peter's Raw (bank-detail change stays never-close, escalated); Amfa enquiries go to Nadia only.
3. **Do:** each seat works its own dispatched items in its work run. Peter's work is drafts, register candidates, deadline rows and fraud flags on what the Index sends him. His own mailbox-reading routine (#1) is retired after a one-week dry run beside the Index.
4. **Escalate:** only the Index writes rows to you, in the ASK / RECOMMEND / DEFAULT form.
5. **Owner:** Alex owns the pipeline (he built the Index); Peter is the doer for documents and drafts.
Result: one read stage, one classification, one place you see mail. Needs a dry run before anything is retired; I will not retire a routine without it.

## 3. Business processes, owners and records

One accountable seat per process. Money, sending, signing, sharing and authority stay with Minda in every row.

| # | Process | Owner | Also does | Record | Overlap or gap |
|---|---|---|---|---|---|
| **A. Run the group** | | | | | |
| A1 | Coordination, Minda's queue, plan and gates | Victoria | | Hub, coordinator digest, AWT-0768 | Digests exist in several forms (section 6) |
| A2 | Housekeeping and estate integrity | Alex | | Hub, sweep files, control files | Weekly only; make daily |
| A3 | Automation build, IT, inventory | Eugene | | Runbooks, Infra-Inventory, Build Register (due 29 Oct) | Roster and inventory disagree |
| A4 | Governance: authority, procedures, registers | Minda decides; Alex records | Sarah checks | Authority, Procedure, Document, Build registers | Authority Register rows wait for an attended session (AWT-0766) |
| **B. Information in** | | | | | |
| B1 | Mail and request triage | Alex (pipeline) | Peter (documents, drafts) | Audit Trail, Hub | Section 2 |
| B2 | Documents: numbering, register, filing | Peter | Rachel (financial archive only) | Document Register | None found |
| B3 | Companies House and statutory calendar | Peter | Rachel (tax calendar); accountants file | Hub rows with dates | Weekly run to retire; calendar missing |
| **C. Core business** | | | | | |
| C1 | Construction jobs, start-up to close-out (P04) | Anna | Sarah checks; Rachel money; Peter documents | Project Register, procedure FG0000005 | Register columns being built (AWT-0839) |
| C2 | H&S, quality, environmental, ISO (P01-P03) | Anna | Sarah checks | Procedure Register | Approval on hold until Anna's report (AWT-0535); surveillance about 8 Nov unconfirmed |
| C3 | Property operations | John | Irina; Rachel money | Property Register, Properties KB | Mail routed to monitor-only, not escalated |
| C4 | Amfa enquiry, quote, order, build, ship | Nadia to order; Darius from order | Rachel money | Enquiries CRM, order tracker | Nadia to Darius hand-off has no written step; Nadia cannot read the mailbox yet |
| C5 | Finance: payment list, forecast, tax calendar, overdue drafts, QuickBooks | Rachel | Minda pays; accountants for CT | Rachel's KB, Document Register | Dext and invoice@ not yet automated (AWT-0805) |
| C6 | Marketing | Helen | | Her KB | Waiting on Ads/GA4 access (AWT-0777) |
| C7 | Compliance assurance | Sarah | | Findings rows | Trial runs only; Roster says interactive |

**Procedures gap.** The Procedure Register holds only the Construction set (P01-P04). Mail, finance, property and Amfa have no level-1 procedure, so their rules live in prompts and charters. Each process in B and C needs one short procedure, written by its owner, registered by Peter.

## 4. Housekeeping standard (daily, owner Alex)

Alex's daily work run, inside his rungs (fixes group and own KB; proposes elsewhere by Raw note and Hub row to the owner):
1. **Hub hygiene:** rows done in words but open; In Progress with no dated line for 24 hours (3 days for Blocked); overdue; "received" lines (the new run forbids them).
2. **Raw folders:** any seat's Raw item older than 24 hours unanswered.
3. **Control files and logs:** current-state older than the KB's newest change; duplicate control files; log entries that repeat another record (section 5).
4. **Registers agree:** a new routine, seat or procedure appears in the Build, Authority or Procedure Register within a day.
5. **Group Outputs and Raw:** naming, duplicates, files in the wrong place.
6. **Monday report:** a one-page summary for you, built from the week's daily results (replaces the old weekly sweep as the only check).
Alex's hourly Hub Drift Watch stays; it is read-only. Victoria nudges seats through their Raw; Alex does not chase.

## 5. Logging standard (three records, the rest derived)

Today one finished task can be written in: the Hub row, a Raw hand-off note, the KB change-log, current-state, a digest and sometimes a ledger. Proposed:

| Record | Holds | Written by |
|---|---|---|
| **Work: the Hub row** | Asked, state lines (DONE / PROGRESS / BLOCKED / NOT MINE), closing line with where the result is | The assignee, once, on the row |
| **Machine decisions: Audit Trail and Authority Register** | Mail outcomes; granted authorities | The Index routine; Alex records authorities |
| **Content: the KB change-log** | One line per session per KB: files changed. Only when a file changed | The KB's owner |

Everything else is derived or deleted:
- **Digests** are generated from the Hub (one coordinator digest a day), not hand-written per seat.
- **Hand-off notes** carry the detail once; no copy in a log.
- **Quiet runs** write nothing.
- **current-state.md** is overwritten, never narrated.
- **Weekly lists** (closed by rule, stale rows) are built from the Audit Trail and Hub, not typed.
**Logging process owner:** Alex checks daily that no fact is written in a fourth place; Eugene automates the derived reports (Smartsheet reports) so no one writes them by hand; Minda gets one coordinator digest.

## 6. Roadmap to the automation plan

Assumes plan week 1 began 15 Oct (gates: step-off number week 2, authority ladder week 6, go/no-go week 9, cash decision week 10, end about 14 Jan). Dates approximate.

| When | What | Owner |
|---|---|---|
| **Now to Sun 25 Oct** | Work-run standard approved and prompts replaced; trial week. Routine and mail-routine inventory pulled forward from 29 Oct. Alex daily pass and Peter on-request live. CIS, HSBC, CT statement items closed (Phase 0) | Victoria, Eugene, Alex, Peter, Minda |
| **Mon 26 Oct** | Trial review. **Gate: step-off number** (Anna's day-rate draft AWT-0806, Minda's site days) | Victoria |
| **Thu 29 Oct** | Plan v5, Build Register and security inventory due (AWT-0776, AWT-0775). Process register v1 agreed. Mail dry run starts | Victoria, Eugene, Alex |
| **Nov** | Mail pipeline consolidated after a one-week dry run; logging standard in force; Rachel's flow automated up to payment (AWT-0804: Friday payment list from 23 Oct, forecast, tax calendar); Dext on invoice@; procedures for mail, finance, property, Amfa registered | Alex, Rachel, Eugene, Peter |
| **About 19-25 Nov (week 6)** | **Gate: authority ladder** (non-payment) | Minda |
| **Dec** | Step-off test; **gate go/no-go (week 9)**, **group cash decision (week 10)** | Minda |
| **To about 14 Jan 2027** | 90-day review: ten items a week reaching Minda, team without asking | Victoria |

## 7. What I could not verify, and what I will ask for

- Which of the routines in section 2 are running today (Roster is stale). Eugene to list every scheduled task and routine with schedule, connectors, what it reads and writes (a narrow, early slice of AWT-0775, due Wed 21 Oct).
- Whether Victoria's minda@ housekeeping routine is still running.
- Whether Nadia's Gmail on enquiries@amfa.uk is connected.

## 8. Decisions I need from Minda

1. **Yes to the direction:** daily pass for Alex, on-request plus alert-driven Companies House for Peter, one mail pipeline with the Index as the only classifier (dry run first).
2. **Correct this page:** owners in section 3 (is Alex the right owner of the mail pipeline? is Nadia the owner until the order is accepted?).
Nothing else; everything else I decide and record.
