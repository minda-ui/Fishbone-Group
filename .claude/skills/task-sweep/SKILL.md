---
name: task-sweep
description: Victoria's "task sweep" with Minda. Use when Minda says "task sweep" (or "sweep the tasks"). Works through Minda's open Hub rows one by one, checking Victoria's own earlier notes and the live sources before saying anything, deciding each row with her, and recording every outcome on the Hub.
---

# Task sweep (Victoria with Minda)

Trigger: Minda says **"task sweep"**. We go through her open tasks and do as much as we can in the sitting, one item at a time. This file is a living record of how we do it. Update it at the end of each sweep (see "Lessons log").

## The standard: be accurate before being fast
Minda's instruction (2026-10-03): *check your own notes on the task before you speak.* A wrong instruction costs her more than a slow one.

Before telling Minda anything about a row:
1. **Read the whole row**, including the Response column. Your earlier notes are there. Do not contradict them without saying so.
2. **Verify against the live source** (Rule C): Gmail Drafts and Sent, the Authority Register, Known Correspondents, the Document Register, the sender's mailbox, Drive. A routine's text is a claim, not a fact.
3. **Say what you checked and what you did not.** Never state a thing as fact that you only inferred.
4. If you find your own error, say so in one line, fix it, and carry on.

## Procedure
1. **Rule A first.** Read own Assigned-to rows (Victoria) that are Open/In Progress. Flip any taken up to In Progress.
2. **Pull Minda's open rows with short columns only** (Task ID, Priority, Status, Due date, Source). The full text of 30 rows overflows. Then read Request and Response for a batch before classifying it.
3. **Classify each row:**
   - **Minda decides**: put it to her (below).
   - **Resolved and recorded**: close it.
   - **Belongs to someone else**: reassign to the owner on the Hub, drop a Raw note in their Raw (Rule F), tell Minda in one line.
   - **Control copy / info only**: close with the reason.
   - **Hidden item inside a digest**: never close a row whose Response says "not covered". Split the real item into its own row, then close.
4. **One item at a time.** Lead with the answer. Plain brief (Rule E): what it is, what you checked, the options, your recommendation, the one thing you need from her. Wait for her reply before acting.
5. **Act and record at once** (Rule B): Hub row updated, Raw hand-off note for anyone affected (Rule F), owner note for anything Minda states that the Wiki should hold.
6. **Closing rows:**
   - Read the existing Response first. `update_rows` overwrites the cell. Keep the old text and append `Closed <date> on Minda's go`.
   - Set Status = Done and Done date.
   - Report how many closed, how many did not, and why.
7. **Adding rows:** check the next ID is free with a `get_sheet_summary` filter on Task ID, and read the "Duplicate Task ID?" cell in the result. The routine also mints IDs (AWT-0280 collided on 2026-10-03). Renumber your own row if it collides.
7a. **Project column (from 2026-10-09, AWT-0493):** Tasks & Requests has a `Project` column. Put the job number (e.g. FC2611) there and at the start of the Request text when a row concerns a job. Read the job's row in the Project Register (Smartsheet 5250912102778756) before acting. Money columns are Rachel's.
8. **Never**: send external email, pay, file, change sharing, trash (§6a). Drafts only, for Minda to send. Delete a draft only if she says so.

## How we put a decision to Minda
- Options with a recommendation first. Name who does what (Minda / a seat / RMT).
- If she says she cannot decide without the full picture, arrange a session with the seat that owns it (e.g. Rachel for finance) and prepare the brief via Hub row + Raw note.
- If the item is another seat's job, say so and hand it over. Do not keep it on her list.

