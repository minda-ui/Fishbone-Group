# Fishbone Group - Knowledge Database

> **Status: AUTHORITATIVE since 2026-09-03.** Modelled on the Fishbone Properties Ltd `CLAUDE.md`
> (version of 03/09/2026) and the Fishbone Commercial Properties Ltd `CLAUDE.md` (03/09/2026),
> adapted to a group-level database that sits above the per-company knowledge bases.
> `README.md`, `WORKFLOW.md` and `Wiki/WIKI_GUIDELINES.md` hold the detailed procedures; this file
> is the standing context that an AI session reads first. Where this file and those differ, this
> file wins, and the difference is a bug to fix in the same session.
> Revised 2026-09-03T16:00Z: Fishbone Holdings Ltd added as the seventh entity.
> Revised 2026-09-03T16:15Z: Anthill Homes Ltd confirmed out of scope; the group is final at seven.
> Revised 2026-09-03T19:45Z: legal structure, company numbers and financial summaries taken from
> statutory accounts (Raw batch 1); §7 rewritten.
> Revised 2026-09-03T20:00Z: Raw batch 2 (Properties FY2025, Waste FY2025, Drylining YE2023); Fishbone Waste
> status changed to Active; §7 Waste and Properties rows and open questions updated.
> Revised 2026-09-04T13:39Z: Companies House certificate (ledger row 18) confirms Furniture by Fishbone Ltd renamed
> to Amfa Furniture Ltd on 13/07/2026; OI-1 resolved; §7 Amfa row and open questions updated.
> Revised 2026-09-04T20:00Z: owner note (ledger row 21) confirms Fishbone Waste Ltd ceased operating January 2026
> (not being liquidated); Waste status Active -> Dormant; OI-9 resolved; §7 Waste row and open questions updated.
> Revised 2026-09-05T13:00Z: the change log was split to the Fishbone Properties Ltd model — the single `CHANGELOG.md`
> retired (frozen in `Archive/`) in favour of four standing control files (`current-state.md`, `open-issues.md`,
> `external-source-register.md`, `processed-items-ledger.md`) plus dated per-session files in `change-log/`; §0, §1, §3b and §4 updated.
> Revised 2026-09-05T19:30Z: owner ruling — AT UK Interiors Ltd is not connected to the group (owner note, ledger row 25); §0 out-of-scope list and §7 updated.
> Revised 2026-09-07: outstanding-items sort. OI-3 to OI-7 resolved (SSAS canonical home + scheme facts; this database confirmed as the group **master index**; loan reconciliation adopting the authoritative `Fishbone_Loan_Repayment_Plan.xlsx`, three debt layers; Ferndale title TY59507 — FCP freehold / Properties leasehold); OI-5 access adequate; FY2025 accounts confirmed **filed** at Companies House. OI-8 remains open (workshop lease). §0 SSAS row, §1 sister-systems, §6b and §7 updated.
> Revised 2026-09-07 (later): the group **weekly master-index digest routine went live** (§5) and its first run flagged drift now actioned here — the **Fishbone Holdings Ltd Knowledge Base** (created 2026-09-05) added to §0/§1; the Holdings→Properties **interest waiver recorded as executed** (§7 open question 2 closed; effective 1 Oct 2026–30 Sep 2028); and two stale sister-KB descriptions corrected in §1 (Construction no longer a skeleton; Commercial's root `CHANGELOG.md` retired). OI-10 and OI-11 resolved; OI-12 (a Loans-Wiki compliance finding) left with Minda/RMT.
> Revised 2026-09-09: **centralised group Document Register system** stood up — one group-wide **Document Register** and a **Change Requests** feedback queue (Smartsheets in a new "Fishbone Group - Documents" workspace; SRC-38/39), and the single locked, versioned policy `Wiki/Process-Document-Numbering-and-Filing.md` v1.0 (per-entity prefixes FC/FP/FH/FW/FA/FM/FS/FG, 7-digit IDs, dedup-on-entry, files co-located in Collaboration Space, feedback loop). A **narrow §6a append exception** now permits appending rows to those two group sheets and filing documents into Collaboration Space. §0, §5 and §6a updated; rollout phased (new documents now; the Properties `FP` / Holdings `FH` back-catalogues migrated later).
> Revised 2026-09-09 (later): the document policy went to **v1.1** — new **§7a inter-KB document hand-off** (a group KB may drop a registered document, named by its existing ID, into another group KB's `Raw/` — add-only, with a covering note and a register annotation, no re-numbering). The §6a exception widened to cover that `Raw/` hand-off; §0 and §6a updated. Owner-authorised (Minda).
> Revised 2026-09-09 (later still): the document policy went to **v1.2** — resolving the first Change Request, FC-CR-0001 (Fishbone Construction, Accepted): §6 clarifies that **tasks/to-dos are not documents** (no register row, no ID) and §11 that **each KB may migrate its own local back-catalogue now**, deduping on entry. Current policy-version references in §0 and §6a updated to v1.2. Owner-authorised (Minda).
> Revised 2026-09-10: the document policy went to **v1.3** — resolving two more Change Requests (both Accepted): **FM-CR-0001** (Commercial Properties) — property codes are 4 digits = acquisition-year + sequence, **self-assigned** per company and recorded in its own property register (145 High Street East = `FM2301`), property-tied docs file into `<CODE> - <Address>/Documents/` (policy §3/§7); **FP-CR-0001** (Properties) — email-attachment **source capture**: when bytes can't be captured, register with the Gmail thread id as Source key and a flagged transcription (policy §5). Current policy-version references updated to v1.3; v1.3 note distributed to the five sister `/Raw` inboxes. Owner-authorised (Minda).
> Revised 2026-09-10 (later): added a group **incoming paper-mail process** — `Wiki/Process-Post-Handling.md` (v1.0). The office receives post for all seven companies in one pile; the group opens/scans it into a single `Raw/Paper Mail/` intake, triages each letter to its owning company, registers it in the Document Register (Direction = Incoming) and files it, then routes it to that company's KB `/Raw` via §7a (Fishbone Waste and group-level `FG` items kept by the group). Reuses the v1.3 numbering policy; no new numbering. §0 pointer added; distributed to the six KB `/Raw` inboxes. Owner-authorised (Minda).
> Revised 2026-09-11: recorded the **group Tasks Status colour convention** in §1 (Live data sources) at the owner's instruction — Done = green, In Progress = yellow, Overdue (Due Date past AND Status ≠ Done) = red — applied via Smartsheet conditional formatting in the UI (the API/MCP has no formatting tool). Convention only; no sheet change made by this database (the "1. General" Tasks sheet is read-only for automation, §6a). Owner-authorised (Minda).
> Revised 2026-09-10 (later still): corrected two stale "no KB" gaps — the **Amfa Furniture Ltd Knowledge Base** (Drive `1ugshCjwx2yvRXZvmtpwLcg3kUgTKN7aU`, created 2026-09-05) and the new **Fishbone Waste Ltd Knowledge Base** (Drive `1LMVTPw4YFw9OmW7GcTjaDEfXqCIjp1ZJ`, created 2026-09-10, built on policy v1.3) are now listed in §0 (read-first table) and §1 (sister systems), raising the count to **ten** other knowledge systems. **All seven group companies now have their own KB**, so the §0 post-room pointer now routes every company's post to its own KB via §7a (only group-level `FG` items are kept by the group); Fishbone Waste is no longer a special case. No policy change. Owner-authorised (Minda).
> Revised 2026-09-12: the group **Tasks health-colour convention** was implemented as a formula-driven **`Health` RYGB column** across all five Tasks sheets (group "1. General", Construction, Holdings, SSAS, AMFA), standardised on one formula — Done green / Blocked or overdue red / due ≤14 days yellow / >14 days green / no due date blue. This **supersedes the 2026-09-11 note** that the colours would be set via Status-cell conditional formatting in the UI; the Health column is API-settable and self-updating. §1 Live-data-sources row updated. Owner-authorised (Minda).
> Revised 2026-09-12 (later): established a **group SessionStart-hook standard** — every Fishbone KB repo carries `.claude/hooks/session-start.sh` installing the PDF toolkit (pdfplumber / PyMuPDF / pdf2image / pytesseract + tesseract-ocr / poppler-utils) on web sessions, so scanned or tabular PDFs can be OCR'd and table-extracted rather than read by eye. §5 updated; the hook is on branch `claude/session-start-pdf-toolkit` in all eight repos (group + seven company KBs), live once merged to each default branch. Owner-authorised (Minda).
> Revised 2026-09-12 (later still): the **Quarterly sweep** routine (§5) gained a **tooling & environment health** scope (hook install check; skills/connectors/tools drift diff; change-log tooling-pain scan). A separate monthly tooling-review routine was **considered and declined** (owner): tooling changes too slowly for monthly to carry signal, so it folds into the quarterly sweep. The sweep is still to be created via the routines form. Owner-authorised (Minda).
> Revised 2026-09-12 (evening): **Peter — AI Data Assistant** stood up as the group's data-collection
> assistant — a collector/stager with three beats (inbound email triage of `info@fishboneconstruction.co.uk`;
> Companies House research for the six registered companies; document capture staged toward the group register)
> and its own Drive home + git mirror `minda-ui/Peter`. Peter **reads and drafts only, never sends, files or
> writes to a system of record** (governed by §6a). Added to §1 sister systems (count to **eleven**) and
> `00_INDEX.md`; his routines are not yet created. Owner-authorised (Minda).
> Revised 2026-09-12 (later still): re-verified per §2 ("claims are re-verified, not repeated") rather than
> restated — checked all eight KB git repos directly instead of trusting the 2026-09-12 (later) note above.
> The SessionStart PDF-toolkit hook is **already merged into the default branch of all eight repos**, not
> pending merge as previously recorded: in this group repo it went straight into default-branch commits
> (`309015a`, `3d5f75e`, no separate branch was ever cut here); in the seven company repos it was merged via
> PR from `claude/session-start-pdf-toolkit`, which still exists in each as a harmless, already-merged,
> unpushed-to leftover (house-keeping only, not blocking). §5 corrected accordingly; no action needed on any
> repo.

This file gives Claude the context it needs to work in this database without re-explaining the
setup each session: where the database lives and how it relates to the other Fishbone knowledge
systems (§1), how the Wiki is maintained (§2), how new items are processed (§3), how the change
log works (§4), what runs automatically (§5, one live routine), the governance boundary (§6), and a
one-screen snapshot of the group with its open questions (§7).

---

## 0. Start every session here

**Before doing anything else, read the four standing control files at the root of this folder:**
`current-state.md` (last session and what is pending), `open-issues.md` (the `OI-<n>` table),
`processed-items-ledger.md` (scan for rows still `in-progress`, `partial` or `blocked`), and
`external-source-register.md` (the `SRC-<n>` sources). Then read the newest one or two dated files
in `change-log/` for what the last sessions did. This applies to every kind of session: a one-off
question, a drafting request, a survey of Drive, not only formal Raw processing. Another session
may already have answered the question or corrected the figure. (Session history before 2026-09-05
is in the final monolithic `CHANGELOG` in `Archive/`; see §4.)

**If the task is about one company rather than the group**, also read the newest change-log
entries in that company's own knowledge system before answering, because the detailed facts live
there and this database only links to them (see §1, "Sister systems"):

| Company | Read first |
|---|---|
| Fishbone Properties Ltd | `Fishbone Properties Ltd - Knowledge Base/CLAUDE.md` §0 and its latest `Outputs/change-log-*.md`; Smartsheet Document Register and Tasks (workspace "1. General") |
| Fishbone Commercial Properties Ltd | `Fishbone Commercial Properties Ltd - Knowledge Base/CLAUDE.md` and its dated `Outputs/change-log-*.md` files (the root `CHANGELOG.md` was retired 2026-09-05); Smartsheet workspace of the same name |
| Fishbone Construction Ltd | `Loans/Wiki/Entity - Fishbone Construction Ltd` and the latest `Loans/Change Log YYYY-MM-DD`; its FY2025 accounts are archived here (`Wiki/Org-Fishbone-Construction-Ltd.md` Sources) |
| Fishbone Holdings Ltd | The **Fishbone Holdings Ltd – Knowledge Base** (Drive `1sZJ4frIcVqsgON4eewAqmdKq5YEXInvu`, git mirror `minda-ui/Fishbone-Holdings-Ltd`, created 2026-09-05); then `Wiki/Org-Fishbone-Holdings-Ltd.md` here (FY2024/FY2025 accounts archived) and the Smartsheet Document Register/Investment Register |
| Amfa Furniture Ltd (11259604; renamed from Furniture by Fishbone Ltd 13/07/2026) | The **Amfa Furniture Ltd – Knowledge Base** (Drive `1ugshCjwx2yvRXZvmtpwLcg3kUgTKN7aU`, git mirror `minda-ui/Amfa-Furniture-Ltd`, created 2026-09-05); then Smartsheet workspace "AMFA Furniture"; Drive `Collaboration Space / Furniture by Fishbone`; no accounts on file anywhere |
| Fishbone Waste Ltd | The **Fishbone Waste Ltd – Knowledge Base** (Drive `1LMVTPw4YFw9OmW7GcTjaDEfXqCIjp1ZJ`, created 2026-09-10, built on policy v1.3); then `Wiki/Org-Fishbone-Waste-Ltd.md` here (FY2024 and FY2025 accounts archived); Drive `Collaboration Space / Fishbone Waste`; the Finance archive's Waste folder (SRC-31) |
| Fishbone SSAS | The **Fishbone SSAS – Knowledge Base** (Drive `1Ow2wOI2hQE3ugsxeZqk2xf7P5f9IT7oV`, its canonical home) and the `SSAS` source folder (`1jSFpIOcKb7yANA0hJVtjWb_80rMfvo5c`); then `Wiki/Org-Fishbone-SSAS.md` here |
| Any borrowing or loan question | `Loans/Wiki/Home` and `Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx` (Summary tab); note OI-6, the loan lists disagree, and the accounts figures in `open-issues.md` OI-6 |

Facts that appear in two places must agree. If they do not, raise an Open Issue rather than
picking one.

**Document filing & numbering (all companies)** follow one locked, versioned policy,
`Wiki/Process-Document-Numbering-and-Filing.md` (v1.3): every qualifying business document is
registered **once** in the single **Fishbone Group Document Register** (Smartsheet, SRC-38) under a
per-entity-prefixed 7-digit ID (`FC/FP/FH/FW/FA/FM/FS/FG`), deduped on a Source key, and filed
**co-located in its project/company folder in Collaboration Space**. Raise any gap or improvement in
the **Change Requests** queue (SRC-39); only the group edits the policy (§9 of that doc). Group KBs may
also **hand a registered document to each other by dropping it (named by its existing ID) into another
KB's `Raw/`**, with a covering note and a register annotation — add-only, no re-numbering (§7a of that
doc). Appending to those two sheets, filing into Collaboration Space, and that `Raw/` hand-off are the
narrow live-system exceptions (§6a). **Incoming paper post** received at the shared office for any
company is captured by the group post-room procedure `Wiki/Process-Post-Handling.md` — opened and
scanned into the single group `Raw/Paper Mail/` intake, triaged to its owning company (from the letter, not
the envelope), registered in the Document Register (Direction = Incoming) and filed, then routed to the
owning company's KB `/Raw` via §7a (now that all seven companies have a KB, every company item routes; only group-level `FG` items are kept by the group).

**Out of scope, do not raise again:** Anthill Homes Ltd is not part of the group (owner note
`2026-09-03_owner-note_anthill-homes-out-of-scope.md`); its Smartsheet workspace and Drive
folders are not surveyed or cited from here. **AT UK Interiors Ltd** is likewise not connected to
the group (owner note `2026-09-05_owner-note_at-uk-interiors-out-of-scope.md`, ledger row 25) — it
appears only as a third-party counterparty in Construction's bank data (a £15,000 credit,
22 Jul 2026), not as a group entity.

