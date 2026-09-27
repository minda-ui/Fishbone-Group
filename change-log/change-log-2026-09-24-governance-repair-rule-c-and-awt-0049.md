# Change log — 2026-09-24: governance repair, and a rule that had been reported done for three days

_Rachel, AI Finance Assistant. Written once, never edited (`CHARTER.md` §5)._

**This entry backfills as well as records.** It covers **this session (2026-09-24 morning)** and the **second half of
2026-09-23**, which had no dated entry of its own. That omission is itself recorded here rather than papered over: two
change-log entries were written on 2026-09-23 for the `current-state.md` restructures, and the work that followed them —
the charter split, `HL-0046`, the Annex A correction, `RA-35` and `Sandbox 09` — was committed to git and written to Drive
but never dated into the log. Backfilling it under today's date, saying so, is the honest form; writing it as though it had
been logged yesterday would not be.

---

## Part 1 — the finding this session exists for

**`AWT-0049` had read `Done` since 06:55:45 on 2026-09-21, and the work was never done.** The row asked for Rule C —
**verify against the system of record before reporting a status** — to be folded into `CHARTER.md` §0. It was not folded in,
and it was not in the charter three days later.

**Established by four independent checks rather than one, because one would have been the same mistake again:**

| # | Check | Result |
|---|---|---|
| 1 | Is the rule in `CHARTER.md`? | **No** — §0 held Rules A, B and E only |
| 2 | `git log -S "Rule C" -- CHARTER.md` | **One commit**, `05bdf5e` — and that Rule C was the **plain-brief** standard from `AWT-0066`, a different rule |
| 3 | §0's own note of 2026-09-22 | Records checking and finding *"Rule A and Rule B only, no Rule C"* — **true then**, which dates the gap before the 22nd |
| 4 | Does `AWT-0049` appear in any record file? | **No.** And its hand-off note is not in `Raw/` |

**Who closed it cannot be established, and is not guessed at.** The Status cell history shows `Open` 06:07:57 → `Done`
06:55:45, both writes through the `minda@` account — which is how **every** seat in the estate writes, so it identifies no
person. A Rachel session was demonstrably live in that window: the `Sandbox 07` and `Sandbox 08` papers are timestamped
05:43–06:05 the same morning. That makes it likely Rachel's own, and the record says so rather than leaving the implication
to hang over the other seats.

**The row predicted its own failure, in writing.** `AWT-0049` carried an explicit instruction: `CHARTER.md` stood at 31,054
of the 31,316-byte silent-truncation ceiling — **262 bytes** — and the row said to **mark it Blocked with the specific
blocker rather than risk a silent truncation**. It was marked Done instead. Had it been marked Blocked, the gap would have
been **visible** for three days instead of invisible. The difference between those two words is the whole of this entry.

**And the irony is exact.** Rule C exists because Alex escalated a reporting-reliability gap — a status reported from a
hand-back message rather than from the system of record. Its own rollout row was closed from intention rather than from the
system of record. **The rule was defeated by the thing it describes, on its way in.**

**How it was found:** by doing Rule A properly. The session-start Hub read returned ten rows against the six carried in
memory; four were unfamiliar; one of those four said `Done` for work the charter did not show. Reading the Hub and then
checking the charter **against** it — rather than checking the charter against memory — is Rule C operating on its own
rollout, before the rule was even written in.

---

## Part 2 — what was written, and where

### Rule C, folded in

`CHARTER.md` §0 gains **Rule C**, between Rule B and Rule E. **29,269 → 31,698 bytes**, byte-verified. Logged as
**Amendment 25**. Written in this desk's own conventions per the `Raw/`-only convention, and it earns its place by
generalising four things already learned here rather than importing a rule from elsewhere:

- a `create_draft` response is not evidence a draft exists (§6 rule 6, `HL-0024`);
- a tool returning success is not evidence of a complete write (`HL-0005`, hence byte-verification);
- `find_in_sheet` returning nothing is not evidence nothing is there (`HL-0036`);
- and **Rachel's own earlier statement is a proxy too** — on 2026-09-23 `Sandbox 08` reported an Annex A signature *"not
  established"* when the Document Register row for `FP0000020` already read *"Executed"*.

