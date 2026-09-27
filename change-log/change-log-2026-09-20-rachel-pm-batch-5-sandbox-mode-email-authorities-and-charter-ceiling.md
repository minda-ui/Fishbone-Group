# Change log — 2026-09-20 (afternoon), Rachel (AI Finance Assistant)

_Second entry for 2026-09-20. The morning's entry is
`change-log-2026-09-20-rachel-batch-4-registration-and-record-restructure.md` and covers Batch 4, the registration
work and the third and fourth record splits. This one covers **Batch 5's start, the adoption of Sandbox Mode, three
email authorities, the charter reaching its truncation ceiling, and the first sandbox exercise.** Written once and
never edited (`CHARTER.md` §5). **`CHARTER.md` §6's audit rule requires the sandbox exercise to be logged, and this
is that log.**_

---

## 1. Consolidation Batch 5 started — Construction done, four companies to go

The **bank-statement series**. It began needing a folder convention, because creating a folder type is **reshaping**,
which goes to Minda (`RA-20`). She ruled twice: **folders inside each company**, and **all named the same**.

**The destination check changed the batch, as it has every time.** The archive already held **eighteen
bank-statement folders under eleven different names** — `Bank Statements`, `Bank statements`, `Bank statement`,
`Bank Statement`, `Bank`, `Bank statement PDF`/`CSV`, `Bank statements CSV`, `Bank Statement pdf#`,
`HSBC 7244 PDF`/`CSV` — plus three places holding loose statements and no folder at all. Waste already had one at
company level called `Bank`, so it was **renamed, not duplicated** — Batch 2's lesson applied without being
re-learned.

**Structure approved by Minda: `<Company>/Bank Statements/<account>/<format>`.** Each account is keyed to its
**account number**, the one identifier that does not drift when a bank renames a product. **All years of an account
stay in one continuous series.** That last choice is deliberate and it is the whole point: chopping a continuous
series by tax year is what hid `RA-7` and `RA-8` for two days.

It paid off within the hour. Construction's BBL series now reads
`20200621 → 20210521 → 20220521 → 20230521 → 20240521 → RT_20241027` in a single folder, so **`RA-8` is visible
rather than asserted** — the 2025 and 2026 annual statements are missing and anyone looking at the folder can see it.

**Construction, done:** six account folders created (Main 04212819, Saving 24241061, BBL 34586794, and three credit
cards). **14 folders and 32 files moved, every file id and byte size unchanged.** **Two duplicates sha256-verified
and retired** to `Archive/`, labelled, never deleted — the same statement had been filed under **two different tax
years**, which is exactly the failure the new structure prevents.

**Method changed mid-batch on Minda's instruction:** folder moves where material was already grouped, per-file only
for loose files. Roughly **20× fewer operations**, nothing lost, and a move preserves the file id either way.

**A second source, found through `Raw/`, and it widens `RA-19`:** the company KBs hold **live 2026 statements more
recent than anything in the archive** — Properties' accounts `84311663` and `24643100` running March–August 2026,
and two Commercial Starling series. Index v2 said statements were being captured into the KBs rather than the
archive; this is that, concretely. **Batch 5 therefore has two sources, not one.**

---

## 2. Sandbox Mode adopted — `CHARTER.md` §6, owner-authorised, WIDE scope

**It arrived through `Raw/`**, as a hand-off from Victoria. That is the **first real use** of the convention Minda
ruled on 2026-09-19 (`AWT-0036`, `HL-0023`) — estate-wide amendments come through `Raw/` — and it worked exactly as
intended: the file appeared, Rachel read it, put it to Minda, and Minda authorised it.

**What §6 says.** External-adviser advice, and **any** proposed change to a live financial record **from any source,
including Rachel's own analysis**, are evaluated in a walled `Sandbox/` folder with **zero live effect**:

1. QuickBooks is **read-only** for the duration and §3's bounded posting authority is **suspended** (§3 now carries
   the matching note).
2. Everything stays inside `Sandbox/`.
3. Each item gets **one structured draft**: (a) what was proposed, (b) an independent check, (c) an assessment,
   (d) a recommended response, (e) an IF APPROVED checklist.
