# Process — Email Drafting & Send Verification

- **Type:** Process
- **Status:** Active
- **Last reviewed:** 2026-09-20
- **Related:** [Process — Post Handling](Process-Post-Handling.md) (inbound correspondence); [Process — Housekeeping & Session Discipline](Process-Housekeeping-and-Session-Discipline.md) (archive-then-recreate, byte-verify, the Definition of Done); [Process — Fishbone Systems House Rules](Process-Fishbone-Systems-House-Rules.md); the AI Workforce Hub **Help & Lessons** desk (`HL-0024` to `HL-0028`).

## Summary

This is the group standard for the most ordinary thing an AI employee does with a mailbox: **draft an email
for a human to send, then work out what happened to it.** Most seats can draft. Almost none can send — the
human sends. That split is deliberate and it is the whole safeguard, but until 2026-09-20 nobody had written
down what happens *after* the draft leaves the agent's hands. Without that, the **normal** lifecycle of a
draft reads like a malfunction, and on 2026-09-20 it was read exactly that way. [S1][S2]

The one line that matters: **a draft that has disappeared almost always means the human sent it.** That is the
system working, not an incident. [S2]

## Key facts

### Why this exists

Once a draft is staged, the only things an agent can see are a drafts list, a draft object and a thread. All
three change as the human acts. An agent that does not know what the normal changes look like will read
ordinary success as failure.

On 2026-09-20 three drafts were staged for the owner. She read each one and sent it — the intended outcome.
From inside the session it looked like email leaving on its own. It was reported as a tool defect, raised
**Critical** on the Help & Lessons desk, and written into a seat charter twice before anyone asked her. The
row was corrected the same day; the cost was another employee's time and a Critical notice telling every seat
to distrust a working tool. [S3]

### Stage 1 — before drafting

1. **Confirm the authority.** Your charter must say you may draft into this mailbox, and that **sending is the
   human's**. If drafting into someone's mailbox is not explicitly granted, ask. A silence is not permission.
2. **Read what you are answering in full, including every attachment**, before forming a view and especially
   before deciding the sender has got something wrong. An email and its own attachment can say materially
   different things; the attachment is usually the considered version and the email the summary. [S4]
3. **Where a sender has supplied several documents, reconcile them against each other** before reconciling
   them against our own records. You are the only desk holding all of them, and integration is nobody's
   stated job until it is made someone's. [S5]
4. **Separate what is yours to say from what is the human's.** Questions, analysis and document positions are
   yours. Decisions, commitments and anything that binds a company are not.

### Stage 2 — creating the draft

1. **For a reply, set the reply-to message id** to the message being answered. Without it the draft is a new
   conversation and the recipient receives an orphan.
2. **To revise a reply, create a fresh draft.** Do not edit one in place — on 2026-09-20 an in-place edit
   returned a thread id that no longer matched the original thread. That observation is **provisional and
   awaiting independent confirmation**, but creating a fresh draft costs nothing and avoids the question. [S6]
3. **Write plain text, not Markdown.** Headings, asterisks, pipe tables and bullet characters are delivered
   literally and read as machine output. Use blank lines, capitals for headings, simple indentation.
4. **Sign in your own name**, with your role — not the human's. The reader should know who did the analysis,
   and it keeps the decision visibly the human's.
5. **Assert nothing, and attach nothing, the human has not seen.**

### Stage 3 — verifying what you just created

1. **Check the returned thread id matches the thread you intended to answer.** This is the check that earns
   its keep: it catches a real failure — a reply that has become a standalone message — at the only moment it
   is cheap to fix.
2. **Report the draft to the human by subject and thread, never by internal id.** A person looking at their
   inbox cannot use `r-976616708220461593`. They can use "the reply to the accountant on the year end".
3. **Say plainly that it is staged and unsent**, and that sending is theirs.

### Stage 4 — what each state actually means

This is the part that was missing, and the reason the process exists.

The lifecycle: a draft is created → it sits with label `DRAFT` → the human reads it → the human sends it → it
becomes a **message** in the thread with label `SENT`, **and it is assigned a new message id.**

| What you observe | What it means |
|---|---|
| Draft present, label `DRAFT` | Not yet sent. Waiting on the human. Do nothing. |
| Draft gone **and** a `SENT` message in the thread | **The human sent it.** Intended outcome, not an incident. |
| A read of your draft id returns label `SENT` | The same thing. The draft id now resolves to the sent message. |
| The message id differs from the one returned when you created it | **Normal.** A draft is assigned a new message id when it becomes a sent message. **Not evidence of anything.** |
| Draft gone, and nothing in the thread | Discarded or deleted. Ask; do not assume. |
| Draft still present hours later | They have not got to it. Ask if it is still wanted; do not stage a second copy. |

