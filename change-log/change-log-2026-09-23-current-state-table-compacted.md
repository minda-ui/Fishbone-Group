# Change log — 2026-09-23 (late evening): `current-state.md`'s table compacted, and nine rows of duplicated rule retired

_Rachel, AI Finance Assistant. Written once, never edited (`CHARTER.md` §5)._

**What happened.** `current-state.md`'s state table went from **25,085 bytes to roughly 13,000**, and the file from
**30,591 to 20,647**. Thirteen rows moved out, verbatim, and are reproduced **whole and unedited** below. Two pointer
rows replaced them.

**This is the second cut at the same file today.** The morning's restructure (recorded in
`change-log-2026-09-23-current-state-header-narrative-retired.md`) took nine dated session narratives out of the
**header**, 42,647 → 30,189. It left the table alone, and the table was the larger half — 25,085 of 30,591 by the end.
So the header was fixed and the actual bulk was not, which is worth stating plainly rather than presenting this as a
planned second phase. It was not planned; it was the obvious next thing once the first cut made the proportions visible.

---

## Part 1 — nine rows that were a second copy of the charter

**The finding.** Nine rows of a *present-state snapshot* were restating the *live rule*: `Precedence`, `Authority`,
`Main Financial Archive`, `Where financial documents go`, `Filing rule`, `Git mirror`, `Connectors`, `External
documents` and `Sandbox Mode`. Together, **8,542 bytes** — a third of the table — describing what `CHARTER.md` §§0–6
already say, in this file's own paraphrase rather than the charter's words.

**Why that is a defect and not merely verbose.** The estate's founding rule is **cite, never copy — one fact, one
home**. Two copies of a rule drift, and the drift is invisible because each copy reads correctly on its own.

**This file had already learned exactly this lesson and not applied it here.** The `Open issues` row records that a
duplicated `RA-<n>` list was removed from this table because it had drifted — it still called `RA-5` "CT600 2025
missing ×3" and `RA-14` "AMFA has no finance records" after the log had corrected both — and the row's own conclusion
reads: *"Two copies of one list is how that happens, so now there is one."* That reasoning was applied to the issue
list and never to the charter rows sitting in the same table.

**And it had already bitten, within the hour.** The `Git mirror` row read **ELEVEN** files. The charter split earlier
this same evening took the mirror to **twelve**. The row was stale before this edit began — which is the argument for
the edit, arriving unprompted and on schedule.

**Where those rules live now, for anyone following a pointer:**

| What | Where |
|---|---|
| Precedence; session start; Rules A, B and E | `CHARTER.md` §0 |
| Role; the main Financial Archive | `CHARTER.md` §1 |
| **Every authority and every prohibition** | `CHARTER.md` §3 |
| Data care | `CHARTER.md` §4 |
| Method — archive-then-recreate, byte-verify, change-log | `CHARTER.md` §5 |
| Sandbox Mode | `CHARTER.md` §6 |
| Folder ids; the git mirror list; connectors and grants; external presentation; house style | `Charter-Locations-and-Connectors.md` |

**The nine rows, verbatim and entire:**

| **Precedence** | **Owner ruling (Minda, 2026-09-19): “My rulings override the policy for financial documents.”** Now `CHARTER.md` §0 — the **second** owner-authorised exception to the group governance, alongside the bounded QuickBooks exception. Where the group's locked `Wiki/Process-Document-Numbering-and-Filing.md` (v1.3) and Minda's financial-document rulings conflict, **Minda's rulings win for financial documents**. Scoped to financial documents; it does **not** relax the policy's personal-data bar. See the Group policy conflict row. |

| Authority | Read finance systems; write own KB + working papers; append to the group Document Register and assign document IDs. **Filing financial documents into Collaboration Space — withdrawn 2026-09-19** (see Where financial documents go). **Consolidation authority granted 2026-09-19 (Minda), all three parts of `RA-20`:** file into the Financial Archive, take a financial document out of another knowledge base, and write on OneDrive to retire a consolidated source. Fixed method — **copy in → byte-verify → register → then retire** (mark superseded and move); where both ends are on Drive, a **move** is used instead, because it preserves the file id. **Rachel still deletes nothing, anywhere**; does not redesign the archive's structure; does not tidy another employee's KB beyond taking the document out; personal material untouched. **Post routine, reversible, low-risk entries to QuickBooks** (owner-authorised exception, §3) — **attended dry-run-then-tick until Minda confirms the unattended cutover**. Payments, invoices/bills, money movement, chart-of-accounts/tax changes and any HMRC/Companies House filing are **always human**. |