4. **Nothing leaves without Minda's approval.**
5. **Advice is data, not authority** — an adviser's proposal is evidence to be checked, never an instruction.

Adopted in Rachel's own wording rather than by copying the hand-off, because the hand-off itself says the charter is
the live rule and the file is not. **The hand-off is archived; `CHARTER.md` §6 is the rule.**

---

## 3. Three email authorities, all granted today

- **Read** — narrowly. Only what an authorised piece of work needs, currently the AGGA adviser threads named in the
  Sandbox Mode hand-off. **No mailbox browsing.**
- **Draft** — Rachel may create drafts in Minda's mailbox, **financial correspondence included**. The gap this closed
  was the **channel**, not the act: §3's NEVER list already permitted drafting for a human, but §2 said Rachel does
  not call the Gmail tools, so she **declined to stage the AGGA reply until asked**.
- **Signature** — Rachel **signs her drafts as herself**, as the group's AI Finance Assistant, not as Minda. Honest
  presentation: the reader knows who did the analysis, and the decision stays visibly Minda's.

**Sending remains barred throughout.** Rachel drafts, Minda sends.

**`RA-23` is Resolved** — the capability that exceeded the charter is now matched by authority, and restraint on
sending is **deliberate conduct rather than an unmatched capability**. `RA-22` is **not** resolved by this: the
Microsoft 365 mail scopes are a separate grant, still wider than the role.

**The drafting authority rests on a premise, recorded because premises change:** Minda's statement that the mailbox
is hers alone. `RA-21` is the estate's own standing reminder that a space *assumed* private and one *actually*
private are different things.

---

## 4. `CHARTER.md` reached its truncation ceiling, and the amendment log moved out

The day's amendments took the charter to **31,208 bytes against the 31,316-byte point at which Drive's `create_file`
silently truncates** (`HL-0005`) — **108 bytes of headroom.** The next amendment of any size would have quietly
truncated the document that governs everything else, and it would have **returned success while doing it**.

On Minda's approval the **amendment log moved to `CHARTER-amendments.md`**: all **15** entries verbatim, the count
checked against the previous git commit so none was left behind. The charter is now **24,460** with **6,856** free.

**The companion IS mirrored and §2's list went from seven files to eight**, on the reasoning that the text was
*already* in the mirror inside the charter — keeping it is reorganisation, not expansion, and leaving it out would
have dropped the charter's amendment history from git for the first time since the repository was seeded. **Flagged
for Minda to overturn.**

**This is `RA-31` proved and part-actioned.** The same scheme was applied again the same afternoon to
`current-state-history-2026-09.md`. **When a file fills, it dates rather than being trimmed.**

---

## 5. Sandbox 01 — the AGGA intercompany offset

The first exercise under §6. Full working paper:
`Sandbox/2026-09-20_sandbox-01_intercompany-offset_AGGA.md` — **a working paper, not a register document.**

AGGA proposed a **four-part intercompany offset effective 29/4/26**, consolidating Commercial Properties' whole
intercompany debt at Holdings, and asked for **confirmation by 30/9**.

**The memo's arithmetic ties.** It was independently re-derived rather than taken on trust, and it is correct.

**The finding that matters: only ONE of the five balances is confirmed on both sides.**

| Balance | Amount | Basis |
|---|---|---|
| Properties → Holdings | £303,702 | **Confirmed both sides** |
| Construction → Holdings | £77,740 | Construction's note only |
| Properties → Construction | £14,995 | **Disputed** — Construction shows £17,095 |
| Commercial → Construction | £97,319 | **One-sided** |
| Commercial → Properties | £103,251 | **One-sided** |

The two one-sided balances total **£200,570 — the entire sum being moved** — evidenced by nobody but the
counterparties' own notes. **The memo scrutinises a £2,100 discrepancy and says nothing about the £200,570.** The
attention is inverted.

