# Fishbone Group - Knowledge Database

> **Status: AUTHORITATIVE since 2026-09-03.** Modelled on the Fishbone Properties Ltd `CLAUDE.md`
> (version of 03/09/2026) and the Fishbone Commercial Properties Ltd `CLAUDE.md` (03/09/2026),
> adapted to a group-level database that sits above the per-company knowledge bases.
> `README.md`, `WORKFLOW.md` and `Wiki/WIKI_GUIDELINES.md` hold the detailed procedures; this file
> is the standing context that an AI session reads first. Where this file and those differ, this
> file wins, and the difference is a bug to fix in the same session.

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
| Fishbone Properties Ltd | `Fishbone Properties Ltd - Knowledge Base/CLAUDE.md` §0 and its latest `Outputs/change-log-*.md` |
| Fishbone Commercial Properties Ltd | `Fishbone Commercial Properties Ltd - Knowledge Base/CLAUDE.md` and its `CHANGELOG.md` |
| Fishbone Construction Ltd | `Loans/Wiki/Entity - Fishbone Construction Ltd` and the latest `Loans/Change Log YYYY-MM-DD` |
| Any borrowing or loan question | `Loans/Wiki/Home` and `Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx` (Summary tab) |

Facts that appear in two places must agree. If they do not, raise an Open Issue rather than
picking one.

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
commentary, so the Wiki can cite it. Unlike the Properties Ltd base, this database **does move**
a Raw item into `Archive/` once processed (renamed with the processing date; the Drive id is
unchanged, which is what the ledger keys on). See `WORKFLOW.md` Step 4.