**Rule C is the general form of all four.** That is why it was worth writing properly rather than pasting.

### Two corrections in the same pass

**The §0 preamble said "two standing rules"** — written when there were two. There are four. Corrected, with each rule's
date, and the old wording noted.

**The missing letter D is now stated as deliberate.** Alex's Rule D is his hourly board-drift routine, which is his and not
Rachel's, so this desk runs A, B, C, E with no D. **The gap is left open rather than closed by renumbering**, because a
rule's letter is part of its identity across seven knowledge bases — which is the entire finding of `HL-0046`, raised the
previous evening after the same standard was found carrying three different letters across four seats. Tidying the sequence
would recreate the problem `HL-0046` exists to prevent.

### The live issue log's header, compacted

`open-issues.md`'s header went **6,561 bytes → under 2,000**. Nine blocks of the file's own **maintenance** history — the
splitting scheme, four dated split/move notes, the mirror-scope note, the 2026-09-21 ceiling correction and three
superseded issue counts — moved **verbatim, by block index, nothing retyped** to `open-issues-history-2026-09-part2.md`.

**Two were actively misleading where they sat.** One explained the splitting scheme in terms of a **31,316-byte truncation
ceiling that no longer exists** — its own successor block says so. The other recorded the git mirror at *"four files to
seven"* when the list has since been widened twice and now reads **twelve**. A reader starting at the top of the estate's
live finance issue table met both before reaching a single open issue.

**The destination was written and byte-verified before the source was trimmed.** That is create-then-archive applied to a
move: had the order been reversed and the second write failed, Drive would have lost 5,873 bytes that exist nowhere else.

`open-issues.md` **41,036 → 38,305** even after `RA-35` grew by 1,882 bytes; headroom **2,820 → 5,551** against the proven
43,856 write capacity.

### `RA-35` escalated, and it is worse than it was

**Reading `FH0000009` — the Holdings board minute — changed the finding.** `Sandbox 08` had explicitly declined to open it
(*"they are Holdings' register, not Properties'"*), a defensible scoping call for a paper about Properties' issues log and
the wrong one here. It cost three days.

**Resolution 6 makes the waiver conditional on three things, not two, and the third is the one nobody tracked:**

> *"the waiver is conditional on (i) the members' written resolution …, (ii) the board of Fishbone Properties Ltd minuting
> its acceptance …, and (iii) the company and Fishbone Properties Ltd signing a letter of variation recording this
> resolution, **in a form approved by the company's accountants**"*

— and resolution 6(g) requires RMT to confirm the accounting and corporation tax treatment **before the letter of variation
is signed**. So the note on the face of the executed `FH0000012` is **not a stray drafting instruction. It is the
unsatisfied condition, still printed on the document.**

**Two separate sets of conditions exist and only one was ever tracked.** `FH0000012` ¶12's two bind **Properties**, and
Properties discharged both on 10/09/2026, twenty days early, properly documented. Resolution 6's three bind the **waiver
itself**, and the third sits on **Holdings'** side. Nothing in this is a failure on Properties' part.

**Two further things the minute settles:**

- The board costed the waiver at **£11,954** — the accrual — while the standing orders pay **£11,964**. That
  independently corroborates `Sandbox 07`'s £10-a-year rounding overpayment, from the board's own paper.
- **`FH0000009` *also* reached signature carrying its own drafting note**, which says the effective date and waiver period
  in resolution 6 *"are proposals for the board to confirm or amend before signing"*. So **both** executed documents were
  signed with delete-before-signing instructions still on their face. **That is a generation-and-signing process defect,
  not a one-off slip**, and it is worth raising estate-wide.

Full working, the conditions table and a draft letter to RMT are in `Sandbox 09`, written 2026-09-23 under §6.

---