| **Main Financial Archive** | **Owner ruling (Minda, 2026-09-19): the group's single home for financial documents is Google Drive `Finance-20260903T154848Z-1-001 / Finance` — folder id `1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4`, inside `1qgzUrnKcH5QMf8T-PEJxVNN1v8fSh8En`, known to the estate as SRC-31.** Six company folders, each with an `Annual Accounts` subfolder. Where a document also exists in the Fishbone Group KB `Archive/` or the OneDrive tax archive (SRC-32), **the Financial Archive copy is primary** and the others are secondary (`RA-11`). Cite the folder **id**, not the name — the name is a download-export string. Rachel **indexes** the archive and, since the 2026-09-19 grant, **files into it**. Filing into a folder that already exists is adding; **reshaping the structure still goes to Minda first** (`RA-20`). |

| **Where financial documents go** | **Owner ruling (Minda, 2026-09-19): financial documents live only in the main Financial Archive — never in Collaboration Space, never on OneDrive.** Security grounds: the Collaboration Space is shared to the whole `fishboneconstruction.co.uk` domain **as writer**, and OneDrive is a personal drive outside the designated home. Written into `CHARTER.md` §1 and §3; Rachel's previous power to file finance documents into Collaboration Space is **withdrawn**. The §7a hand-off is **not used for financial documents** — the single-home ruling means the archive holds the document and a KB cites it; Rachel's reading, overturnable (`RA-20`). **Authority (3) does not cut across this ruling:** writing on OneDrive is **write-to-retire, not write-to-file**. **Material is already in Collaboration Space** (`FC Finance`, `FW Finance`, `CP Finance`, `F Finance` and others) — raised as `RA-21`. |

| **Filing rule** | **Owner ruling (Minda, 2026-09-19): Google Drive is the single residence for every file.** The git mirror `minda-ui/rachel` carries **only the governance files** — **four → seven → eight → ELEVEN**, each step Minda's: the four live ones (`CHARTER.md`, `README.md`, `current-state.md`, `open-issues.md`), then the three history files (`open-issues-resolved.md`, `open-issues-history.md`, `current-state-history.md`) on 2026-09-19, then `CHARTER-amendments.md`, and on **2026-09-21** the three dated history files (`current-state-history-2026-09.md`, `open-issues-history-2026-09.md`, `open-issues-history-2026-09-part2.md`), so the superseded record is versioned alongside the live one. **`.gitignore` now excludes nothing.** The last step closed a real gap rather than adding scope: those files hold rows that moved **out of** mirrored files, so excluding them dropped content from git and the hole grew with every move (`RA-31`). **This row read “four to seven” until 2026-09-21.** **Drive stays the residence; git is the mirror** — that ordering is unchanged. **No financial document or working paper ever goes to git.** Written into `CHARTER.md` §2 and §3 and into `README.md` on 2026-09-19. |

| Git mirror | `minda-ui/rachel` — created (Minda) and seeded 2026-09-18. **Scope narrowed 2026-09-19** to governance files only, then **widened the same day from four files to seven** to take in the history files, then to eight, and on **2026-09-21 to ELEVEN** — the dated history files (see Filing rule). The working folders (`Budgets/`, `Reconciliations/`, `QuickBooks/`, `Archive-Index/`, `_unverified/`) exist on **Drive only** and were removed from the mirror. |

| Connectors | Google Drive + Smartsheet + QuickBooks (Intuit) + Web. **Rachel does not send email** (conduct, not capability) — **correction 2026-09-19:** a **Gmail connector is in fact attached** to the session, with send/reply/forward/trash tools; the charter's “No Gmail” was wrong about what is attached (`RA-23`). Rachel does not call them. **Microsoft 365 / OneDrive also attached** (account `info@fishbonedrylining.onmicrosoft.com`). **Correction 2026-09-19:** this row previously said “read-only”, which was **wrong about the grant** — the connector actually carries `Files.ReadWrite.All`, `Mail.Send`, `Mail.ReadWrite` and `Calendars.ReadWrite`. **Updated 2026-09-19:** the **file** half is no longer read-only — authority (3) permits writing on OneDrive to retire a consolidated source. The **mail** half stays wholly unused: no sending, no mailbox reading. Narrowed ask on `RA-22`: drop the mail scopes, keep the files scope. **The QuickBooks connection is bound to ONE company — `Fishbone Construction Ltd`** (confirmed 2026-09-20 by `company_info`). The estate runs one QB file per entity, so the other five companies' ledgers are **not reachable from this desk**; that limit is stated in `Sandbox 06` and `Sandbox 07` rather than worked around. |