---

## 1. Database structure

### Where it lives
- **Google Drive**, `My Drive / Fishbone Group` (folder id `1pOHvl8X64E-x3rRb-6Wrc9zsHZ2mgi73`).
  Source of truth. There is no git mirror as of 2026-09-03.
- Owner: minda@fishboneconstruction.co.uk. Sharing has not been checked (§6b).

### Folders
```
Fishbone Group/
├── CLAUDE.md            <- this file (standing context for AI sessions)
├── README.md            <- human-readable structure and conventions
├── WORKFLOW.md          <- step-by-step Raw -> Wiki -> Archive procedure
├── current-state.md             <- present snapshot, overwritten each session (§4)
├── open-issues.md               <- the OI-<n> table (§4)
├── external-source-register.md  <- the SRC-<n> register (§4)
├── processed-items-ledger.md    <- one row per Raw item ever seen (§4)
├── change-log/          <- one dated change-log file per session (§4)
├── Raw/                 <- source material exactly as received; never edited
├── Wiki/                <- one Markdown article per entity or topic; 00_INDEX.md; WIKI_GUIDELINES.md
├── Outputs/             <- deliverables built from the Wiki; standing files once §5 exists
└── Archive/             <- processed Raw items (renamed YYYY-MM-DD_<name>) and superseded control files
```

