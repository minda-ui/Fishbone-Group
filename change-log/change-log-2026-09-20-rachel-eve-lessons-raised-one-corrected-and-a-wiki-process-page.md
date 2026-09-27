# Change log — 2026-09-20 (evening) — lessons raised, one corrected, and a Wiki process page

_Third entry for 2026-09-20. The morning entry covers Batch 4 and the record restructure; the afternoon entry
covers Batch 5, Sandbox Mode, the email authorities and the charter ceiling. This one covers the evening:
the day's lessons raised on the Help & Lessons desk, an error of Rachel's corrected on the same desk, and a
new group Wiki process page. Written once and never edited (`CHARTER.md` §5)._

## 1. Four lessons raised, on Minda's instruction

`HL-0024` to `HL-0027` on the AI Workforce Hub **Help & Lessons** desk. Next-free verified properly —
`isSampled: false`, 24 rows read, high-water `HL-0023`.

A **duplicate `HL-0021`** was found on the desk (Victoria's, Open; Peter's, Resolved) and **deliberately not
touched** — another employee's row is not Rachel's to renumber. Reported to Minda, unresolved.

## 2. `HL-0024` was raised wrong, and corrected the same evening

**The error.** Rachel observed three emails SENT that she had not sent, and concluded `create_draft` had sent
them. She raised it **Critical**, amended `CHARTER.md` twice, and reported a governance breach to Minda.

**What actually happened.** Minda read each draft and sent it herself, as she always does. The `messageId`
Rachel presented as forensic evidence is **ordinary Gmail behaviour** — a draft is assigned a new message id
when it becomes a sent message.

**What it cost.** A phantom connector fault put in front of Eugene. A Critical row telling every seat to
distrust a working tool. Two charter amendments on a non-event. A breach reported that never occurred.

**The correction.** `HL-0024` moved to Medium/Resolved, Eugene stood down, and the **original incorrect
account left standing** in the row discussion with the correction appended beneath it rather than
overwriting it. `HL-0025` marked as needing independent confirmation, having been recorded by the same
session on the same connector on the same day. **§6 rule 6 rewritten**: confirming a draft is *not* a fault
detector; a draft that is gone almost certainly means Minda sent it; **rule out the human before attributing
an action to a tool**, and match severity to the evidence held rather than the consequence imagined. The
escape procedure was **kept** — rule 4 is genuinely silent on a real gap — with its preamble now stating
plainly that the event prompting it never happened.

**The lesson, stated once:** the failure was not carelessness. It was asserting more than the evidence
supported, fluently, and never asking the one question that would have settled it.

## 3. `HL-0028` — the process that should have existed

Written on Minda's instruction so the gap that produced the error is closed by a **procedure** rather than a
caution. Six stages: before drafting (authority, read every attachment, reconcile a sender's documents
against each other); creating (reply-to id, fresh draft rather than in-place edit, plain text, sign in your
own name); verifying what you made (thread id matches; report by subject, never by internal id); **what each
observable state actually means**, including the message-id change that was misread; confirming a send from
the thread rather than the drafts list; and what never to do. Condensed in the Answer column, full text in
the row discussion.

## 4. New group Wiki article

**`Wiki/Process-Email-Drafting-and-Send-Verification.md`** — 10,493 bytes, byte-verified, written to the
`WIKI_GUIDELINES.md` template: Type, Status, Last reviewed, Related, Summary, Key facts, Who keeps this
working, Open questions, Sources `[S1]`–`[S6]`, History. Links checked against real filenames; no dangling
links; no replacement characters.

**Two things stated in its own Open questions rather than buried:** the Microsoft 365 draft path is asserted
by analogy and **has not been tested**, and the in-place-edit finding is **provisional**.

**`00_INDEX.md` was deliberately NOT edited.** The Wiki's own §4.7 and §9 require the index be updated in the
same edit, so this article is knowingly one step short of compliant. Rachel's `CHARTER.md` §3 bars editing
anything inside another employee's KB without an explicit decision, and Minda's instruction covered making
the page, not rewriting the group's central index. The exact one-line entry was given to Minda to paste or to
route to Victoria or Alex. **This is HL-0024's own lesson applied rather than recited: ask first.**

## 5. Records

`RA-32` gained the mis-diagnosis as a **fifth and worse defect** — the other four cost a character each; this
one cost another employee's time. `RA-33` (Minda's pronouns) still open and still Minda's to answer.

**`RA-31` proved twice more.** Adding the `RA-32` text took `open-issues.md` to **31,437 — 121 bytes over the
ceiling**, caught by the byte check before the write. `RA-28` compacted, full text moved to
`open-issues-history-2026-09-part2.md`. `current-state.md` had fallen to **233 bytes**, so the finished
charter-ceiling row moved to `current-state-history-2026-09.md`.

All Drive writes archive-then-recreate, byte-verified exact. Four superseded copies archived with dated
reasons, moved and labelled, never trashed.

**Pending / carried forward:** the `00_INDEX.md` entry; Alexey's reply on the four AGGA threads, where the
`ITC loans` matrix is the document that would let us evidence the £200,570; Batch 5's remaining four
companies; sandbox items 2–4 if the year end does not settle them first; `current-state.md` is down to about
350 bytes of headroom and should be dated next session before anything else is added to it.