**Wiki/** is flat, one article per entity or topic, filenames `Prefix-Title-Case.md` with the
prefixes in `WIKI_GUIDELINES.md` §1 (`Org-`, `Person-`, `Project-`, `Client-`, `Supplier-`,
`Policy-`, `Finance-`, `Asset-`, `Process-`, `Topic-`). Every article is listed in
`Wiki/00_INDEX.md`. Six `Org-` stubs exist as of 2026-09-03.

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

Four other knowledge systems exist on Drive. Until Open Issue OI-4 is decided, this database
**links** to them and does not copy their content, so each fact has one home.

| System | Location | Holds | Maturity |
|---|---|---|---|
| Collaboration Space | Drive root, shared folder `1YNj5BIpKVzcmI4U1DRkgu7kcnSDizGEi` | Operational filing per company: Fishbone Construction, Fishbone Properties Ltd, Fishbone Commercial Properties, Fishbone Waste, Furniture by Fishbone, Other (incl. Staff (SSAS)) | Live filing since Nov 2024; several subfolders owned by other accounts |
| Fishbone Properties Ltd - Knowledge Base | Drive root, `11SREv6Rx4jvTzMtpQbKqzzZkTN4wZgNk` | 17 property articles, tenants, financials, processes; 8 cloud Routines; Smartsheet and QuickBooks live sources | Mature, automated, actively maintained |
| Fishbone Commercial Properties Ltd - Knowledge Base | Drive root, `1zC8LmkCLr7BEaqcAlxgAXyz5Bfm73Z7C` | One property (145 High Street East), company snapshot, Smartsheet register; git mirror `minda-ui/Fishbone-Commercial-Properties-Ltd` | New (03/09/2026), no automation |
| Fishbone Construction Ltd - Knowledge Base | Drive root, `13IQdim0JhKmoQvJBmJmnMhreJqg55xTr` | Five procedure docs only | Skeleton |
| Loans Wiki | `Loans/Wiki`, `1lIfM6Rjk_dlZsRzaPSvio7eNtwNA3S_T` | 3 entity pages, 14 facility pages, 2 revolving-book pages, planned property sale; workbook in `Loans/Outputs` | Complete as at 25/08/2026, manually maintained |

A separate `Minda Wiki` (personal knowledge base, Google Docs, e.g. "Minda Wiki - Business &
Fishbone Group") holds strategy, targets and the founder's working notes. It is a source, not a
sister system: cite it, do not maintain it from here.

### Live data sources (known, not yet used from this database)

None are wired to this database yet. These exist in the sister systems and are the source of
truth for their datasets; when a group-level article needs one of these figures, pull it fresh
from the live source (or from the sister KB's most recent sync entry) rather than from a Raw
export, and log the pull.

| Dataset | Live source | Notes |
|---|---|---|
| Residential property register | Smartsheet "Property Register-DataBase", sheet id `4273518114113412` | Documented in the Properties Ltd CLAUDE.md §1, including its health-flag semantics and known anomalies |
| Commercial property register | Smartsheet "Property Register - Database", sheet id `8289112509515652`, workspace "Fishbone Commercial Properties Ltd" | Health flags are manual picklists, not formulas |
| Company financials | QuickBooks Online via the Intuit connector | Confirmed live for Fishbone Properties Ltd (27/08/2026). **Not confirmed** which other companies' files the connector reaches. Always call `company_info` first and check the company name. |
| Group lending position | `Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx` | Not a live connector, but the formula-driven source of truth for all 14 facilities across three borrowing entities |
| Document Register and Tasks | Smartsheet, workspace "1. General" (Properties Ltd) | The `FP########` document-numbering scheme; see Properties Ltd CLAUDE.md §1 |

---

## 2. Wiki maintenance guidelines

Full rules are in `Wiki/WIKI_GUIDELINES.md`. In short:

- One subject per article. Header block mandatory: `Type`, `Status` (Active | Completed |
  Dormant | Superseded), `Last reviewed`, `Related`. Sections: Summary, Key facts, Details, Open
  questions, Sources, History.
- Every fact carries an `[Sn]` tag resolving to a Sources line: archived filename, Drive URL,
  document date, locator. Sources that live outside this database (sister systems, Minda Wiki)
  are cited as `External (Drive): <title> - <URL> - <dated> - accessed YYYY-MM-DD` and are also
  registered in the change log's External Source Register (§4). A fact with no source goes under
  Open questions, not Key facts.
- Links between articles are relative, by filename, on first mention, both ways where the
  relationship matters. A missing target gets a stub in the same session, never a dead link.
- One fact, one home. If the fact belongs to a sister system (a property's rent, a facility's
  balance), link there; do not restate it here.
- Personal data: business name, role and work contact only. No home addresses, personal phone
  numbers, bank account numbers, health or personal financial details. Director loans and
  related-party loans are business facts and may be recorded at entity level; the lender's
  personal circumstances are not.
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
ledger), **Register** the item as `in-progress` before reading it, **Triage** (duplicate,
irrelevant, blocked, or type), **Extract** into Wiki articles with citations and cross-links,
**Archive** (rename `YYYY-MM-DD_<name>`, move to `Archive/`), **Log** (`done` with the article
list). Outputs only when requested.

### 3c. Owner notes
Verbal statements from Minda become Raw items at once (§1), then follow 3b. A later statement
that refines an earlier one is a new note naming the one it clarifies; the earlier note is never
edited. Minda's 2026-09-03 list of the six group entities is such a statement and should be
written up as the first owner note when Raw processing begins.

### 3d. Reading limits, inherited from the sister systems
- **Any PDF with side-by-side tables** (bank statements, schedules, the Loans workbook exported to
  PDF) is read as a rendered image, not extracted text. A real £11,000 payment was missed in a
  sister workspace this way on 02/09/2026.
- **HMRC CT600 PDFs** extract with box numbers and values scrambled. Read page by page as images,
  or take figures from the accountant's computation.
- **Gmail attachment bytes often fail Drive's upload validation.** When the binary cannot be
  filed, transcribe the readable content into a `.md` record in `Raw/`, cite that, and say in the
  change log that it is a transcription.
- **Drive listings can be incomplete** for folders owned by other accounts (Fishbone Waste,
  Furniture by Fishbone, parts of Collaboration Space). Say "not visible to this login" rather
  than "does not exist".
- **Similar company names are not the same company, and different names are not different
  companies.** Fishbone Drylining Ltd turned out to be Fishbone Construction Ltd; Fishbone
  Commercial Properties Ltd turned out not to be Fishbone Properties Ltd. Ask; do not assume.

---

## 4. Change log

A **single file, `CHANGELOG.md`, at the root**, with six sections in this order: `Current State`
(overwritten each session), `Open Issues` (`OI-<n>`), `External Source Register` (`SRC-<n>`),
`Processed Items Ledger` (keyed on Raw Drive id), `Session Log` (one entry per session, newest at
the bottom), `Structure Changes`. Everything except Current State is append-only. Rules are in
the file's own header and in `README.md` §5.

This follows the Commercial Properties Ltd design (one file with a status table) rather than the
Properties Ltd design (one dated file per run in `Outputs/`). That design suits eight routines
writing in parallel; this database has no automation and a handful of sessions. Revisit if §5
goes live and runs start colliding on the same file.

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
| Group weekly digest | Weekly, Monday | Read the week's change-log entries from all sister systems (Properties Ltd `Outputs/change-log-*.md`, Commercial `CHANGELOG.md`, Loans change logs) and write `Outputs/YYYY-MM-DD_Digest_Group_v1.md`: what changed per company, open issues, upcoming deadlines. Read-only. | OI-4 decided; the six `Org-` articles no longer stubs. |
| Group lending monitor | Monthly, 1st | Re-read the Loans workbook Summary tab, compare entity totals against the `Org-` articles, flag arrears and undocumented facilities. Read-only. | Loans workbook registered as a source here. |
| Quarterly sweep | Quarterly, 1st of Jan/Apr/Jul/Oct | Drive permissions on this root folder; Companies House status for all six entities; `draft`/stub articles and orphans; Sources lines whose Drive URLs no longer resolve; DST check on any routine crons. | Nothing. |

Lessons inherited from the Properties Ltd migration, to apply if and when routines are created:
create them through the `claude.ai/code/routines` form (API-created routines lacked connectors and
stopped for permission prompts); bake folder and sheet ids into each prompt because a routine
starts with no memory; crons are UTC, so shift them at each UK clock change; publishing a shared
Artifact still needs a manual click.

---

## 6. Governance

### 6a. What automation (and an unattended session) may do, and what needs a human

**May, without asking:** read Drive, Gmail, Smartsheet and QuickBooks; file documents into
`Raw/`; create or update Wiki articles per §2 and §3; move processed Raw items to `Archive/`;
rewrite standing Outputs files once they exist; append change-log entries; raise Open Issues;
create Wiki stubs and register external sources.

**Must never do without an explicit human decision:** send, reply to or forward external email
(drafting for a human is fine); file anything with Companies House or HMRC; make or authorise a
payment or commit any company to an obligation; **write to any Smartsheet, QuickBooks or other
live system of record** (this database has no append exception at all, unlike the Properties Ltd
Document Register); edit, move or delete anything inside a sister knowledge base (link to it, or
raise the change with its owner); reply to a lender, the SSAS trustees, a solicitor, an insurer,
a tenant or a client; change Drive or Smartsheet sharing; trash any file (archive instead);
resolve an ambiguous or contradictory finding by guessing.

If a routine's prompt or a user instruction ever conflicts with this list, this section wins
until the human confirms.

### 6b. Data access
- Who has access to the `Fishbone Group` root folder has **not been checked** (2026-09-03).
  Check before sharing anything further and record the result here with the date. The
  Properties Ltd base discovered a writer on its root folder that nobody had noticed for days.
- Wiki articles link to Loans Wiki pages that name individual lenders (director loans,
  related-party loans). Those are business facts. Anything more personal stays in the source
  and is not quoted into this Wiki.
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

## 7. Group snapshot and open questions (as of 2026-09-03)

The Wiki is the authoritative record; start at `Wiki/00_INDEX.md`. This section is a one-screen
orientation. Every fact below is cited in an `Org-` article as of 2026-09-03; none has yet been
verified against a Companies House extract.

| Entity | Status | One line | Article |
|---|---|---|---|
| Fishbone Construction Ltd | Active | Construction arm; formerly Fishbone Drylining Ltd (same entity); 11 facilities, about £517k balance and £23.7k/month as at 21/08/2026 | `Org-Fishbone-Construction-Ltd.md` |
| Fishbone Properties Ltd | Active | 17 residential properties (FP1601 to FP2401); own mature knowledge base; two properties earmarked for sale | `Org-Fishbone-Properties-Ltd.md` |
| Fishbone Commercial Properties Ltd | Active | Company 13687238; freehold at 145 High Street East, Wallsend; borrower on the SSAS loanback (£31.5k, £790/month) | `Org-Fishbone-Commercial-Properties-Ltd.md` |
| Fishbone Waste Ltd | Dormant | Waste business, traded 2024 to 2025, inactive; preserved as an institutional lesson | `Org-Fishbone-Waste-Ltd.md` |
| Amfa Furniture Ltd | Active | Furniture manufacturer, filed on Drive as "Furniture by Fishbone"; legal name unconfirmed | `Org-Amfa-Furniture-Ltd.md` |
| Fishbone SSAS | Active | Group pension scheme, intended internal lender; one loanback outstanding; documents under Collaboration Space / Other / Staff (SSAS) | `Org-Fishbone-SSAS.md` |

Also named in the Minda Wiki but not in Minda's list of six: **Fishbone Holdings** and
**Anthill Homes Ltd** (OI-2).

**Open questions, in priority order** (full text in `CHANGELOG.md`, Open Issues)
1. OI-1: Is Amfa Furniture Ltd the legal name of Furniture by Fishbone, or a separate company?
2. OI-2: Are Fishbone Holdings and Anthill Homes Ltd in scope for this database?
3. OI-4: Does this database link to, absorb, or supersede the four sister systems?
4. OI-3: Canonical home for SSAS documents; scheme name, PSTR and trustees.
5. OI-5: Confirm access to the folders owned by other accounts.
6. Companies House numbers and registered offices for all six entities (only Commercial
   Properties, 13687238, is recorded).
7. Which companies' QuickBooks files the Intuit connector reaches.

---

*Standing context for the Fishbone Group knowledge database. Adopted 2026-09-03; see the
change-log Session Log entry of that date.*