Folder ids: Raw `1AskWaogQoyQH7COKZq85jL00QUtcx---`, Wiki `1noZncKHLV9IWXbcbeIzaBAZs9yfnNQgC`,
Outputs `1jrOGx1lqGfTHKkzUcM8ce__tOGsqPlEp`, Archive `1SVuKUs9oFbru0ZqRgC-pVZjB7oI6MTK8`.

**Raw/** is immutable. Corrections arrive as new files. Verbal information from Minda or a
director is written up as `Raw/YYYY-MM-DD_owner-note_<subject>.md`, statement separated from
commentary, so the Wiki can cite it; owner notes keep that name in Archive. Unlike the Properties
Ltd base, this database **does move** a Raw item into `Archive/` once processed (renamed with the
processing date, except owner notes, which already carry it; the Drive id is unchanged, which is
what the ledger keys on). See `WORKFLOW.md` Step 4. Minda copies documents into `Raw/` from the
Finance archive or elsewhere; the assistant does not move files out of sister systems (§6a).

**Wiki/** is flat, one article per entity or topic, filenames `Prefix-Title-Case.md` with the
prefixes in `WIKI_GUIDELINES.md` §1 (`Org-`, `Person-`, `Project-`, `Client-`, `Supplier-`,
`Policy-`, `Finance-`, `Asset-`, `Process-`, `Topic-`). Every article is listed in
`Wiki/00_INDEX.md`. Seven `Org-` articles exist, one per group entity; six are built from
statutory accounts and the SSAS one was built out from stub on 2026-09-07 (OI-3).

**Outputs/** are dated, versioned snapshots (`YYYY-MM-DD_<Type>_<Subject>_v<N>.<ext>`), never
edited after release. Standing always-current files are a deliberate exception once §5 exists;
there are none yet.

**Archive/** is never edited or deleted. Drive files cannot be edited in place by the tooling, so
every replacement of `CLAUDE.md`, `README.md`, `WORKFLOW.md`, a standing change-log file
(`current-state.md`, `open-issues.md`, `external-source-register.md`, `processed-items-ledger.md`)
or a Wiki article follows **archive-then-recreate**: rename the old file to
`<title> (archived YYYY-MM-DD HHMM, superseded by <reason>)`, move it into `Archive/`, then
upload the new file with the original title. Never trash. (The first two replacements on
2026-09-03, of `CHANGELOG.md` and `00_INDEX.md`, were trashed instead of archived before this rule
was adopted; they are recoverable from Drive trash for 30 days and are noted in the change log.)
Because control-file ids change on every replacement, **reference control files by filename,
never by Drive id.** Raw and Archive items keep stable ids.

### Sister systems (link, do not copy)

Eleven other knowledge systems exist (the Fishbone Holdings Ltd Knowledge Base was added 2026-09-05, the
Amfa Furniture Ltd Knowledge Base 2026-09-05, the Fishbone SSAS Knowledge Base 2026-09-06 and the
Fishbone Waste Ltd Knowledge Base 2026-09-10 — so **all seven group companies now have their own KB** —
and **Peter, the group's data-collection assistant, was added 2026-09-12**).
**OI-4 was resolved on 2026-09-07 (owner decision): this group database is the _master index_
over all Fishbone systems** — it links to and cites them and never copies their content, so each
fact keeps one home. `Wiki/00_INDEX.md` carries the maintained "where each thing lives" map. The
one settled exception: individual documents from the Finance archive are copied into `Raw/` by
Minda for processing, because the archive is a filing store, not a knowledge system.

| System | Location | Holds | Maturity |
|---|---|---|---|
| Collaboration Space | Drive root, shared folder `1YNj5BIpKVzcmI4U1DRkgu7kcnSDizGEi` | Operational filing per company: Fishbone Construction, Fishbone Properties Ltd, Fishbone Commercial Properties, Fishbone Waste, Furniture by Fishbone, Other (incl. Staff (SSAS)). Nothing for Holdings. **Also the home for filed documents under the group Document Register (SRC-38), co-located in each company's project folder (§0; `Wiki/Process-Document-Numbering-and-Filing.md`).** | Live filing since Nov 2024; several subfolders owned by other accounts |
| Fishbone Properties Ltd - Knowledge Base | Drive root, `11SREv6Rx4jvTzMtpQbKqzzZkTN4wZgNk` | 17 property articles, tenants, financials, processes; 8 cloud Routines; Smartsheet and QuickBooks live sources | Mature, automated, actively maintained |
| Fishbone Commercial Properties Ltd - Knowledge Base | Drive root, `1zC8LmkCLr7BEaqcAlxgAXyz5Bfm73Z7C` | One property (145 High Street East), company snapshot, Smartsheet register; git mirror `minda-ui/Fishbone-Commercial-Properties-Ltd` | New (03/09/2026), no automation |
| Fishbone Construction Ltd - Knowledge Base | Drive root, `13IQdim0JhKmoQvJBmJmnMhreJqg55xTr` (SRC-08) | Now a working database: live `CLAUDE.md` (v3, 2026-09-05), a populated Wiki, dated `Outputs/change-log-*.md`, and a **daily email-intake automation** (info@fishboneconstruction.co.uk inbox, 07:00 local, owner's 2026-09-06 instruction; first unattended run not yet verified) | Building out since 2026-09-05 (was a five-doc skeleton) |
| Fishbone Holdings Ltd - Knowledge Base | Drive root, `1sZJ4frIcVqsgON4eewAqmdKq5YEXInvu` (SRC-37), git mirror `minda-ui/Fishbone-Holdings-Ltd` | The parent company's own database (own CLAUDE.md, Raw/Wiki/Outputs/Archive): 14 processed items (`FH0000001`–`FH0000014`), 13+ Wiki articles, an Investment Register, and the most complete record of the Holdings↔Properties loan relationship (incl. the executed interest waiver). Cite, never copy. | New (2026-09-05), actively maintained |
| Fishbone SSAS - Knowledge Base | Drive root, `1Ow2wOI2hQE3ugsxeZqk2xf7P5f9IT7oV` (SRC-33) | The pension scheme's own database (Raw/Wiki/Outputs/Archive, own CLAUDE.md): trust deed, scheme rules, TPR certificate, the £41,500 Commercial Properties loanback + its heads of terms, repayment schedule and 29/04/2025 legal mortgage. Canonical home for the SSAS. Member/personal data: cite, never copy. | New (03–06/09/2026), no automation |
| Amfa Furniture Ltd - Knowledge Base | Drive root, `1ugshCjwx2yvRXZvmtpwLcg3kUgTKN7aU`, git mirror `minda-ui/Amfa-Furniture-Ltd` | The furniture company's own database (own CLAUDE.md, Raw/Wiki/Outputs/Archive), built on document policy v1.3; `FA` prefix in the group register (`FA0000001` = change-of-name certificate). Cite, never copy. | New (2026-09-05); the group's earlier "Amfa has no KB" note was stale, corrected 2026-09-10 |
| Fishbone Waste Ltd - Knowledge Base | Drive root, `1LMVTPw4YFw9OmW7GcTjaDEfXqCIjp1ZJ`, `/Raw` `1TlNINqtx8JU1Qe6152uqhEPZEvt7JN_C` | The (dormant) waste company's own database, born on document policy v1.3; `FW` prefix in the group register. Received the v1.3 policy note, the incoming-paper-mail notice and the two 2026-09-10 post items (`FW0000001` business rates, `FW0000002` vehicle HK21 DFJ) in its `/Raw` via §7a. Cite, never copy. | New (2026-09-10), no automation |
| Peter - AI Data Assistant | Drive root, `1zY8rVKNXheb8MQaol6GZthht1B7hlkAZ`, git mirror `minda-ui/Peter` | The group's **data-collection assistant** (own charter, four control files, and `Inbox-Triage`/`Research`/`Capture`/`_unverified` staging folders): triages `info@fishboneconstruction.co.uk`, watches Companies House for the six registered companies, and stages qualifying documents toward the group Document Register. **Collects and stages only — reads and drafts email (`create_draft`), never sends, files with anyone, or writes to a system of record (§6a).** Hands findings to the company KBs / group register; cite, never copy. | New (2026-09-12); routines not yet created |
| Loans Wiki | `Loans/Wiki`, `1lIfM6Rjk_dlZsRzaPSvio7eNtwNA3S_T` | 3 entity pages, 14 facility pages, 2 revolving-book pages, planned property sale; workbook in `Loans/Outputs`. Does not cover the Holdings intercompany loans. | Complete as at 25/08/2026, manually maintained |
| Smartsheet | Nine workspaces, all owned by minda@ (`external-source-register.md` SRC-16 to SRC-30), plus the group **"Fishbone Group - Documents"** workspace (SRC-38/39, created 2026-09-09) | "1. General" (shared registers: Document Register, Tasks, Contacts, Classifier), "4. Property maintenance" (Properties Ltd register), "Fishbone Commercial Properties Ltd", "AMFA Furniture", "My Work" (group loan sheets, budgets), "2. Sourcing", "3. Project Delivery", "Minda" (personal), and **"Fishbone Group - Documents"** (the single group Document Register + Change Requests). "Workspace 1" belongs to Anthill Homes and is out of scope. | Live; the property registers, the "1. General" Document Register and the new group Document Register are the most current data anywhere |
| Finance archive | Drive root, `Finance-20260903T154848Z-1-001 / Finance`, `1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4` (SRC-31) | Statutory accounts, CT600s, bank and loan statements, PAYE and CIS returns by company and accounting year for Construction (2017-18 on), Properties (2020-21 on), Commercial Properties, Holdings (both 2023-24 on) and Waste. Sensitive: cite, never copy. | Filing store. Fifteen accounts PDFs processed through Raw on 03/09/2026 (batches 1 and 2); the rest listed in `external-source-register.md` SRC-31 |

A separate `Minda Wiki` (personal knowledge base, Google Docs, e.g. "Minda Wiki - Business &
Fishbone Group") holds strategy, targets and the founder's working notes. It is a source, not a
sister system: cite it, do not maintain it from here. Its list of group companies is superseded
by the owner notes of 2026-09-03 where they differ.

### Live data sources (known, not yet used from this database)

None are wired to this database yet. These exist in the sister systems and are the source of
truth for their datasets; when a group-level article needs one of these figures, pull it fresh
from the live source (or from the sister KB's most recent sync entry) rather than from a Raw
export, and log the pull.

| Dataset | Live source | Notes |
|---|---|---|
| Residential property register | Smartsheet "Property Register-DataBase", sheet id `4273518114113412` | Documented in the Properties Ltd CLAUDE.md §1, including its health-flag semantics and known anomalies |
| Commercial property register | Smartsheet "Property Register - Database", sheet id `8289112509515652`, workspace "Fishbone Commercial Properties Ltd" | Health flags are manual picklists, not formulas |
| Group document register | Smartsheet, workspace "Fishbone Group - Documents", sheet id `7352854736144260` (SRC-38); Change Requests `8918834172004228` (SRC-39) | The single group-wide `FC/FP/FH/FW/FA/FM/FS/FG` 7-digit numbering scheme; policy `Wiki/Process-Document-Numbering-and-Filing.md` v1.3. Legacy: the "1. General" Document Register (`7675667699337092`, `FP########`) and Tasks (`1343219457722244`) remain until migrated |
| Company financials | QuickBooks Online via the Intuit connector | Confirmed live for Fishbone Properties Ltd (27/08/2026). **Not confirmed** which other companies' files the connector reaches. Always call `company_info` first and check the company name. |
| Group lending position | `Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx`; Smartsheet "Loan schedule" (`5538379808769924`) and "Repayment Plan" (`4650432322471812`) in My Work | Three lists that disagree (OI-6). Do not publish a group total until resolved. Balance-sheet anchors from the accounts are in `open-issues.md` OI-6. |
| AMFA Furniture orders | Smartsheet workspace "AMFA Furniture", sheet id `5287398789482372` | Order tracker, Received to Shipped, one Drive folder per order |
| Group Tasks tracker | Smartsheet "1. General", **Tasks** sheet `1343219457722244` (per-company Tasks sheets share the same shape: Construction `5235584035587972`, Holdings `3298244547446660`, SSAS `8617681802626948`, AMFA `6815307366795140`) | Shared task list (`T#####`). Status picklist = **Open / In Progress / Done / Blocked**. **Task health colour — group RYGB convention (implemented 2026-09-12, owner).** Each Tasks sheet carries a **`Health` RYGB symbol column driven by a column formula** (not conditional formatting): **Done → green; Blocked or overdue (Due Date past, not Done) → red; due within 14 days → yellow; due in over 14 days → green; no Due Date → blue.** All five Tasks sheets run the **identical** formula (`=IF(Status@row="Done","Green",IF(Status@row="Blocked","Red",IF(ISBLANK([Due Date]@row),"Blue",IF([Due Date]@row-TODAY()<0,"Red",IF([Due Date]@row-TODAY()<=14,"Yellow","Green")))))`) — AMFA was the reference; the group sheet + Construction gained the column and Holdings + SSAS were realigned to it on 2026-09-12. Being a column formula it is **API-settable and self-updating — maintain it via the connector, not by hand.** (This supersedes the 2026-09-11 note that the colours would be set via Status-cell conditional formatting in the UI.) The sheets are otherwise read-only for automation (§6a); the owner authorised these Health-column edits. |

---

## 2. Wiki maintenance guidelines

Full rules are in `Wiki/WIKI_GUIDELINES.md`. In short:

- One subject per article. Header block mandatory: `Type`, `Status` (Active | Completed |
  Dormant | Superseded), `Last reviewed`, `Related`. Sections: Summary, Key facts, Details, Open
  questions, Sources, History.
- Every fact carries an `[Sn]` tag resolving to a Sources line: archived filename, Drive URL,
  document date, locator (page and note number for accounts). Sources that live outside this
  database (sister systems, Smartsheet, Minda Wiki) are cited as
  `External (Drive|Smartsheet): <title> - <URL> - <dated> - accessed YYYY-MM-DD` and are also
  registered in `external-source-register.md` (§4). A fact with no source goes under
  Open questions, not Key facts.
- Links between articles are relative, by filename, on first mention, both ways where the
  relationship matters. A missing target gets a stub in the same session, never a dead link.
- One fact, one home. If the fact belongs to a sister system (a property's rent, a facility's
  balance), link there; do not restate it here. Statutory-accounts figures are an exception:
  they are stated once in the company's own `Org-` article and cross-referenced from the
  counterparty's article for intercompany balances.
- Personal data: business name, role and work contact only. No home addresses, personal phone
  numbers, bank account numbers, payroll identifiers, health or personal financial details.
  Directors' names and directors' loan balances as disclosed in statutory accounts are public
  company information and may be recorded; the directors' personal circumstances are not.
- Every edit bumps `Last reviewed` and adds a History line naming the session.
- **Claims in this file are re-verified, not repeated.** The Properties Ltd file carried a
  "known bug" for 17 days that did not exist, and a sharing claim that was wrong for four days.
  If a task is about to act on a claim here that it can cheaply re-check against the live
  source, do so first.

---

## 3. Workflow for processing new items

### 3a. Live sources
1. Check the change log for the last sync of that source (here or in the sister KB).
2. Pull current data from the connector (Smartsheet `get_columns` then `get_sheet_summary`;
   QuickBooks `company_info` then the report tools).
3. Diff against the Wiki; update articles in place, moving old values to History.
4. Cite the live source URL in the article.
5. Log the sync with a timestamp, even if nothing changed.
6. Anomalies are flagged in the article's Open questions and, if material, as an Open Issue.

### 3b. Raw items
The six steps in `WORKFLOW.md`: **Orient** (read `current-state.md` and `processed-items-ledger.md`,
list `Raw/`, diff against the ledger), **Register** the item as `in-progress` in
`processed-items-ledger.md` before reading it (archive-then-recreate of that one small file; a
batch can be registered together), **Triage** (duplicate, irrelevant, blocked, or type),
**Extract** into Wiki articles with citations and cross-links, **Archive** (rename
`YYYY-MM-DD_<name>`, move to `Archive/`), **Log** (set the ledger row to `done` with the article
list, and write the session's dated `change-log/` file). Outputs only when requested. A Raw item
that is a qualifying business document is **also** registered in the group Document Register and
filed into Collaboration Space per `Wiki/Process-Document-Numbering-and-Filing.md` (v1.3) — the
ledger row and the register row share the item's Drive file ID as the dedup Source key.

### 3c. Owner notes
Verbal statements from Minda become Raw items at once (§1), then follow 3b. A later statement
that refines an earlier one is a new note naming the one it clarifies; the earlier note is never
edited. Two exist, both archived: `2026-09-03_owner-note_group-entities.md` (the list of six,
then Holdings added) and `2026-09-03_owner-note_anthill-homes-out-of-scope.md` (which clarifies
it). Together they fix the group at seven entities.

### 3d. Reading limits, inherited from the sister systems
- **Any PDF with side-by-side tables** (bank statements, schedules, the Loans workbook exported to
  PDF) is read as a rendered image, not extracted text. A real £11,000 payment was missed in a
  sister workspace this way on 02/09/2026. RMT-prepared statutory accounts extracted cleanly as
  text on 03/09/2026 (two-year columns, one table at a time), so they are an exception in
  practice; still sanity-check that current-year and prior-year figures did not swap.
- **HMRC CT600 PDFs** extract with box numbers and values scrambled. Read page by page as images,
  or take figures from the accountant's computation.
- **Gmail attachment bytes often fail Drive's upload validation.** When the binary cannot be
  filed, transcribe the readable content into a `.md` record in `Raw/`, cite that, and say in the
  change log that it is a transcription.
- **Some .docx files return only their package structure** from the Drive reader (seen with the
  FP0000001 letter on 03/09/2026). Download and convert, or ask for a PDF, rather than citing a
  summary of the document from elsewhere as if it were the document.
- **Time-bounded Drive searches can paginate wrongly** (the second page repeated the first on
  03/09/2026). For a large folder, enumerate by parent folder instead.
- **Drive listings can be incomplete** for folders owned by other accounts (Fishbone Waste,
  Furniture by Fishbone, parts of Collaboration Space). Say "not visible to this login" rather
  than "does not exist".
- **Similar company names are not the same company, and different names are not different
  companies.** Fishbone Drylining Ltd turned out to be Fishbone Construction Ltd; Fishbone
  Commercial Properties Ltd turned out not to be Fishbone Properties Ltd; "Fishbone Investments
  Ltd", "Furniture by Fishbone Ltd" and "Amfa Furniture" are one company under three names.
  Ask; do not assume.

---

## 4. Change log

The change log follows the **Fishbone Properties Ltd model** (adopted 2026-09-05, replacing the
earlier single-file design): current state lives in four standing control files at the root, and
history lives in one dated file per session.

**Four standing control files** (root; overwritten by archive-then-recreate only when they change, §1):
- `current-state.md` — the present snapshot (last session, items pending, counts), overwritten at the end of any session that changes it.
- `open-issues.md` — the `OI-<n>` table; a resolved issue gets a `Resolved` line, never a deletion.
- `external-source-register.md` — the `SRC-<n>` register of sources cited but not copied in.
- `processed-items-ledger.md` — one numbered row per Raw item ever seen, keyed on the Raw Drive id (the reprocessing guard).

**History: one dated file per session** in `change-log/`, named `change-log-YYYY-MM-DD-<slug>.md`,
newest notes at the top within a file, strictly append-only (never edit a past file; correct with
a new entry). Every session — including one that processes nothing — writes a dated change-log
file and refreshes `current-state.md`. Structure changes are recorded in the session's dated file.

This replaces the single `CHANGELOG.md` that ran 2026-09-03 to 2026-09-05, which reached ~90 KB
and forced a full-file re-upload each session. That monolith (with its full Session Log and
Structure Changes history) is frozen in `Archive/` as the final monolithic `CHANGELOG`; read it
for session history before 2026-09-05. Rules for each standing file are in its own header and in
`README.md` §5.

---

## 5. Automated processes

**One is live.** The **Group master-index sync** went live 2026-09-07 (details in the table below).
The remaining rows are proposals, in priority order, and each must satisfy §6a before it is created.
When a routine is created, add it here with its real name, schedule and connectors, and remove the
"proposed" marker. A routine reading this section should treat it as background; its instructions
are in its own prompt.

| Routine | Cadence | Does / would do | Status / prerequisite |
|---|---|---|---|
| **Group master-index sync** (weekly digest) | Weekly, Monday 07:00 UK | Read-only survey of the sister systems (Properties Ltd, Commercial, SSAS, Construction, Holdings KBs; the Loans Wiki; the Smartsheet "1. General" Tasks sheet), write `Outputs/YYYY-MM-DD_Digest_Group_v1.md` reporting what changed and any master-index drift, and raise Open Issues for material drift; it does **not** auto-edit the index or `Org-*` articles (a reviewed session does that). It also reads the **Document System - Change Requests** queue (SRC-39) and promotes new items into `open-issues.md` for a human decision (the document-policy feedback loop). Connectors: Google Drive + Smartsheet. Created via the routines form. | **Live since 2026-09-07** (first run 2026-09-07, raised OI-10/OI-11/OI-12). |
| Group lending monitor | Monthly, 1st | Re-read the Loans workbook Summary tab and the My Work loan sheets, compare entity totals against the `Org-` articles, flag arrears and undocumented facilities. Read-only. | OI-6 resolved. |
| Quarterly sweep (governance + tooling health) | Quarterly, 1st of Jan/Apr/Jul/Oct, 07:00 UK | Drive permissions on this root folder; Companies House status and filing deadlines for all seven entities (accounting reference dates 29 or 30 April; accounts due 9 months later, so by end January); `draft`/stub articles and orphans; Sources lines whose URLs no longer resolve; DST check on any routine crons. **Plus tooling & environment health (added 2026-09-12):** confirm the SessionStart PDF-toolkit hook still installs cleanly (pdfplumber/PyMuPDF/pdf2image/pytesseract + tesseract-ocr/poppler-utils); list the skills, connectors and MCP tools available in the run and diff against what this file records (esp. §1 Live data sources and §5) to flag drift; skim the quarter's `change-log/` entries for recurring "format slow / extraction failed / done by hand" notes suggesting a better tool is warranted. Read-only → writes `Outputs/YYYY-MM-DD_Digest_Quarterly-Sweep_v1.md` and raises Open Issues; no auto-edits to `Org-*` articles, the index or any live system. | **Proposed — create via the routines form** (Drive + Smartsheet connectors). **Quarterly chosen over a monthly tooling review (2026-09-12, owner):** tooling changes too slowly for monthly to carry signal, and this reuses the existing sweep rather than adding a routine. |

Lessons inherited from the Properties Ltd migration, to apply if and when routines are created:
create them through the `claude.ai/code/routines` form (API-created routines lacked connectors and
stopped for permission prompts); bake folder and sheet ids into each prompt because a routine
starts with no memory; crons are UTC, so shift them at each UK clock change; publishing a shared
Artifact still needs a manual click.

**Session environment — PDF toolkit (group standard, 2026-09-12; confirmed live 2026-09-12).** Every
Fishbone KB git repo carries a **SessionStart hook** (`.claude/hooks/session-start.sh`, registered in
`.claude/settings.json`) that, on Claude Code **web** sessions, installs the PDF toolkit —
`pdfplumber`, `PyMuPDF`, `pdf2image`, `pytesseract`, `pillow`, `pypdf` (Python) plus
`tesseract-ocr` + `poppler-utils` (system) — so paper documents (Raw/ scans, the Finance archive,
incoming post) get **table extraction and OCR of scanned PDFs**, not just page-by-page eyeballing.
Idempotent, non-interactive, remote-only, best-effort on the system packages so it never blocks
session start. The **identical hook is confirmed merged into the default branch of all eight repos**
(group + the seven company KBs) — checked directly against each repo on 2026-09-12: here in the
group repo it was committed straight to the default branch (no `claude/session-start-pdf-toolkit`
branch was ever created in this repo); in the seven company repos (Properties, Commercial
Properties, Construction, Waste, Holdings, SSAS, Amfa Furniture) it was merged into `main` via PR
from that branch, which still exists in each as a stale, already-merged copy — harmless, not
blocking, and not deleted by this session. **No merge is outstanding anywhere.**

---

## 6. Governance

### 6a. What automation (and an unattended session) may do, and what needs a human

**May, without asking:** read Drive, Gmail, Smartsheet and QuickBooks; process documents that
Minda has placed in `Raw/`; write owner notes into `Raw/` from statements made in the session;
create or update Wiki articles per §2 and §3; move processed Raw items to `Archive/`; rewrite
standing Outputs files once they exist; write a dated `change-log/` entry and refresh the standing
files (`current-state.md`, `open-issues.md`, `external-source-register.md`, `processed-items-ledger.md`);
raise Open Issues; create Wiki stubs and register external sources; **append rows to the group
Document Register and Change Requests Smartsheets** (the "Fishbone Group - Documents" workspace;
SRC-38/39) and set the Status of rows this database owns; **assign document IDs and file or move
qualifying documents into Collaboration Space**; **hand a registered document to another group KB by
adding it (named by its existing ID) to that KB's `Raw/` — add a new file only — with a covering note
and a register annotation (Direction = Internal), never re-numbering it**, all per
`Wiki/Process-Document-Numbering-and-Filing.md` v1.3 (§7a).

**Must never do without an explicit human decision:** send, reply to or forward external email
(drafting for a human is fine); file anything with Companies House or HMRC; make or authorise a
payment or commit any company to an obligation; **write to QuickBooks or any live system of record
except the narrow exceptions above** — appending rows to the group Document Register / Change
Requests sheets, filing documents into Collaboration Space, and the `Raw/` document hand-off between
group KBs (never editing or deleting another entity's rows, and no other Smartsheet writes); edit,
move, copy or delete anything inside a sister knowledge base — **other than adding a new file to its
`Raw/` under the §7a hand-off rule (a registered document named by its ID, plus a covering note)** — or
the Finance archive (otherwise link to it, or ask Minda to copy the document into `Raw/`); reply to a lender,
the SSAS trustees, a solicitor, an insurer, a tenant or a client; change Drive or Smartsheet
sharing; trash any file (archive instead); resolve an ambiguous or contradictory finding by
guessing.

If a routine's prompt or a user instruction ever conflicts with this list, this section wins
until the human confirms.

### 6b. Data access
- Who has access to the `Fishbone Group` root folder has **not been checked** (2026-09-03).
  Check before sharing anything further and record the result here with the date. The
  Properties Ltd base discovered a writer on its root folder that nobody had noticed for days.
- The Smartsheet workspace "1. General" is shared at workspace level with Irina Fedonina and
  several other people, some at external domains (per the Properties Ltd CLAUDE.md §6b). Any
  group-level sheet placed there inherits that sharing.
- The group **"Fishbone Group - Documents"** workspace (SRC-38/39, created 2026-09-09) is owned by
  minda@ and, so the per-company automations can append, was **shared on 2026-09-09** (Editor,
  can-share) with `info@fishboneproperties.co.uk` and Irina Fedonina, alongside owner minda@
  (applied by Minda, screenshot confirmed — the assistant cannot set Smartsheet sharing itself,
  see the bar below). All automations run as minda@ who owns the workspace, so appends already
  work and the register is switched on; the other companies' `info@` accounts (Construction,
  Commercial, Holdings, SSAS) are not yet added (optional — only for those companies' own people's
  visibility).
- `Archive/` now holds statutory accounts for the group companies across FY2023 to FY2025. These
  are public documents; Minda confirmed on 2026-09-07 that the FY2025 sets are **filed at Companies
  House**, so the earlier "For Approval / treat as confidential until filing is confirmed" caveat
  is retired. The Smartsheet "Sebastian Pabis" folder and the Finance archive (PAYE, P60s, bank
  statements) hold payroll and banking identifiers: cite, never copy.
- Several Collaboration Space folders are owned by staff and contractor accounts
  (`lana@fishbonewaste.co.uk`, `anna@indome.co.uk`, `anastasia@fishboneconstruction.co.uk`).
  Their contents may be partly hidden from this login (OI-5); confirm write access per project
  folder before relying on automated filing there.
- Cross-company facts are **linked** between systems, never copied, so there is one place to
  correct each fact.

### 6c. Revisiting this document
Update §0 to §3 when structure or process changes; §4 is maintained continuously; §5 must be
kept current as routines are created, changed or retired; §6 is revisited deliberately, not
silently rewritten; §7 is refreshed whenever a Raw item or an Open Issue resolution changes the
picture. Every replacement of this file goes through archive-then-recreate and gets a change-log
entry.

---

## 7. Group snapshot and open questions (as of 2026-09-07)

The Wiki is the authoritative record; start at `Wiki/00_INDEX.md`. This section is a one-screen
orientation. Group membership is per Minda's owner notes of 2026-09-03; legal structure, company
numbers and figures are from the statutory accounts archived on 2026-09-03 (`processed-items-ledger.md` rows
3 to 17), cited in each `Org-` article.

**Legal shape.** Fishbone Holdings Ltd is the parent of three subsidiaries (Construction, Waste,
Furniture by Fishbone). Fishbone Properties Ltd and Fishbone Commercial Properties Ltd are
separate companies under common control, not owned by Holdings. The SSAS is a pension scheme,
not a company. All five companies share the registered office 6 Beverley Place, Wallsend
NE28 7BH, the accountants RMT, and the directors M Gaudiesius and A Prutkovas. Accounting years
end 29 April (Construction) or 30 April (the rest).

| Entity | Co. no. | Relationship | Status | One line | Article |
|---|---|---|---|---|---|
| Fishbone Holdings Ltd | 10146262 | Parent | Active | Holding company; loans of £303,702 to Properties Ltd (£283k at 3.8%, £20k at 6%) — **interest waived 1 Oct 2026–30 Sep 2028** (executed 2026-09-07), contractual rates resume 1 Oct 2028; net assets £436,959 at 30/04/2025; income is loan interest plus a £128,000 Construction dividend in FY2025; now has its own Knowledge Base | `Org-Fishbone-Holdings-Ltd.md` |
| Fishbone Construction Ltd | 07948220 | Subsidiary of Holdings | Active | Formerly Fishbone Drylining Ltd (renamed 31/10/2024); turnover £849,309 and loss £(19,013) FY2025; bank loans £443,234; business/related-party/HP borrowing **£532,829** at 21/08/2026 per the reconciled loan workbook (OI-6) | `Org-Fishbone-Construction-Ltd.md` |
| Fishbone Properties Ltd | 09687012 | Common control | Active | 17 residential properties; register rent £12,784/month, loans £1.49m, value £2.33m, equity £839k at 01/09/2026; FY2025 loss £(58,555) after the fair-value gain fell to nil (FY2024 profit £128,201); owes Holdings £303k; own mature knowledge base; two properties earmarked for sale | `Org-Fishbone-Properties-Ltd.md` |
| Fishbone Commercial Properties Ltd | 13687238 | Common control | Active | Freehold of 145 High Street East, Wallsend, retail let at £1,000/month plus VAT; SSAS loanback £31.5k at £790/month; owes Construction £97k and Properties £103k | `Org-Fishbone-Commercial-Properties-Ltd.md` |
| Fishbone Waste Ltd | 13201875 | Subsidiary of Holdings | Dormant | Waste business; FY2025 loss £(90,435), net liabilities £(197,152), owed Construction £128k and Holdings £85k; **ceased operating January 2026 and not being liquidated** (owner note), retains waste permits/certificates to support Construction and Properties projects; preserved as an institutional lesson | `Org-Fishbone-Waste-Ltd.md` |
| Amfa Furniture Ltd | 11259604 | Subsidiary of Holdings | Active | Renamed from Furniture by Fishbone Ltd (formerly Fishbone Investment Ltd) to Amfa Furniture Ltd on 13/07/2026 (Companies House); Smartsheet order tracker since Jul 2026; no accounts on file; machinery and workshop sit in Construction's books | `Org-Amfa-Furniture-Ltd.md` |
| Fishbone SSAS | PSR 12018880 / PSTR 20005255RF | Pension scheme (occupational DC) | Active | Group pension scheme and internal lender; trustees M Gaudiesius, A Prutkovas + Empowered Trustees Ltd (12291059); administrator Empowered Pensions Ltd; 2 members; principal employer Construction; one secured loanback to Commercial Properties (£41,500, balance £31,496) charged over freehold title TY59507; canonical home is the **Fishbone SSAS Knowledge Base** (created 2026-09-06) | `Org-Fishbone-SSAS.md` |

**Open questions** (full text in `open-issues.md`)
1. **OI-8 — the only substantive item still open.** Which company holds the furniture-**workshop
   lease** and legal title to the woodworking machinery. Minda confirmed on 2026-09-07 that a
   **separate lease exists** (so the workshop is not simply Construction's premises), even though
   the trade, the machinery and the £449,536 of leasehold improvements are booked in Construction.
   Awaiting the lease document from Minda. Material to any future Amfa Furniture sale.
2. Which companies' QuickBooks files the Intuit connector reaches (always call `company_info`
   first — Properties confirmed, and Construction now also seen reachable via the Loans Wiki's
   reconciliation work; others still unconfirmed).
3. Optional/awaiting Minda: set the group **north-star goal** so the Operations Dashboard §3
   becomes an agreed plan rather than a synthesis of existing targets; an optional retrospective
   Fishbone Waste "lessons" article.
4. With Minda/RMT (not a database task): OI-12 — a Loans-Wiki reconciliation found a proposed
   Construction→Holdings dividend / D Macdonald loan-assignment document (dated 31/05/2025) that
   Construction's own ledger does not support; no accounting treatment to be actioned or backdated
   on it. See `open-issues.md` OI-12.

**Recently resolved — 2026-09-07 outstanding-items sort** (audit trail in `open-issues.md`):
- **OI-3** — SSAS canonical home set to the Fishbone SSAS Knowledge Base; scheme facts recorded
  from the TPR certificate; `Org-Fishbone-SSAS.md` built out from stub.
- **OI-4** — this group database is the **master index** over all Fishbone systems (link-and-cite;
  "where each thing lives" map in `Wiki/00_INDEX.md`).
- **OI-5** — access to the staff-owned Collaboration Space folders is adequate for the master-index
  purpose; specific files can be shared on request.
- **OI-6** — the `Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx` workbook is authoritative.
  Group debt is recorded as **three separate layers, never one combined total**: business /
  related-party / HP **£638,939** across three borrowers (Construction £532,829, Properties
  £74,613, Commercial £31,496 SSAS loanback), plus £10,442 related-party interest arrears and two
  revolving trade-finance/HMRC facilities off-total; property mortgages **~£1.23m (30/04/2025) /
  £1.49m (01/09/2026)**, Fishbone Properties only; and intercompany loans (Holdings→Properties
  £303,702 etc.), internal.
- **OI-7** — official copy of register title **TY59507** settles Ferndale: FCP owns the freehold of
  145 High Street East + 2 & 2A Ferndale Avenue; Properties holds a 125-year leasehold (TY324602);
  a 29/04/2025 SSAS charge secures the loanback. Only the operational insure/pay point remains.
- **FY2025 accounts** — confirmed **filed** at Companies House (owner statement); the "For Approval
  / confidential" framing is retired (§6b).
- **OI-10 (2026-09-07, later)** — the **Fishbone Holdings Ltd Knowledge Base** (created 2026-09-05)
  was added to §0/§1 and `00_INDEX.md`, and the Holdings→Properties **interest waiver** recorded as
  executed (this closed open question 2 above): effective 1 Oct 2026–30 Sep 2028, contractual rates
  resume 1 Oct 2028, standing orders cancelled 2026-09-07, a manual September-interest payment
  (~£1,994) due by 31 Oct 2026, to be disclosed in both companies' FY2027 accounts.
- **OI-11 (2026-09-07, later)** — corrected two stale sister-KB descriptions in §1 (Construction is
  no longer a skeleton; Commercial's root `CHANGELOG.md` was retired 2026-09-05).
(OI-1 resolved 2026-09-04: Furniture by Fishbone Ltd renamed Amfa Furniture Ltd on 13/07/2026, ledger row 18. OI-2 resolved 2026-09-03: Anthill Homes out of scope. OI-9 resolved 2026-09-04: Fishbone Waste ceased operating January 2026, ledger row 21.)

---

*Standing context for the Fishbone Group knowledge database. Adopted 2026-09-03; revised
2026-09-03T16:00Z, 16:15Z, 19:45Z and 20:00Z, 2026-09-04T13:39Z and 20:00Z, 2026-09-05T13:00Z (change-log split to the Properties Ltd model), 2026-09-05T19:30Z (AT UK Interiors Ltd ruled out of scope), 2026-09-07 (outstanding-items sort: OI-3 to OI-7 resolved, master-index role confirmed, FY2025 filed) and 2026-09-07 later (weekly master-index digest routine live; Fishbone Holdings Ltd KB indexed and the Holdings→Properties interest waiver recorded; OI-10/OI-11 resolved), and 2026-09-09 (centralised group Document Register + Change Requests sheets and the v1.0 document numbering/filing policy; §6a append exception) and 2026-09-09 later (document policy to v1.1 — §7a inter-KB `Raw/` document hand-off; §6a exception widened) and 2026-09-09 later still (document policy to v1.2 — FC-CR-0001 accepted: §6 tasks-not-documents, §11 per-KB self-migration) and 2026-09-10 (document policy to v1.3 — FM-CR-0001 + FP-CR-0001 accepted: §3/§7 self-assigned property codes, §5 email-attachment source capture) and 2026-09-10 later (group incoming paper-mail process added — `Wiki/Process-Post-Handling.md` v1.0) and 2026-09-10 later still (Amfa Furniture and new Fishbone Waste Knowledge Bases added to §0/§1, count to ten; all seven companies now have a KB, so post routes to every company's own KB) and 2026-09-11 (group Tasks Status colour convention recorded in §1) and 2026-09-12 (that convention implemented as a formula-driven `Health` RYGB column across all five Tasks sheets, superseding the 2026-09-11 conditional-formatting note) and 2026-09-12 later (group SessionStart-hook standard — PDF toolkit incl. OCR installed on web sessions across all eight KB repos; §5) and 2026-09-12 later still (Quarterly sweep §5 gained a tooling & environment health scope; a monthly tooling-review routine was declined in its favour) and 2026-09-12 evening (Peter — AI Data Assistant stood up and added to §1 sister systems, count to eleven) and 2026-09-12 later still (re-verified the SessionStart-hook rollout against all eight repos directly: confirmed already merged into every default branch, not pending; §5 corrected). See the dated `change-log/` files and, for earlier sessions, the archived monolithic `CHANGELOG`.*