## Standing rulings from Minda (apply without re-asking)
- **Properties mail** goes through ops@fishboneproperties.co.uk (John and Irina). The group only gets **copies for control**. Nobody touches them unless Minda asks, **except** when a decision is needed from top-layer management. Tenant mail is John's and Irina's, never Minda's.
- **Finance** is Rachel's. Rachel does not handle bank, lender, HMRC or regulator correspondence.
- **Payroll and payslip emails** are information only.
- **HSE**: the first payment counts as acceptance. No reply email is needed. (Do not ask her to send one.)
- **Known Correspondents** is a routing whitelist, never an execution grant. Not added: DocuSign, cold solicitors, marketing and newsletters.
- **Amfa** is already two years dormant. Keep the OI-13 Holdings machinery plan away from RMT until there is a plan.
- **Raw/** is immutable. A correction is a new file that names the one it corrects.
- Minda's statements are recorded as `Raw/YYYY-MM-DD_owner-note_<subject>.md`.

## Tool notes
- Smartsheet `find_in_sheet` can show `rowCount` with `occurrences: 0`. Do not trust it for existence. Use `get_sheet_summary` with a Task ID filter.
- `add_rows`/`update_rows` return the whole row. They are large. Verify from the result's `failedItems` and row values.
- Malformed JSON in a tool call writes nothing. Retry in the plain format and re-check.
- Gmail connector here is ops@. It sees copies of info@ and Properties mail. `create_draft` and `delete_draft` exist. No sending.
- A "draft in ops@ Drafts" claim must be checked with `list_drafts` before it is repeated.

## End of sweep
1. Dated entry in `change-log/` (what was closed, reassigned, decided; what is waiting).
2. Flag `current-state.md` to Alex (his sweep refreshes it).
3. Update Minda's plan page if one is live.
4. Add to the Lessons log below.

## Lessons log
- **2026-10-03 (first sweep, backlog of 71 rows).**
  - Told Minda a Peter and an Anna "grant gap" existed. Both grants were already on the Authority Register (2026-09-27). I had repeated the routine's dry-run text. Check the Register first.
  - Asked Minda to send an HSE reply after she and I had already recorded that none was needed. Read the row's own Response before advising.
  - Listed two "drafted Alexey replies" to send. They had been sent on 2 Oct. Check Sent and Drafts first.
  - Planned "create John's intake routine". It had been running since 20 Sep. Check change-logs for evidence a thing already exists.
  - Reassigned a Properties control copy to John, then had to reverse it when Minda ruled Properties mail is monitor-only. Ask whose mailbox a mail really belongs to.
  - Closed fewer rows than promised because Response notes said parts were "not covered". Say so plainly rather than closing silently.
- **2026-10-04 (HMRC pull).**
  - My plan listed the FBCP VAT certificate as something Minda still had to fetch. Rachel had already sent it to Alexey on 28 Sep. Read the sent thread and its attachment names before listing a document as outstanding.
  - I grouped CIS returns and the BBL statements under "HMRC". AWT-0074 says CIS comes from QuickBooks and BBL from the lender. Read the row's own text before grouping tasks.
  - Reading the files Minda dropped in Raw paid off: the CT figures matched Alexey's open item exactly (tax £2,145.86 against his £2,146) and also showed interest and a penalty he did not have. Read what arrives, do not just acknowledge it.
- **2026-10-09 (project way of working).**
  - "Check the Raw folder" means every seat's Raw, not only mine. On the first check I looked at two folders and said nothing was new; a Drive-wide search by created time found seven replies from other seats. Search by `createdTime` across Drive, then read the notes.
  - Before saying a routine change is "done", check whether Minda has pasted it. A prompt in Outputs is a draft; v4 stays live until she pastes the new one.
  - Seats' replies correct my own facts (Nadia's Raw id, Alex's duplicate-ID cause). Read them and carry the corrections into the log.
- **2026-10-10 (procedures, Sarah, close-out test).**
  - A seat's summary of an owner ruling is a claim. I passed on "FC2613 replaces FP2401-01" from Rachel's note; Minda's standing decision B said otherwise. Check the standing decision before relaying.
  - A register note ("one-night job") is a claim too. Anna's email search showed three weeks. Verify with the job's own record.
  - Check a Hub ID is free before writing it into a document, not after. Count twice (26 v 27).
  - Before proposing a new system, ask the owner and search Drive for what exists. Minda later said Construction holds ISO 9001, 14001 and 45001; the Wiki had nothing.
  - When an owner decides, write the rule narrowly (one document) and ask before widening it (standing authorisation was her choice).
- **2026-10-10 late (close-out review with Minda, 28 questions).**
  - Reviewing a report with Minda one question at a time worked: each answer was recorded the moment it came, and nothing was left to memory. Keep it.
  - Names, dates and causes in a seat's draft come from emails and invoices, and the review found four wrong: Andrej on FC2609 (not on site), a start date from the first email (true start 20 July), the finish taken from the last invoice (13 Aug), the pilaster blamed on the client (it was our own defect). Ask the person who was there; do not repeat the draft's version as the question.
  - Cross-check an answer against the live record before writing it down. "Repair free, within the 15 days" clashed with 15 invoiced days; asking once more found the out-of-hours work.
  - A date in the Project Register or a Hub row is not a job date. Ask for start and finish.
- **2026-10-10 late, part 2 (HSE/QC/ENV decisions).**
  - Putting the review to Minda one question at a time worked again: five decisions in a few minutes, each one recorded as she gave it.
  - I wrote the owner's full name from an initial ("M Gaudiesius" became "Minda Gaudiesius"). Ask for a full name; never build one from an initial or from a known first name.
  - I repeated the group KB's "Fishbone Waste is dormant" as fact in a note to Rachel. The KB claim was months old and wrong. A KB statement about a company's status is a claim: ask Minda before relying on it.
  - A short answer can carry a rule bigger than the question ("Andrejus Prutkovas" as deputy turned out to be a co-director with 50%, so the whole "deputy" frame went). Restate what the answer changes before writing it down.
- **2026-10-04 (continued).**
  - Files Minda drops land wherever she is working (the group Raw, not the seat's Raw). Say where they are and hand the seat the Drive ids.