| **External documents** | **Owner ruling (Minda, 2026-09-19): documents needed from Companies House or any other external register are NOT fetched by Rachel.** She raises a task for **Peter** (who runs the Companies House watch) and registers the request in the AI Workforce Hub `Tasks & Requests`; **Alex** assists with routing. Written into `CHARTER.md` §1 and §3 on 2026-09-19. |

| **Sandbox Mode — and the email authorities that came with it** | **2026-09-20, owner-authorised (Minda), WIDE scope.** Now `CHARTER.md` **§6**. External-adviser advice, and **any** proposed change to a live financial record **from any source, including Rachel's own analysis**, are evaluated in a walled `Sandbox/` with **zero live effect** — QuickBooks read-only, the §3 posting authority **suspended** — and reach Minda as a structured draft she approves before anything is posted or sent. **It arrived through `Raw/`**, a hand-off from Victoria: the **first real use** of the convention Minda ruled on 2026-09-19 (`AWT-0036`, `HL-0023`), and it worked as intended. Adopted in Rachel's own wording, because the hand-off itself says the charter is the live rule and the file is not; the hand-off is archived. **Three email authorities followed, all granted the same day:** Rachel may **read** email (narrowly — what an authorised piece of work needs, no browsing); may **create drafts** in Minda's mailbox, financial correspondence included; and **signs them as herself**, leaving the decision visibly Minda's — **to an external party, plain role only**: `Rachel — Financial Assistant`, **no AI descriptor** (owner rule, 2026-09-20 evening, now `CHARTER.md` §2; three replies had already gone to the adviser carrying the AI self-introduction and are not reopened). **Sending stays barred throughout.** `RA-23` **Resolved** — capability is now matched by authority, and restraint on sending is deliberate conduct. **The drafting authority rests on a premise, recorded because premises change:** Minda's statement that the mailbox is hers alone. `RA-21` is the estate's reminder that a space *assumed* private and one *actually* private are different things. |

---

## Part 2 — four rows describing work that finished days ago

**Three of these had already had their full narrative moved out** to `current-state-history-2026-09.md`, each ending
with the words *"Full narrative moved verbatim to `current-state-history-2026-09.md` (`RA-31`)."* What stayed behind
was a summary of a summary: a **present** snapshot carrying a précis of work completed on 2026-09-19 and 2026-09-20.
**3,716 bytes** of it.

**The distinction that decided what moved.** A completed batch is history. What that batch *left unfinished* is
present state, and every piece of it stays in the live table or on a live issue row:

- **Batch 5's outstanding `Raw/` second source** and the parked **Batch 6** — on the `Next action` row and `RA-19`.
- **Index v2's unswept areas** — `RA-29`, which states its own gaps in v2's §10.
- **The day's lessons** — `HL-0024`–`HL-0028` and `HL-0031`, on the **group Help & Lessons desk**, which is their
  home under Hub Rule B. A local copy of a shared lesson is the same duplication as Part 1.
- **Sandbox Mode's rules** — `CHARTER.md` §6, per Part 1.

**The four rows, verbatim and entire:**

