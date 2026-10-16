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
- **2026-10-10 late, part 3 (CDM check, safe way of work).**
  - A one-word answer ("Agreed") to a two-way question is ambiguous. Ask again with the two options numbered; record the second answer.
  - Before closing a row whose Response says "also not drafted", split the uncovered item into its own row first (AWT-0524 gave AWT-0541 and AWT-0542). Do not close over a hidden item.
  - Testing each clause against a real job (Merry Hill, BBC Cardiff) turned a legal-sounding check into a plain yes/no for Minda and exposed real practice gaps (no induction or competence record). Use a live job as the test.
  - State the basis of a check in the record exactly (who checked, against what, who did not). Do not let it read as a specialist sign-off.
- **2026-10-12 (PM v1.1, mail answers, Waste licence).**
  - Hub IDs are minted concurrently by the routine. Before an ID goes into a document, check it is free; after `add_rows`, read the duplicate cell; probe a range well above the last ID seen (I used AWT-0544, 0571 and 0572 and all were taken, and had to archive and recreate an approved text).
  - Read a Hub row's Response, not only its Request. I called a settled VAT point "still open".
  - A state file or log line ("Minda's 3-week absence") is a claim. Ask her. She is remote, available.
  - When Minda says where something is ("check Collaboration Space, check all folders"), go there: the Waste licence was in Drive and Peter could not reach the public register. Do not open folders that hold passwords, bank details or HR.
  - Escalations from the triage routine can be wrong or stale (the Starling "failed" alert, the Google sign-in). Ask the owner before acting on them.
  - A short answer can carry a rule bigger than the question; ask what a phrase means ("own work") before recording it as accepted.
- **2026-10-12 later (Waste, John, ISO).**
  - When Minda's statements shift as we go (three versions of "who carries the waste"), record each, say plainly where it does not fit the last one, and ask one question at a time. Do not pick a version or give a legal conclusion; hand the legal question to Anna with sources.
  - Search narrowly. A Smartsheet text search for "mortgage" returned 100 rows; go to one sheet and one column, or ask Minda where to look.
  - "Who is responsible for X?": check the Roster and the Hub rows, say what was checked and not, name the gap (no owner for sales). Minda may already know the answer; record it as hers.
  - Minda pointing me to a folder ("check all folders") beat the web: the licence was in Drive. Do not open password, bank or HR folders.
- **2026-10-12 late (Atlas ISO capture).**
  - Photos of a platform are readings, not records: write them up as owner notes and mark what was read from a photo. The 17-file capture Minda saved is the record; "Check Raw folder too" meant the group Raw, found by `createdTime`.
  - A certificate answers dashboard shorthand ("Nov '28" was the expiry). Read the document before guessing what a figure means, and label any date not on it as inference (next surveillance about 8 Nov 2026).
  - `add_rows` can land twice: after adding a Hub row, filter on the ID, read every row returned, and delete only an exactly identical copy you created.
  - I wrote "15 Citation-raised" into a Hub row from memory; the dashboard said 16 Citation-raised plus 1 internal. Check a count against the source before putting it in a row someone else will act on.