## Part 3 — what could NOT be done, and why that is the useful part

**The two Victoria hand-offs in `Raw/` were to be archived as processed. Neither can be.** Both were read before being
touched — Rule C applied to housekeeping — and **both carry live, unactioned content:**

**`2026-09-21_handoff_Victoria-to-Rachel_alexey-three-new-replies.md`** routes three Alexey asks and flags two as beyond
what this desk may answer:

- *"Please send me the full sets of accounts for all entities of the Fishbone group plus CT returns"* — **needs Minda's
  sign-off** before anything goes out, CT600s being a different document class;
- *"Yes, please ask RMT to send the reconciliation schedules"* — **a request to contact the accountants**, which is
  Minda's call under §3, not Rachel's;
- and a third — reconcile the detailed FY2025 P&L against QuickBooks — which **is** this desk's work.

Victoria's note records that she flagged the first two to Minda in the morning digest of **2026-09-21** as needing a steer
**that day**. It is now the 24th.

**`2026-09-20_handoff_Victoria-to-Rachel_alexey-three-emails.md`** is largely worked — `Sandbox 03`–`06` answer it — but it
carries an instruction that may not have been followed: *"Check the new attachment against those points before drafting —
some may now be resolved."* The attachment is the **updated** group structure document, which supersedes the version
reviewed at 18:44 on 2026-09-20. Whether it was read against the four points raised is **not established**, and this entry
does not claim it was.

**A second thing surfaced by reading them.** Inbound adviser **financial documents** are sitting in `Raw/` unfiled and
unregistered since 2026-09-20 — the FY2025 intercompany matrix (`.xlsx`), the offset memo (`.pdf`), `FBP Calculations.xlsx`
and the issues log. Victoria's note explicitly anticipated filing them and pointed at policy v1.4 §7b. They are
`RA-19`/Batch-6 adjacent and are **named here rather than moved**, because Batch 6 is parked precisely at the point where
the next step would be a guess.

**So the honest count on this session's structural list is four done, one not doable, one awaiting a ruling** — and the
not-doable one turned out to carry a three-day-old adviser ask. An archived note nobody reads and a processed note nobody
archived look identical from outside the file. That is why they were opened.

---

## Part 4 — backfill: the second half of 2026-09-23

Recorded here because it was never dated into the log. All of it is on Drive byte-verified and in git.

| What | Where it landed |
|---|---|
| `CHARTER.md` §2 split out on **measured churn** — §2 amended ten times of 21, §0 once; the recommendation had named §0 and the measurement overturned it | `Charter-Locations-and-Connectors.md`, 9,135 bytes; charter 33,140 → 29,269 |
| Plain-brief re-lettered **C → E**, adopting Minda's ruling | `CHARTER.md` §0; Amendment 24(b) |
| **`HL-0046`** raised — the same standard carrying three letters across four seats, and no channel for landing a *correction* to a rule already landed | group Help & Lessons desk |
| The Annex A item **corrected off** the `Next action` row — both `FH0000012` ¶12 conditions had been satisfied on 10 September and the register said so when Rachel reported otherwise | `current-state.md` |
| **`RA-35`** opened | `open-issues.md` |
| **`Sandbox 09`** — the RMT question, with a draft letter, not staged in a mailbox and the reason recorded | `Sandbox/`, 15,249 bytes |
| Chaser to Holdings for the ¶15 acknowledgement, drafted, **unsent**, with the mailbox defect flagged | Gmail draft `r-2040346546156479381` |

**The mirror count question is still open and is Minda's.** The charter split created a twelfth governance file, and every
previous widening of that list was her explicit call. Rachel's reading — that it follows `RA-31` rather than extending
scope, because the new file holds content carved **out of** a mirrored file — is recorded in
`Charter-Locations-and-Connectors.md`, and if she rules otherwise that one line is what changes.

---

_Rachel, AI Finance Assistant — Fishbone Group. Nothing in this entry was posted to a live financial system; the §3
QuickBooks posting authority was not exercised and QuickBooks was not called._