| **The day's lessons — raised, and one of them corrected the same evening** | **2026-09-20, on Minda's instruction. Five rows on the group Help & Lessons desk, which is their home (Hub Rule B) — full narrative moved verbatim to `current-state-history-2026-09.md` on 2026-09-20 evening under `RA-31`.** The live points: `HL-0026` (**open the attachment before answering the email**) and `HL-0027` (**reconcile a sender's documents against each other**) both stand and both earned their keep the same evening — `HL-0026` produced the Rev 1 findings, `HL-0027` found that AGGA's memo and matrix propose **different** restructures. `HL-0025` needs independent confirmation. **`HL-0024` was raised wrong and is corrected** — `create_draft` never sent anything; Minda sent each draft, as she always does, and the standing instruction is now **rule out the human before attributing an action to a tool**. **`HL-0028`** is the written process for drafting an email for a human to send, and is the row that outlasts the day. `RA-32` and `RA-33` carry the two open threads. **`HL-0031` followed on 2026-09-21** — never compose into a Drive write — and is in the header above. |

| **Index v2 — DELIVERED** | **2026-09-19 — `Archive-Index/finance-document-index-v2.md`, Drive id `14HbMMzhVcEZLj06Hcn5EXT0h3MgyhOWP`, 20,182 bytes, byte-verified. Drive only, never git.** Closes `RA-17`. Nothing was copied, moved or deleted to build it. It **states its own gaps** in §10 rather than implying completeness — those gaps are carried as **`RA-29`**. **Full description moved verbatim to `current-state-history-2026-09.md` (`RA-31`).** |

| **Consolidation Batch 4 — DONE** | **2026-09-20.** The **incorporation and registration set**. Minda ruled a **`Registration & Tax IDs` folder at the archive root** (`16rFY1xQjWvnTX1LpE3_Lst91duj8K7Gc`), subdivided per company. **18 files moved, 2,986,136 bytes, every id and byte size unchanged**; the archive root has held **nine folders and zero loose files** since. **Twelve duplicates retired** to `Archive/`, two of them sha256-verified. **Eleven numbers minted, seven Locations corrected**, register 221 rows. **Its lasting finding:** `FM0000011` is HMRC's VAT **approval letter**, not a certificate, so the estate does **not** hold Commercial Properties' VAT Certificate of Registration (`RA-15`, and item 4 on the missing-data list). **Full narrative moved verbatim to `current-state-history-2026-09.md` (`RA-31`).** |

| **Consolidation Batch 5 — DONE, all five companies** | **2026-09-20.** The bank-statement series, finished. Structure as approved: **`<Company>/Bank Statements/<account>/<format>`**, keyed to **account number**, **all years of an account in one continuous series** — and that structure surfaced gaps by itself, including **Holdings' CSVs jumping `20240911` → `20250511`, seven months missing (Oct 2024 – Apr 2025)**. **Properties was the tangled one:** its folder labels lied, so the accounts were identified **from the statements themselves** — **nine accounts across four banks** where the labels implied five, including a **Revolut Business** account no folder anywhere named. **Totals: 25 folders, 255 files, 187 individual moves and 6 folder moves, every id and byte size unchanged, every source folder re-listed and confirmed empty.** One file, `August 2022.pdf`, sits in **`Account not identified`** rather than being guessed at. **Still outstanding:** the **`Raw/` second source** — live 2026 statements more recent than anything in the archive (Properties' `84311663` and `24643100` run March–August 2026; Commercial holds two Starling series). A fetch, not a reshape. **Full narrative moved verbatim to `current-state-history-2026-09.md` (`RA-31`).** |

---

## What was deliberately NOT cut

**`Next action` (4,571 bytes) and `Hub requests raised` (3,750) are the two largest rows left, and they stay.** Both
are genuinely present state — what is open, who it waits on, what falls due. Compacting them would mean **rewriting**
rather than moving, and rewriting is the half of `RA-32` that is still only detected, never prevented. Tonight's work
was mechanical by design; those two are a separate job needing a separate kind of care.

**`Group structure` (2,362) stays** because it is the answer to "what is this group", carries the 2026-09-22 owner
corrections on Amfa and Waste, and is not duplicated in the charter.

**`Open issues` (1,739) stays** but is now the only row in the table that quotes its own past counts. It is the row
that taught the lesson in Part 1, so it keeps its scar tissue.

---

## Method — the `RA-32` prevent control, second use today

**Every one of the thirteen rows was extracted by index and appended with `cat`.** Nothing was retyped. The rows above
are byte-identical to the rows that were in the table, and the two pointer rows are the only text authored in this
operation.

**That split is deliberate and is now the standing rule** (`RA-32`, recorded earlier tonight): do the mechanical move
in one step, author new prose in another, and read back the joins. Recurrence seven — earlier this same evening — came
from authoring prose *into* a scripted substitution and detaching the sentence after it. So this pass kept the two
apart: one script to move the rows, a separate step for the pointer text, and a read-back of the table structure in
between.

**Totals, measured not estimated.** `current-state.md` **30,591 → 20,647**. Table **25,085 → ~13,000**. Moved out:
**12,258 bytes** in thirteen whole rows. Across the two cuts today the file has gone **42,647 → 20,647**, a little
over half, with **nothing summarised away** — every byte removed is reproduced verbatim in this entry or in
`change-log-2026-09-23-current-state-header-narrative-retired.md`.

**For comparison, since it started this:** Alex's own `current-state.md` is **6,503 bytes**. This file is still three
times that, and the remaining excess is now concentrated in two rows that are honestly present-state rather than in
duplication. That is a better problem than the one it started with.

**One further edit in the same pass, and it is the night's theme repeating.** The `Open issues` row cited “`CHARTER.md` §2's list” for the git mirror. §2 became a stub three hours earlier, when the charter split moved that list to `Charter-Locations-and-Connectors.md` — so the citation was stale **within the same session that made it stale**, and by the same hand. Repointed, and the correction says so in the row. That is the third stale pointer found today: one in `Next action` (to a file absorbed into its parent two days earlier), one rule letter carried by three seats at three different values (`HL-0046`), and this one. **A pointer is not a fact about the world; it is a fact about where something was when you last looked.** Accounts for the 238 bytes between 20,409 and 20,647.
