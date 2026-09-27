# Change log — 2026-09-19 — Rachel: first registrations, three log splits, and a governance self-check

_Session run by **Rachel** (AI Finance Assistant) on Minda's instructions. Rachel's first full working day after
being stood up on 2026-09-18. **This is Rachel's first change-log entry**, and writing it is itself one of the
session's findings — see "What the self-check found"._

## What was asked
A sequence of short instructions from Minda, each taken in turn:
1. *"All findings that need attention from other AI employees, please report to Fishbone AI Workforce"*
2. *"split the issue log now"*
3. *"now register everything moved so far"*
4. *"split current-state now"*
5. *"mirror the history files to git as well"*
6. *"cite the history files by name, not id"*
7. *"Rachel, worth to check with fishbone Group about how we work inside group"*
8. *"archive the stale duplicates and fix the citations"*
9. *"fix the README drift too and report to Alex about instructions from Minda about Financial documents. Group
   should know that and not allow to change work you are doing"*
10. *"write the change-log entry now"*

## What was done

**Registered the first document IDs Rachel has ever minted.** Eleven consolidated documents accounted for as
**nine new register rows** — `FH0000021`, `FM0000009`, `FP0000141`, `FA0000002`, `FC0000013`, `FG0000001`,
`FW0000004`, `FC0000014`, `FC0000015` — and **two correctly refused a number** under policy §4, because they were
already registered: `FH0000003` (its Source key *is* the file that moved) and `FP0000004` (a byte-identical copy
under a different Drive id, caught only by reading all 197 register titles). `FG0000001` is the **first FG row the
register has ever held**; the generic GOV.UK notice names no company, so it was registered to Group rather than
guessing an entity. **None of the six Government Gateway documents was opened**, and **no identifier value is
recorded in any row** — opening one would put a live login identifier into a session transcript.

**Split three control files, none of which was about tidiness.** `open-issues.md` had reached 31,248 bytes, past
the measured point at which Drive's `create_file` silently truncates, so the split was the only safe way to write
the file at all. Selection was by **superseded, not by length** — long rows that are entirely live stayed whole.
Nothing was edited, summarised or deleted; every moved row is reproduced verbatim. The issue log is now three files
(live / resolved / superseded history) and `current-state.md` has a companion history file.

**Extended the git mirror from four files to seven** on Minda's ruling, so the superseded record is versioned
alongside the live one. Drive remains the residence; git remains only the mirror. That ordering is unchanged.

**Reported every cross-employee finding to the Hub** rather than keeping them in Rachel's own log: `AWT-0027`
(Peter — a duplicate document number), `AWT-0028` (Alex — three Companies House PDFs with nowhere to land),
`AWT-0029` and `AWT-0030` (Victoria), `AWT-0031` and `AWT-0032` (Alex), and `HL-0017`. Items for Minda were
deliberately kept out of the Hub.

**Checked Rachel's practice against the group's own written conventions**, then acted on what that found — below.

## What the self-check found
Reading `Process-Housekeeping-and-Session-Discipline.md`, `WIKI_GUIDELINES.md` and
`Process-Fishbone-Systems-House-Rules.md` v1.3 turned up four divergences in Rachel's own practice:

- **No change-log entry had been written all day**, though the Housekeeping article makes it item 2 of the
  Definition of Done. This entry closes that. Rachel's KB also has no `Raw/`, `Wiki/` or `Outputs/` folder, so it
  does not follow the §1 folder pattern — which is not cosmetic: **§7a makes `Raw/` the inter-KB hand-off point**,
  and `AWT-0028` is partly stuck because there is nowhere sanctioned for Alex to put the files.
- **Control files were being cited by Drive id**, which three separate group articles forbid. Audited all 57 id
  citations: only **two** were the forbidden kind, and **one had already gone stale**. Both now cite by filename.
  Document and folder ids are untouched and still cited by id deliberately — `CHARTER.md` requires the Financial
  Archive folder id because its name is a mistypeable download-export string.
- **Archive suffixes used the one word the rule bans.** §2 requires a *specific* reason, not the word
  "superseded". Every archive action taken after that finding names a specific reason.
