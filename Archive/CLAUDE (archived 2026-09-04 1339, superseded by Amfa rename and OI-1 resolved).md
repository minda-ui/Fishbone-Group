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

This file gives Claude the context it needs to work in this database without re-explaining the
setup each session: where the database lives and how it relates to the other Fishbone knowledge
systems (§1), how the Wiki is maintained (§2), how new items are processed (§3), how the change
log works (§4), what runs automatically (§5, nothing yet), the governance boundary (§6), and a
one-screen snapshot of the group with its open questions (§7).

---

## 0. Start every session here

**Before doing anything else, read `CHANGELOG.md` at the root of this folder.** Read the
`Current State` block, the `Open Issues` table, the newest `Session Log` entry, and scan the
`Processed Items Ledger` for rows still `in-progress`, `partial` or `blocked`. This applies to
every kind of session: a one-off question, a drafting request, a survey of Drive, not only formal
Raw processing. Another session may already have answered the question or corrected the figure.

**If the task is about one company rather than the group**, also read the newest change-log
entries in that company's own knowledge system before answering, because the detailed facts live
there and this database only links to them (see §1, "Sister systems"):

| Company | Read first |
|---|---|
| Fishbone Properties Ltd | `Fishbone Properties Ltd - Knowledge Base/CLAUDE.md` §0 and its latest `Outputs/change-log-*.md`; Smartsheet Document Register and Tasks (workspace "1. General") |
| Fishbone Commercial Properties Ltd | `Fishbone Commercial Properties Ltd - Knowledge Base/CLAUDE.md` and its `CHANGELOG.md`; Smartsheet workspace of the same name |
| Fishbone Construction Ltd | `Loans/Wiki/Entity - Fishbone Construction Ltd` and the latest `Loans/Change Log YYYY-MM-DD`; its FY2025 accounts are archived here (`Wiki/Org-Fishbone-Construction-Ltd.md` Sources) |
| Fishbone Holdings Ltd | No sister system. `Wiki/Org-Fishbone-Holdings-Ltd.md` here (FY2024 and FY2025 accounts archived), then the Smartsheet Document Register rows FP0000001 and FP0000003 |
| Amfa Furniture Ltd (registered as Furniture by Fishbone Ltd) | Smartsheet workspace "AMFA Furniture"; Drive `Collaboration Space / Furniture by Fishbone`; no accounts on file anywhere |
| Fishbone Waste Ltd | `Wiki/Org-Fishbone-Waste-Ltd.md` (FY2024 and FY2025 accounts archived); Drive `Collaboration Space / Fishbone Waste`; the Finance archive's Waste folder (SRC-31) |
| Fishbone SSAS | Drive `Collaboration Space / Other / Staff (SSAS)`; nothing else |
| Any borrowing or loan question | `Loans/Wiki/Home` and `Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx` (Summary tab); note OI-6, the loan lists disagree, and the accounts figures in CHANGELOG OI-6 |

Facts that appear in two places must agree. If they do not, raise an Open Issue rather than
picking one.

**Out of scope, do not raise again:** Anthill Homes Ltd is not part of the group (owner note
`2026-09-03_owner-note_anthill-homes-out-of-scope.md`). Its Smartsheet workspace and Drive
folders are not surveyed or cited from here.

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
├── CHANGELOG.md         <- the current change log (§4)
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
statutory accounts, the SSAS one is still a stub.