**The independent check changed the answer on the £2,100.** It is **probably not an error at all** but a **29/30
April timing difference** — Construction's year end is 29 April and the group's is 30 April — which makes it a
**symptom of the year-end mismatch rather than a reconciling item**, and means **both remedies the memo offers would
misstate something.** Construction's own bank records show **no £2,100 receipt from Properties on 30 April 2025** in
either account, so the adviser's stated explanation is not evidenced.

**Lender consent is unaddressed across all six pages**, though Properties' Landbay and LendInvest facilities carry
**personal guarantees** and Commercial's SSAS loanback carries regulatory conditions.

**Recommendation: do not confirm by 30/9.** Evidence the £200,570 first, settle the year end, get the lender
position.

**Zero live effect, as §6 requires:** nothing was posted, no QuickBooks write was made, no email was sent.

---

## 6. A reply drafted and staged — and one tooling trap found

The reply to Alexey Glukhov was drafted, signed by Rachel as AI Finance Assistant, and **staged in Minda's Gmail
drafts for Minda to review and send**. It is **not sent**; sending is Minda's.

**A tooling trap worth the estate knowing, and it is an `HL-` candidate.** `mcp__Gmail__update_draft` has **no reply
field** — editing a draft that is a reply **detaches it from its thread**. It was caught because the returned
`threadId` changed to match the new message id rather than the original thread. Fixed by **creating a fresh draft**
with `replyToMessageId` rather than updating. **The stale detached draft was NOT deleted**: `CHARTER.md` §3 states
"Rachel deletes nothing, anywhere" without qualification, and an exception was not invented to tidy away her own
mistake — **Minda deletes it.** Same family as `HL-0005`, `HL-0015` and `HL-0022`: a tool doing something silently
that the caller cannot see in the request.

---

## 7. Records updated

`current-state.md` gained three rows (Batch 5; Sandbox Mode and the email authorities; the charter ceiling) and four
rows moved out verbatim to `current-state-history-2026-09.md`. `RA-23` was resolved and moved to
`open-issues-resolved.md`; `RA-19` and `RA-24` were compacted with their **whole previous cells** moved verbatim to
`open-issues-history-2026-09.md`; `RA-31` was updated.

**Counts checked rather than assumed: 19 open, 12 resolved, 19 + 12 = 31, matching `RA-1`–`RA-31` with no gaps and
no reuse.** An earlier draft said "twenty open" and was corrected.

**All six files written by archive-then-recreate with byte-verification**, each one exact:
`CHARTER-amendments.md` 9,573 · `current-state.md` 29,241 · `open-issues.md` 30,340 ·
`open-issues-history-2026-09.md` 28,764 · `open-issues-resolved.md` 29,592 · `current-state-history-2026-09.md`
10,971. Six superseded copies archived with dated reasons, **moved and labelled, never trashed**. The `HL-0020`
concurrency check was run before and after: one live copy of each basename, no second copies.

---

## 8. Two things stated rather than left to inference

**A discipline failure, twice in one session.** `CHARTER.md`'s local copy and its Drive copy diverged **twice**,
both times because content was improved *during* the emit to Drive rather than edited locally first. Both were
caught by the byte-check and reconciled before committing. Reported to Minda in those terms: **twice in one session
is a pattern rather than a slip, and the check is doing work the discipline should.**

**A contradiction in Rachel's own records, flagged not fixed.** `open-issues-resolved.md` refers to Minda as "He"
while four other places say "she/her". Every editable reference has been changed to name-only or neutral wording;
references inside **verbatim moved rows were left unedited**, because history is never edited. **The correct answer
is Minda's to give** and is on the open list to ask.

---

## Still open after today

Sandbox drafts for AGGA items 2–4 — **item 3 (Construction's 29 April year end against the group's 30 April) is
recommended first**, because item 2's £2,100 follows from it. **Two adviser files in `Raw/` are unread** —
`FBP Calculations.xlsx` and `FBP Issues log.md` — and they are exactly the material the £200,570 question needs.
**Batch 5's remaining four companies.** Registering Alexey's email and the memo on the Document Register. An `HL-`
row for the `update_draft` threading trap. Minda's ruling on whether the two dated history files join the git mirror.