- **The 31,316 figure was over-read.** The group's own `open-issues.md` (35,143) and `CLAUDE.md` (57,925) both
  exceed it and are intact, so it is **not a file-size ceiling**. What the evidence supports is that a **single
  `create_file` write** truncates around 31,316 bytes — a write failure, not a storage limit. The three splits
  remain sound and removed a real write risk, but the reason given for them was wrong. `HL-0005` should be
  reworded accordingly; not yet done.

## Duplicate control files — found and cleared
Every one of Rachel's **seven** control files had **two live copies** in the KB root: Rachel's own, written
13:56–14:04, and a second set written **16:11–17:39** by something else. **The stale set carried the later
timestamps**, so "take the most recently modified" would have picked the wrong copy every time.

All seven were **downloaded and line-diffed before anything was touched**. Every line unique to the stale set
proved to be a pre-amendment version of a line the live set already carried — a four-file git mirror after the
list had gone to seven, a history-file id that no longer resolves — and the stale `open-issues-resolved.md` held a
**one-character corruption in the Financial Archive folder id**. Nothing unique was buried. All seven archived
with a specific reason each, **never trashed**. One live copy of each basename now.

**No new `HL-` number was minted for it.** `HL-0020` (Peter, Resolved) already describes the identical mechanism,
so the corroborating evidence went on that row as a comment, adding the two things its answer does not yet carry:
**recency is not authority**, and the difference that matters may be a single character only a byte-level diff
will catch. A lesson recurring after being marked Resolved suggests the missing piece is the **control**, not the
understanding — which is what `AWT-0034` part B asks Alex for.

## Two things Rachel got wrong, kept here because the reasoning is the point
- **The sampling trap, narrowly avoided.** The Document Register's default read came back `isSampled: true`, **83
  of 197 rows**, being simply the first in ascending order. A high-water mark computed from it gives FP's next free
  number as `FP0000043` — **already in use**; the true maximum is `FP0000140`. This is *precisely* the error Rachel
  had raised against Peter hours earlier in `AWT-0027`. Only the `isSampled` flag caught it. Standing rule now:
  read the whole sheet, confirm `isSampled: false`, and check the high-water mark **at the moment of assignment**.
- **An 837-byte mismatch was assumed to be the Drive copy's fault.** It was not. A row-by-row diff showed Drive was
  right in all three places. The rule from `RA-20` held: on a size mismatch, establish **which** copy is wrong
  before syncing either way.

## Raised for others
`AWT-0034` (Alex, High, due 26/09), raised on Minda's instruction. **(A)** The eight standing owner rulings on
financial documents, asked to be carried into the estate's **shared** records rather than living only on the Help
desk — single home SRC-31; never Collaboration Space, never OneDrive; sister-KB consolidation granted;
registration-identifier documents are registrable; personal-data bar untouched; external registers via Peter;
Shakerbone out of scope; Drive the single residence. **(B)** The standing ask that nothing other than Rachel
writes into Rachel's KB.

## Deferred / for Minda
`RA-3` (the QuickBooks routine-posting rule set, threshold and cutover — **no live posting until agreed**);
`RA-22`/`RA-23` (connector grants wider than the charter — narrow them or record them as accepted and unused);
`RA-24` (intercompany loans and unpaid corporation tax — for Minda and RMT, not Rachel); `FG-CR-0001` (the group
to carry the precedence ruling into a policy v1.4). Still open from the self-check: Rachel's missing `Raw/`,
`Wiki/` and `Outputs/` folders; the `HL-0005` rewording; and §8 escalation confirmation — the propagate rule wants
an `OI-<n>` row in the group's own `open-issues.md` for an upward escalation, and today's went to the Hub instead.
Either §8 predates the Hub or today's escalations are unconfirmed; that is a question for the group, not a thing
Rachel should settle alone.

## Governance
**Nothing was deleted, anywhere** — every superseded file was moved and labelled. No money moved, no QuickBooks
entry posted, no invoice or bill touched, nothing filed to Collaboration Space or OneDrive, no financial document
committed to git, and no other employee's KB edited. Peter's incorrect register row was **routed back to him**,
not corrected by Rachel (§10). The six Government Gateway documents were filed but **not opened**. Every Drive
write in the session was byte-verified against its local source, and every Smartsheet cell value was read back —
none truncated.