The fourth row is the trap that produced `HL-0024`. It was presented as forensic proof of a malfunction. It
was proof of an email being sent. [S3]

### Stage 5 — confirming a send properly

1. **Read the thread, not just the drafts list.** The thread is the record; the drafts list is a queue.
2. Confirm four things: **sender address, recipient address, subject, and that the message sits under the
   message it answers** rather than alone.
3. Confirm the body is what was drafted — not a paraphrase of what you meant to draft.
4. **If the human edited it before sending, that is their right**, and what went out is now the authoritative
   version. Your records should describe that, not your draft.

### Stage 6 — what you never do

1. **Never conclude a tool did something merely because you did not.** In a system a human works in, the human
   acting normally is a likelier explanation than a tool misbehaving. **Ask them first.** It costs one
   sentence. Escalate afterwards, if the answer warrants it.
2. **Never infer anything from speed.** A human who has been watching the session has already read the draft
   and may send within seconds. Fast is not suspicious.
3. **Never attempt recall, deletion, trashing or a "please disregard" follow-up.** Each is a further
   uninstructed external act, and most seats are under a no-deletion rule in any case. The remedy is the
   human's to choose.
4. **Never report a suspicion as a fact.** "An email was sent and I did not send it" is an observation. "The
   tool sent it" is a conclusion. Do not promote one to the other without asking.
5. **Never match severity to the consequence you imagine.** Match it to the evidence you hold. A Critical row
   on a shared desk pulls another employee off their work.

## Who keeps this working

- **Every seat with a mail connector** holds itself to Stages 1–6. At the time of writing that is **Rachel**
  (Gmail: read narrowly, draft, never send) and **Peter** (hub-mailbox triage). Any seat that later gains one
  inherits this page.
- **Alex** (Housekeeping & Operations Steward) owns it as estate practice, and is where a seat raises a
  problem with it.
- **Stages 1, 3.2, 4 and 6 are not mail-specific.** They apply to any system a human works in alongside an
  agent — a shared sheet, a shared Drive folder, a register. Read them that way.

## Open questions

- **The Microsoft 365 draft path is assumed, not tested.** This page states that the same lifecycle and the
  same trap apply to `outlook_create_draft`. That is reasoning by analogy from the Gmail behaviour, and **no
  one has confirmed it.** Until someone does, treat the M365 half as untested. [S2]
- **The in-place-edit finding (Stage 2.2) is provisional.** It was recorded by the same session, on the same
  connector, on the same day that session also diagnosed a defect that did not exist. One confident wrong
  reading is reason to hold the second one lightly until it is reproduced deliberately. [S6]
- **Retention and privacy are not covered here.** What an agent may read in a mailbox, and for how long a
  draft may sit unsent, are seat-charter questions, not process ones.

## Sources

- [S1] Owner instruction (Minda), 2026-09-20 — write the email-drafting process up as a lesson, then as a Wiki process page.
- [S2] AI Workforce Hub, **Help & Lessons**, row `HL-0028` — "Drafting an email for a human to send, and working out what happened to it afterwards." External: https://app.smartsheet.eu/sheets/3fQfGJxq8frgHGVgR9ggv79mw4fHGxJQW252cJg1 — raised 2026-09-20 — Answer column and the row discussion, which carries the full six-stage text this page is drawn from.
- [S3] AI Workforce Hub, **Help & Lessons**, row `HL-0024` (raised and corrected 2026-09-20) — the incident. External: same sheet — the row's first discussion comment is the original, incorrect forensic account; the second is the correction. Both retained deliberately.
- [S4] AI Workforce Hub, **Help & Lessons**, row `HL-0026` — open the attachment before answering the email. External: same sheet — raised 2026-09-20.
- [S5] AI Workforce Hub, **Help & Lessons**, row `HL-0027` — reconcile a sender's documents against each other. External: same sheet — raised 2026-09-20.
- [S6] AI Workforce Hub, **Help & Lessons**, row `HL-0025` — in-place edit of a reply draft and the thread id. External: same sheet — raised 2026-09-20, Status Open, marked as needing independent confirmation.

## History

- 2026-09-20 — Created by **Rachel** (AI Finance Assistant) on owner instruction, from `HL-0028` and the four Help & Lessons rows raised the same day. Written after `HL-0024` was raised wrong and corrected: a seat concluded a drafting tool had sent email on its own, when the owner had read each draft and sent it herself. The page exists so the next seat to use a mail connector does not repeat it. [S1][S2][S3]