- **2026-10-13 (256 open rows; Minda: "we need to stop working like that").**
  - With a big backlog, do not put escalations to Minda one at a time. Read every row first, sort into groups using her standing rulings (Construction is Anna's, Properties and the mortgage process are John's, finance is Rachel's, marketing and alerts are noise), propose one list per group with the outcome, and take one approval. Only genuine decisions go one by one.
  - Her numbered answers map to the numbered questions. An unnumbered approval question (the one about groups A to F) is not answered by them; ask it again.
  - Read the info-only rows against the open High rows before bulk-closing: the Motorway valuation emails matched the suspected van fraud (YH70 MVG) and were worth one question (the answer was harmless).
  - Never type a row ID from memory. Pull IDs fresh, and after every bulk `update_rows` check each returned Task ID against the intended group (output is saved to a file; use jq). I closed AWT-0570 with a wrong ID.
  - Rows whose Response says "not covered" are split into carry-over rows (Rachel, John, Anna, Eugene) before closing. Bulk updates that only set Status and Done date leave the old Response text intact.
  - Proofread a file before saving; a stray "wait" went into a published proposal and cost a v2.
- **2026-10-13 later (paper mail).**
  - "Who picks it up?" has a written process but no named owner; find the process file (here `Wiki/Process-Post-Handling.md`) and check whether it names a person, seat or routine before answering. Two folders with the same name existed; list both by id.
  - Do not assume an assistant has a separate login. Minda: all assistants use her Google logins, so a folder shared with her is visible to everyone. I opened a sharing task for Eugene on that assumption and had to withdraw it. Ask or check which account a tool uses before opening a sharing row.
  - Drive search returns file text by default. A query meant to count files returned tenant documents; before searching a folder that may hold personal data, prefer a narrow query and say up front that only names and dates will be used.
  - When Minda asks for a long watch ("2-3 weeks"), set dated reminders (send_later) and give the seat a row to report weekly, rather than relying on the session staying open.
- **2026-10-13 evening (Peter's grants).**
  - An assistant will not widen its own authority on a relayed claim. When Minda grants a seat new authority, record her words, update the row and hand-off notes, and then ask her to tell that seat directly (one pasted line in the seat's own session is enough). Write the line for her. It took two rounds because I relayed twice.
  - Give a grant its own Authority Register row (Alex adds it); keep the scope narrow, copied from the written process, and list what is excluded.
  - Check the digits in an ID Minda quotes against what is on her screen. "AWT-0167" was AWT-0617 swapped; the screenshot showed it, and I should have looked at the number first.
  - Do not edit an approved file to add its register number if that changes its Drive ID: the ID is the register's source key. Put the number in the register row.
  - A new row is not finished until the seat reads it. Check the Hub rows and the seat's Raw after a few hours: Peter and Eugene had both replied within the hour.
- **2026-10-14 (overnight rows, PM-6.1a, shared skills).**
  - Grouping worked again: 47 rows, one list in four groups (close junk, close info, reassign, ask), one approval, 38 handled. Put the numbered questions last and short; she answered all four in one line.
  - In the morning brief I said two High rows were "with Rachel" and "with John". Both were assigned to Minda. Read the Assigned-to column before saying who holds a row.
  - A triage alert can contradict itself: the GoCardless "failed" notice was stamped a week before the collection date it related to. Say it is unverified and hand the check to the owner (Rachel) rather than repeating it as fact.
  - A bulk `update_rows` can time out and still apply. Read the rows back by Task ID before retrying.
  - When a decision adds a clause to an approved document and another change is already waiting (Rachel's check), hold both for one release. Record the decision on the Hub row and the Procedure Register Conditions cell; do not edit the approved file.
  - Known Correspondents: add only on Minda's explicit say, and say that the scope wording is yours, copied from the nearest existing row.
  - A one-word prompt ("Shared-skills") after an open question is a request for the decision brief. Re-read the Hub rows and the seat replies first; state what you did not re-test.
  - Probe a wide ID range before adding rows (0679 to 0695), then check the duplicate cell on the new rows.
- **2026-10-14 late (Raw check, skills fit check).**
  - "Check Raw folder" again meant a Drive-wide search by `createdTime` as well as my own Raw. It found Alex's files in Eugene's Raw, not mine.
  - When reviewing a seat's skill or script, test it against our own lessons (here `find_in_sheet` unreliability, concurrent ID minting, the cross-KB amendment rule). All four fixes came from that, not from the file's own logic. Say plainly what was read and not run.
  - Seats act on a fit-check note within the hour. Re-read the Hub rows before reporting something as waiting; they had already applied the fixes and committed.
  - The session's own skill list is a live signal: the revised description of drive-sync-verified had appeared, which suggests the upload happened. It is not proof the body matches; say so.
  - Eugene opened a duplicate row for each handover (three rows for one job). Name the live row in the note and ask the seat to close the rest.
- **2026-10-15 to 16 (closures, Phase 2 prep, Amfa push).**
  - Build the closed-by-rule list from a readback of the rows, not from memory, and name the borderline rows (a finance notice closed as a duplicate, a site query already answered) so her review starts there.
  - Ask the seat before asking Minda. I asked her three questions about the live campaign that Helen can answer from the Ads account. Her reply: "We are talking about automation :). Ask Helen to report." State the fact she gave, brief the seat, and do not ask her for what a seat can see.
  - A fact from Minda can overtake a task: Helen was told to build a campaign that was already live. Rewrite the brief as "report on the live one", name the overtaken row (AWT-0748), keep the launch and spend boundary in the brief.
  - `find_in_sheet` scans only the first 100 rows (see `nextOffset`); zero matches proves nothing. Use `get_sheet_summary` with `filters` at the top level (`columnName`, `operator`, `columnValue`); a nested `request` string is ignored and returns everything, sampled. `update_rows` rows take `id`, not `rowId`. Drive `search_files` wants `parentId = '<id>'` inside the query.
  - Large `update_rows` output goes to a file; verify with `jq` on the cell `columnId`s (Task ID 3261859655976836, assignee 7765459283347332, status 8891359190189956, done date 2347065981667204) and check `failedItems` is empty.
  - A pending check holds a release: Rachel's PM-14.9 to 14.11 check (AWT-0579) was three days open, so v1.2 was prepared as a change sheet, not a full text. Nudge the seat in its Raw and say what is waiting on it.
  - Close-out after a private-mode session: the change-log records that the mode was on and nothing from inside it, including how or where anything was stored.
- **2026-10-04 (continued).**
  - Files Minda drops land wherever she is working (the group Raw, not the seat's Raw). Say where they are and hand the seat the Drive ids.