**Outputs/** are dated, versioned snapshots (`YYYY-MM-DD_<Type>_<Subject>_v<N>.<ext>`), never
edited after release. Standing always-current files are a deliberate exception once §5 exists;
there are none yet.

**Archive/** is never edited or deleted. Drive files cannot be edited in place by the tooling, so
every replacement of `CLAUDE.md`, `README.md`, `WORKFLOW.md`, `CHANGELOG.md` or a Wiki article
follows **archive-then-recreate**: rename the old file to
`<title> (archived YYYY-MM-DD HHMM, superseded by <reason>)`, move it into `Archive/`, then
upload the new file with the original title. Never trash. (The first two replacements on
2026-09-03, of `CHANGELOG.md` and `00_INDEX.md`, were trashed instead of archived before this rule
was adopted; they are recoverable from Drive trash for 30 days and are noted in the change log.)
Because control-file ids change on every replacement, **reference control files by filename,
never by Drive id.** Raw and Archive items keep stable ids.

### Sister systems (link, do not copy)

Six other knowledge systems exist. Until Open Issue OI-4 is decided, this database **links** to
them and does not copy their content, so each fact has one home. The one settled exception:
individual documents from the Finance archive are copied into `Raw/` by Minda for processing,
because the archive is a filing store, not a knowledge system.

| System | Location | Holds | Maturity |
|---|---|---|---|
| Collaboration Space | Drive root, shared folder `1YNj5BIpKVzcmI4U1DRkgu7kcnSDizGEi` | Operational filing per company: Fishbone Construction, Fishbone Properties Ltd, Fishbone Commercial Properties, Fishbone Waste, Furniture by Fishbone, Other (incl. Staff (SSAS)). Nothing for Holdings. | Live filing since Nov 2024; several subfolders owned by other accounts |
| Fishbone Properties Ltd - Knowledge Base | Drive root, `11SREv6Rx4jvTzMtpQbKqzzZkTN4wZgNk` | 17 property articles, tenants, financials, processes; 8 cloud Routines; Smartsheet and QuickBooks live sources | Mature, automated, actively maintained |
| Fishbone Commercial Properties Ltd - Knowledge Base | Drive root, `1zC8LmkCLr7BEaqcAlxgAXyz5Bfm73Z7C` | One property (145 High Street East), company snapshot, Smartsheet register; git mirror `minda-ui/Fishbone-Commercial-Properties-Ltd` | New (03/09/2026), no automation |
| Fishbone Construction Ltd - Knowledge Base | Drive root, `13IQdim0JhKmoQvJBmJmnMhreJqg55xTr` | Five procedure docs only | Skeleton |
| Loans Wiki | `Loans/Wiki`, `1lIfM6Rjk_dlZsRzaPSvio7eNtwNA3S_T` | 3 entity pages, 14 facility pages, 2 revolving-book pages, planned property sale; workbook in `Loans/Outputs`. Does not cover the Holdings intercompany loans. | Complete as at 25/08/2026, manually maintained |
| Smartsheet | Nine workspaces, all owned by minda@ (CHANGELOG SRC-16 to SRC-30) | "1. General" (shared registers: Document Register, Tasks, Contacts, Classifier), "4. Property maintenance" (Properties Ltd register), "Fishbone Commercial Properties Ltd", "AMFA Furniture", "My Work" (group loan sheets, budgets), "2. Sourcing", "3. Project Delivery", "Minda" (personal). "Workspace 1" belongs to Anthill Homes and is out of scope. | Live; the property registers and Document Register are the most current data anywhere |
| Finance archive | Drive root, `Finance-20260903T154848Z-1-001 / Finance`, `1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4` (SRC-31) | Statutory accounts, CT600s, bank and loan statements, PAYE and CIS returns by company and accounting year for Construction (2017-18 on), Properties (2020-21 on), Commercial Properties, Holdings (both 2023-24 on) and Waste. Sensitive: cite, never copy. | Filing store. Fifteen accounts PDFs processed through Raw on 03/09/2026 (batches 1 and 2); the rest listed in CHANGELOG SRC-31 |

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
| Document Register and Tasks | Smartsheet, workspace "1. General", sheet ids `7675667699337092` and `1343219457722244` | The `FP########` document-numbering scheme and `T#####` tasks; see Properties Ltd CLAUDE.md §1. Used by more than one company. |
| Company financials | QuickBooks Online via the Intuit connector | Confirmed live for Fishbone Properties Ltd (27/08/2026). **Not confirmed** which other companies' files the connector reaches. Always call `company_info` first and check the company name. |
| Group lending position | `Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx`; Smartsheet "Loan schedule" (`5538379808769924`) and "Repayment Plan" (`4650432322471812`) in My Work | Three lists that disagree (OI-6). Do not publish a group total until resolved. Balance-sheet anchors from the accounts are in CHANGELOG OI-6. |
| AMFA Furniture orders | Smartsheet workspace "AMFA Furniture", sheet id `5287398789482372` | Order tracker, Received to Shipped, one Drive folder per order |

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
  registered in the change log's External Source Register (§4). A fact with no source goes under
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
The six steps in `WORKFLOW.md`: **Orient** (read the change log, list `Raw/`, diff against the
ledger), **Register** the item as `in-progress` before reading it (this costs a CHANGELOG
replacement, and is still done: batch 1 registered seven items in one replacement, then closed
them in one more), **Triage** (duplicate, irrelevant, blocked, or type), **Extract** into Wiki
articles with citations and cross-links, **Archive** (rename `YYYY-MM-DD_<name>`, move to
`Archive/`), **Log** (`done` with the article list). Outputs only when requested.

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

A **single file, `CHANGELOG.md`, at the root**, with six sections in this order: `Current State`
(overwritten each session), `Open Issues` (`OI-<n>`), `External Source Register` (`SRC-<n>`),
`Processed Items Ledger` (keyed on Raw Drive id, numbered rows), `Session Log` (one entry per
session, newest at the bottom), `Structure Changes`. Everything except Current State is
append-only. Rules are in the file's own header and in `README.md` §5.

This follows the Commercial Properties Ltd design (one file with a status table) rather than the
Properties Ltd design (one dated file per run in `Outputs/`). That design suits eight routines
writing in parallel; this database has no automation and a handful of sessions. Revisit if §5
goes live and runs start colliding on the same file, or if the file passes about 60 KB (it was
48 KB after batch 1); at that point move closed Session Log entries to a dated
`Archive/CHANGELOG-history-YYYY-MM.md` and keep only the current month in the live file.

Every session, including one that processes nothing, ends with a Session Log entry and a
refreshed Current State. Every replacement of the file goes through archive-then-recreate (§1).

---

## 5. Automated processes

**None are live.** Everything below is a proposal, in priority order, and each must satisfy §6a
before it is created. When a routine is created, add it here with its real name, schedule and
connectors, and remove the "proposed" marker. A routine reading this section should treat it as
background; its instructions are in its own prompt.

| Proposed routine | Cadence | Would do | Prerequisite |
|---|---|---|---|
| Group weekly digest | Weekly, Monday | Read the week's change-log entries from all sister systems (Properties Ltd `Outputs/change-log-*.md`, Commercial `CHANGELOG.md`, Loans change logs) and the open rows of the Smartsheet Tasks sheet, and write `Outputs/YYYY-MM-DD_Digest_Group_v1.md`: what changed per company, open issues, upcoming deadlines. Read-only. | OI-4 decided. |
| Group lending monitor | Monthly, 1st | Re-read the Loans workbook Summary tab and the My Work loan sheets, compare entity totals against the `Org-` articles, flag arrears and undocumented facilities. Read-only. | OI-6 resolved. |
| Quarterly sweep | Quarterly, 1st of Jan/Apr/Jul/Oct | Drive permissions on this root folder; Companies House status and filing deadlines for all seven entities (accounting reference dates 29 or 30 April; accounts due 9 months later, so by end January); `draft`/stub articles and orphans; Sources lines whose URLs no longer resolve; DST check on any routine crons. | Nothing. |

Lessons inherited from the Properties Ltd migration, to apply if and when routines are created:
create them through the `claude.ai/code/routines` form (API-created routines lacked connectors and
stopped for permission prompts); bake folder and sheet ids into each prompt because a routine
starts with no memory; crons are UTC, so shift them at each UK clock change; publishing a shared
Artifact still needs a manual click.

---

## 6. Governance

### 6a. What automation (and an unattended session) may do, and what needs a human

**May, without asking:** read Drive, Gmail, Smartsheet and QuickBooks; process documents that
Minda has placed in `Raw/`; write owner notes into `Raw/` from statements made in the session;
create or update Wiki articles per §2 and §3; move processed Raw items to `Archive/`; rewrite
standing Outputs files once they exist; append change-log entries; raise Open Issues; create Wiki
stubs and register external sources.

**Must never do without an explicit human decision:** send, reply to or forward external email
(drafting for a human is fine); file anything with Companies House or HMRC; make or authorise a
payment or commit any company to an obligation; **write to any Smartsheet, QuickBooks or other
live system of record** (this database has no append exception at all, unlike the Properties Ltd
Document Register); edit, move, copy or delete anything inside a sister knowledge base or the
Finance archive (link to it, or ask Minda to copy the document into `Raw/`); reply to a lender,
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
- `Archive/` now holds statutory accounts for the group companies across FY2023 to FY2025. They are public documents once filed,
  but the FY2025 sets are marked "For Approval" and may not yet be filed; treat them as
  confidential until filing is confirmed. The Smartsheet "Sebastian Pabis" folder and the Finance
  archive (PAYE, P60s, bank statements) hold payroll and banking identifiers: cite, never copy.
- Several Collaboration Space folders are owned by staff and contractor accounts
  (`lana@fishbonewaste.co.uk`, `anna@indome.co.uk`, `anastasia@fishboneconstruction.co.uk`).
  Their contents may be partly hidden from this login (OI-5).
- Cross-company facts are **linked** between systems, never copied, so there is one place to
  correct each fact.

### 6c. Revisiting this document
Update §0 to §3 when structure or process changes; §4 is maintained continuously; §5 must be
kept current as routines are created, changed or retired; §6 is revisited deliberately, not
silently rewritten; §7 is refreshed whenever a Raw item or an Open Issue resolution changes the
picture. Every replacement of this file goes through archive-then-recreate and gets a change-log
entry.

---

## 7. Group snapshot and open questions (as of 2026-09-03T20:00Z)

The Wiki is the authoritative record; start at `Wiki/00_INDEX.md`. This section is a one-screen
orientation. Group membership is per Minda's owner notes of 2026-09-03; legal structure, company
numbers and figures are from the statutory accounts archived on 2026-09-03 (CHANGELOG ledger rows
3 to 17), cited in each `Org-` article.

**Legal shape.** Fishbone Holdings Ltd is the parent of three subsidiaries (Construction, Waste,
Furniture by Fishbone). Fishbone Properties Ltd and Fishbone Commercial Properties Ltd are
separate companies under common control, not owned by Holdings. The SSAS is a pension scheme,
not a company. All five companies share the registered office 6 Beverley Place, Wallsend
NE28 7BH, the accountants RMT, and the directors M Gaudiesius and A Prutkovas. Accounting years
end 29 April (Construction) or 30 April (the rest).

| Entity | Co. no. | Relationship | Status | One line | Article |
|---|---|---|---|---|---|
| Fishbone Holdings Ltd | 10146262 | Parent | Active | Holding company; loans of £303,702 to Properties Ltd (£283k at 3.8%, £20k at 6%); net assets £436,959 at 30/04/2025; income is loan interest plus a £128,000 Construction dividend in FY2025 | `Org-Fishbone-Holdings-Ltd.md` |
| Fishbone Construction Ltd | 07948220 | Subsidiary of Holdings | Active | Formerly Fishbone Drylining Ltd (renamed 31/10/2024); turnover £849,309 and loss £(19,013) FY2025; bank loans £443,234; 11 facilities per the Loans Wiki, about £517k and £23.7k/month at 21/08/2026 | `Org-Fishbone-Construction-Ltd.md` |
| Fishbone Properties Ltd | 09687012 | Common control | Active | 17 residential properties; register rent £12,784/month, loans £1.49m, value £2.33m, equity £839k at 01/09/2026; FY2025 loss £(58,555) after the fair-value gain fell to nil (FY2024 profit £128,201); owes Holdings £303k; own mature knowledge base; two properties earmarked for sale | `Org-Fishbone-Properties-Ltd.md` |
| Fishbone Commercial Properties Ltd | 13687238 | Common control | Active | Freehold of 145 High Street East, Wallsend, retail let at £1,000/month plus VAT; SSAS loanback £31.5k at £790/month; owes Construction £97k and Properties £103k | `Org-Fishbone-Commercial-Properties-Ltd.md` |
| Fishbone Waste Ltd | 13201875 | Subsidiary of Holdings | Active | Waste business; FY2025 loss £(90,435), net liabilities £(197,152), owed Construction £128k and Holdings £85k; still trading per the FY2025 accounts (six employees, going concern) though the Minda Wiki calls it inactive; preserved as an institutional lesson | `Org-Fishbone-Waste-Ltd.md` |
| Amfa Furniture Ltd | 11259604 | Subsidiary of Holdings | Active | Registered as Furniture by Fishbone Ltd (formerly Fishbone Investment Ltd) at April 2025; Amfa rename unconfirmed; Smartsheet order tracker since Jul 2026; no accounts on file; machinery and workshop sit in Construction's books | `Org-Amfa-Furniture-Ltd.md` |
| Fishbone SSAS | n/a | Pension scheme | Active | Group pension scheme, intended internal lender; one loanback to Commercial Properties outstanding; documents under Collaboration Space / Other / Staff (SSAS) | `Org-Fishbone-SSAS.md` (stub) |

**Open questions, in priority order** (full text in `CHANGELOG.md`, Open Issues)
1. Process the remaining accounts from the Finance archive: Commercial Properties FY2025 (four files)
   and Construction/Drylining YE 2024. (Properties FY2025, Waste FY2025 and Drylining YE 2023 done in batch 2.)
2. OI-6: Which loan list is authoritative? The accounts now give balance-sheet anchors.
3. OI-1: Has Furniture by Fishbone Ltd (11259604) been renamed Amfa Furniture Ltd? One Companies
   House lookup closes it.
4. OI-8: Which company owns the workshop lease and woodworking machinery, Construction (where
   they are booked) or Furniture by Fishbone?
5. OI-7: Who owns, insures and pays for 2 and 2A Ferndale Avenue (FP 2202 / FCP 0001)?
6. OI-4: Does this database link to, absorb, or supersede the sister systems?
7. OI-3: Canonical home for SSAS documents; scheme name, PSTR and trustees.
8. OI-5: Confirm access to the folders owned by other accounts.
9. Whether the FY2025 accounts (For Approval, 28 to 30 April 2026) have been filed at Companies
   House, and the outcome of the Holdings interest-waiver request of 31/08/2026.
10. Which companies' QuickBooks files the Intuit connector reaches.

---

*Standing context for the Fishbone Group knowledge database. Adopted 2026-09-03; revised
2026-09-03T16:00Z, 16:15Z, 19:45Z and 20:00Z. See the change-log Session Log entries of that date.*
