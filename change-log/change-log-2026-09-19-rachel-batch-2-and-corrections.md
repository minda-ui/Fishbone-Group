# Change log — 2026-09-19 (second run) — Rachel: consolidation Batch 2, RA-27 settled, and four corrections

_Session run by **Rachel** (AI Finance Assistant) on Minda's instructions. **This is the second entry for
2026-09-19.** The first — `change-log-2026-09-19-rachel-registrations-splits-and-governance-corrections.md` —
covers the earlier run and was written before this work began. House Rules §5 allows **one file per session or
run**, and an entry is **written once and never edited**, so the corrections that belong to the first entry are
recorded here rather than by amending it. That is the first thing this entry has to do._

## What was asked
1. *"are we sort everything before we can move to batch 2?"*
2. *"open the CT600 pair and compare them"*
3. *"run batch 2 now and record RA-27 as resolved"*
4. *"AWT-0016 update"* / *"AWT-0016. Do we have all documents from CH?"*
5. *"yes, take the finance duplicates and re-scope AWT-0031 to Alex"*
6. *"update current-state and write the change-log entry"*

## Corrections to the first entry, and to what Rachel told Minda

**1. The duplicate control files were not caused by a rogue process.** The first entry, and Rachel's report to
Minda, said an unknown process had re-created stale copies of all seven control files between 16:11 and 17:39 and
asked for it to be **stood down**. **Alex established on `AWT-0034` that those timestamps were Alex's own repair
session restoring the files** — not the moment the duplicates appeared. The real cause was a **multi-actor
concurrent race**: Rachel's, Victoria's and Minda's sessions all editing the same control files inside one rapid
burst, with the archive half of archive-then-recreate firing while the recreate half was silently skipped. The
archiving Rachel did was still correct — that content was genuinely superseded — but the account of *who* and
*why* was wrong, and it asked for an intervention against a colleague doing repair work.

**2. `AWT-0028` is not stuck for want of a landing place.** The first entry said `Raw/` was missing and that
`AWT-0028` was "partly stuck because there is nowhere sanctioned for Alex to put the files". Wrong: `AWT-0028`
names three specific Financial Archive `Annual Accounts` folder ids. The only blocker is **`HL-0014`** — no
practical way to relay a binary from an external API into Drive, with Peter getting a hard 403. Creating `Raw/`
did not and could not unblock it, and those are financial documents, which do not use the §7a hand-off anyway.

**3. `RA-28` never gated Batch 2.** Stated in `current-state.md` and to Minda. Unidentified files are excluded
from **every** batch as a standing rule; Batch 2's scope was fully defined without them. Corrected in `RA-28`.

**4. `AWT-0031` was mis-routed, and Alex was right to block it.** See below.

## RA-27 — settled, and the premise was wrong
Two Commercial Properties CT600 2025 files, 851,570 and 853,233 bytes, which the issue described as *"one is a
later or earlier version and there is no way to tell which"*. Opened and compared on Minda's instruction:

**They are one document exported twice.** Same DocuSign envelope `FFDA37E1-7308-8FA3-813A-C3F9C82EA8C7`.
Extracted text **byte-for-byte identical at 37,741 bytes**. All **12 pages** hashed individually and matching.
Same page size, same signature type, same reason string. The 2,337-byte difference is container, not content: the
851,570 copy carries a **`DocuSign:IsRepaired`** marker and XMP date 2026-09-07; the 853,233 copy carries no
repair marker and XMP **2026-04-30**, the signing date matching the `APR-30-2026` filename.

**Not cryptographically validated.** Comparing structure and content is not verifying a certificate chain. Said
so plainly rather than implying more assurance than was obtained.

## Batch 2 — and checking the destination changed it
Index v2 §10 states that v2 **never re-verified the Financial Archive**. So before moving anything, the target
folders were listed. **The archive already held the FP and CP CT600 2025s.**

Of Batch 2's four files, **one moved and three were retired**:
- **MOVED** — FC CT600 + corporation tax computation YE 29 Apr 2024, into `Fishbone Construction Ltd > Annual
  Accounts`. Same-Drive move, **file id and 1,011,120 bytes unchanged**, verified after.
- **RETIRED** — the FP group-KB copy, **sha256-identical** to the archive primary.
- **RETIRED** — both CP KB copies: one sha256-identical to the archive primary, one the repaired re-export.

All three moved to `Archive/`, labelled with the primary's id, **never deleted**. **Following the move list as
drafted would have created three duplicates of documents already in the single home** — the exact mess
consolidation exists to end. Every remaining batch now begins by checking the destination, carried as `RA-29`(g).

**Register**, read unsampled (**206 of 206 rows**), high-water checked at the moment of assignment:
**`FC0000016`** minted for the moved CT600; **`FP0000142`** minted for the archive's FP CT600, which had **never
been registered at all**. `FM0000006` already covered the CP CT600, so **no number was minted** (§4) — only its
Location corrected to the archive primary, Source key deliberately left alone. Register now **208 rows**.

The `FP0000142` finding matters beyond itself: the reconciliation gap in `RA-15` runs **inward** as well as
outward. There are unregistered documents **inside** the archive, not only outside it.

## Companies House — the honest position
Asked directly whether we have all the CH documents. **No — not one PDF is in the estate.**
- FY2023 accounts ×3 (`AWT-0016`): retrieved and registered with barcodes, page counts and sha256, but all three
  register rows read **`Location: PENDING`**. Verified copies of nothing: a citation is not a filed document.
- FY2025 filed accounts ×5 (`AWT-0017`): **filing dates only.** Peter's own note says the document-retrieval gap
  still applies.
- CT600s: **not obtainable from Companies House at all** — HMRC-only, confirmed from filing-history categories.

One blocker for all of it, `HL-0014`, and it will not clear itself. `AWT-0028` sits with Alex, Open and untouched.

## Alex's replies, and what they corrected
`AWT-0032` **closed Done** — the "six sister KBs" undercount is confined to Rachel's own documents; the shared
estate lists seven everywhere. Clean, thorough, no fix needed.

`AWT-0031` **blocked, and rightly.** Alex checked live Drive against index v2 §7 and found: Rachel's claim to have
retired the finance duplicates overstated what had happened (one accounts duplicate plus the six Government
Gateway files, not the set); the "tenth set from the Document Register" is **not in index v2**, because it came
from a register query run after v2 was built and the task never said so; and the incorporation folder is excluded
from any move by index v2's own §11. **All three accepted.** On Minda's instruction the **seven remaining finance
duplicate sets are taken back onto `RA-11`** — FW Members Accounts 2025, FW Pages for Registrar 2025, the 145 High
Street East pack, the SSAS Loanback LA01801 triplicate, and the SSAS Legal Mortgage, Completion Statement and
Receipted Invoice. `AWT-0031` is re-scoped to the one structural question that is genuinely Alex's and not
Rachel's: whether a company KB should hold a second copy of the group's 24-file incorporation pack at all.

`AWT-0034` **Part A declined, correctly** — nothing can propagate into shared records until `FG-CR-0001` produces
a v1.4, since v1.3 §9 reserves the locked article to the group.

## Two process failures of Rachel's own, both worth keeping
**1. Editing prose while emitting a file — twice.** Uploading `open-issues.md`, Rachel improved several rows while
re-typing them into the upload. Drive came back 24,505 against a local 22,814; later, 26,406 against 25,743. Both
were byte-verification failures **of her own making**, and both were recovered by extracting the emitted text back
out of the session transcript so local and Drive could not silently diverge. The recovery works; the habit is the
fault. **Rule adopted: edit the local file first, then emit it verbatim.** Applied to `current-state.md` at the end
of this run, which matched on the first attempt at 25,922 bytes.

**2. Files that state their own byte size cannot be edited in one pass.** Writing the new number changes the
number. This convention caused both failures above. **Dropped:** sizes are now quoted only as historical facts —
what a file measured at a split or a write — never as a claim about the file being read. Recorded in
`current-state.md`. One residue left deliberately: `open-issues.md` still states 25,743 where it is 26,406,
because correcting it would make local and Drive differ **at the same byte count** — a silent divergence, which is
worse than a stale number. To be fixed at its next rewrite.

## A security finding nobody caused and everyone should know
Drive's `search_files` returns **`contentSnippet` previews**. Listing the Financial Archive root printed the actual
**Government Gateway user ID digits** — the values Rachel had protected all session by deliberately never opening
those files. **Not opening a document is not sufficient protection when the search tool returns its contents.**
The values have not been recorded or repeated anywhere. `excludeContentSnippets: true` is available on
`get_file_metadata` and is now used. This belongs on Help & Lessons and affects every employee who lists a Drive
folder — **not yet raised**, and it should be.

## Deferred / for Minda
**`FG-CR-0001` needs progressing** — it is now the thing gating consistent financial-document filing across all
seven KBs, and Alex cannot move it. **`AWT-0028`/`HL-0014`** needs Alex, Minda or Eugene: Peter's 403 will not
lift itself. Batches 3–5 are clear to run, Batch 3 now also carrying the seven finance duplicate sets; **Batch 5
still needs a folder convention agreed with Minda** for the bank-statement series. Unchanged and still Minda's:
`RA-3` (QuickBooks rule set — no live posting until agreed), `RA-22`/`RA-23` (connector grants wider than the
charter), `RA-24` (intercompany loans and unpaid corporation tax — for Minda and RMT). Not yet done: the
`HL-0005` rewording, the §8 escalation question, and the `contentSnippet` finding above.

## Governance
**Nothing was deleted, anywhere.** One document moved; three were retired by moving and labelling. No money moved,
no QuickBooks entry posted, nothing filed to Collaboration Space or OneDrive, no financial document committed to
git. Peter's register rows were not edited by Rachel. The two CT600 PDFs were decoded into a session scratchpad
for comparison only and written nowhere. Every Drive write was byte-verified against its local source — including
the two that failed, which is how they were caught — and every Smartsheet cell value was read back, none
truncated.
