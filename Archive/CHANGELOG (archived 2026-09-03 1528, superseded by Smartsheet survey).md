# CHANGELOG — Fishbone Group database

This file is the system's memory. Every session reads it first and updates it last. It is **append-only** except for the Current State block, which is overwritten each session to reflect the present.

Rules:
- Timestamps are UTC, ISO 8601 (`2026-09-03T14:52Z`).
- A Raw item counts as processed only when it has a ledger row with status `done`.
- Never delete rows or entries. Correct a mistake by adding a new entry that references the old one.
- Drive files cannot be edited in place by the assistant tooling, so control files (`CLAUDE.md`, `README.md`, `WORKFLOW.md`, `CHANGELOG.md`, `Wiki/*.md`) are replaced by **archive-then-recreate**: rename the old file `<title> (archived YYYY-MM-DD HHMM, superseded by <reason>)`, move it to `Archive/`, upload the new one. Never trash. Their Drive IDs therefore change: always reference them by filename. Raw and Archive items are never replaced, so their Drive IDs are stable and are the ledger key.
- Sections, in order: Current State · Open Issues · External Source Register · Processed Items Ledger · Session Log · Structure Changes.

---

## Current State

_Overwritten at the end of every session._

| Field                     | Value                                           |
|---------------------------|-------------------------------------------------|
| Last session              | 2026-09-03T15:30Z                               |
| Last session by           | Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk |
| Raw items pending         | 0                                               |
| Raw items blocked         | 0                                               |
| Wiki articles             | 6 (all Organisation stubs)                      |
| Outputs produced          | 0                                               |
| Archived items            | 0 Raw items; 2 superseded control files         |
| External sources registered | 15                                            |
| Open issues               | 5                                               |
| Next action               | Resolve OI-1 to OI-5 with Minda. Then write the first owner note (Minda's list of six entities, 2026-09-03) into `Raw/` and process it; then copy SRC-01 to SRC-06 into `Raw/` and process them so the six stubs cite archived files. |

---

## Open Issues

Unresolved items needing a human decision: blocked Raw files, material conflicts between sources, missing documents. Each issue gets an ID `OI-<n>`. When resolved, add a `Resolved` line rather than deleting.

| ID    | Raised (UTC)      | Item / article                       | Issue                                    | Status | Resolved (UTC) / note |
|-------|-------------------|--------------------------------------|------------------------------------------|--------|-----------------------|
| OI-1  | 2026-09-03T15:40Z | Org-Amfa-Furniture-Ltd.md | Minda named the entity "Amfa Furniture Ltd" but Drive files it as "Furniture by Fishbone" and the Minda Wiki calls it "Furniture by Fishbone Ltd". Confirm the registered legal name and whether they are one company. | Open | |
| OI-2  | 2026-09-03T15:40Z | Group scope | The Minda Wiki also lists Fishbone Holdings and Anthill Homes Ltd as group companies. Neither is in Minda's list of six nor has a Drive folder. Confirm whether they are in scope for this database. | Open | |
| OI-3  | 2026-09-03T15:40Z | Org-Fishbone-SSAS.md | SSAS documents sit under "Collaboration Space / Other / Staff (SSAS)"; a separate "Fishbone Pension Fund" folder is empty. Decide the canonical home, and confirm scheme name, PSTR and trustees. | Open | |
| OI-4  | 2026-09-03T15:40Z | Structure | Four parallel knowledge systems exist: Collaboration Space (operational filing), three per-company Knowledge Base folders, the Loans Wiki, and this database. Decide whether this database links to them, absorbs them, or supersedes them. Until decided, this database links and does not copy (CLAUDE.md §1). | Open | |
| OI-5  | 2026-09-03T15:40Z | Access | Fishbone Waste and Furniture by Fishbone folders are owned by other accounts (lana@fishbonewaste.co.uk, anna@indome.co.uk, anastasia@fishboneconstruction.co.uk). Listings may be incomplete for this login. Confirm access or request sharing. | Open | |

---

## External Source Register

Sources that live elsewhere on Drive and have been used by Wiki articles or control files without being copied into Raw or Archive. Each gets an ID `SRC-<n>`. When a source is later copied into Raw and archived, add its ledger row and note the archived filename here so citations can be upgraded.

| ID     | Title / location | Drive URL | Owner | Dated | Used by | Archived as |
|--------|------------------|-----------|-------|-------|---------|-------------|
| SRC-01 | Loans/Wiki — "Entity — Fishbone Construction Ltd" (Google Doc) | https://docs.google.com/document/d/1eFOZKEN5nqESIVAw-Cwzc8FRddsH4gEY8-_wt62koB8/edit | minda@ | 25/08/2026 | Org-Fishbone-Construction-Ltd | not yet |
| SRC-02 | Loans/Wiki — "Entity — Fishbone Properties Ltd" (Google Doc) | https://docs.google.com/document/d/11Da7FpVo1rjYEbYJx422m8fFZK3BOCFT7xwPGZ5vCXE/edit | minda@ | 25/08/2026 | Org-Fishbone-Properties-Ltd | not yet |
| SRC-03 | Loans/Wiki — "Entity — Fishbone Commercial Properties Ltd" (Google Doc) | https://docs.google.com/document/d/15VwmT_9KPAajrnwDd4mn7nUxA9RoyPqJfL2HE2pgkxw/edit | minda@ | 21/08/2026 | Org-Fishbone-Commercial-Properties-Ltd | not yet |
| SRC-04 | Loans/Wiki — "Facility — SSAS Loanback — Pension Scheme Loan" (Google Doc) | https://docs.google.com/document/d/1XuyqUCiGu5OIdQqmrqe8V-jevSY8rrId8thcnp2jtwM/edit | minda@ | 21/08/2026 | Org-Fishbone-Commercial-Properties-Ltd, Org-Fishbone-SSAS | not yet |
| SRC-05 | Loans/Wiki — "Home" (Google Doc) | https://docs.google.com/document/d/1BpOCuVgYyhNpD4SKfoWMKFmS7oN3iWW8-p7B1Vf6-nY/edit | minda@ | 25/08/2026 | all six Org articles | not yet |
| SRC-06 | "Minda Wiki - Business & Fishbone Group" (Google Doc) | https://docs.google.com/document/d/1F7_X-Zomd6iXBBr5h3nHgXdd23tw8sx1Ecz4lYFiA-o/edit | minda@ | 18 Aug 2026 | all six Org articles | not yet |
| SRC-07 | Folder: Collaboration Space (root of operational filing) | https://drive.google.com/drive/folders/1YNj5BIpKVzcmI4U1DRkgu7kcnSDizGEi | minda@ | created 2024-11-22 | all six Org articles (subfolders) | n/a (folder) |
| SRC-08 | Folder: Fishbone Construction Ltd - Knowledge Base | https://drive.google.com/drive/folders/13IQdim0JhKmoQvJBmJmnMhreJqg55xTr | minda@ | created 2026-08-25 | Org-Fishbone-Construction-Ltd | n/a (folder) |
| SRC-09 | Folder: Fishbone Properties Ltd - Knowledge Base | https://drive.google.com/drive/folders/11SREv6Rx4jvTzMtpQbKqzzZkTN4wZgNk | minda@ | created 2026-08-10 | Org-Fishbone-Properties-Ltd | n/a (folder) |
| SRC-10 | Folder: Fishbone Commercial Properties Ltd - Knowledge Base | https://drive.google.com/drive/folders/1zC8LmkCLr7BEaqcAlxgAXyz5Bfm73Z7C | minda@ | created 2026-09-03 | Org-Fishbone-Commercial-Properties-Ltd | n/a (folder) |
| SRC-11 | Folder: Loans (contains Wiki, Outputs workbook, dated Change Logs) | https://drive.google.com/drive/folders/1kW9XA7ADnvVH700XYnFTFbKa3SeNtqip | minda@ | created 2026-08-21 | Org articles via SRC-01 to SRC-05 | n/a (folder) |
| SRC-12 | Folder: GitHub (repo mirrors: Fishbone Properties Ltd, Fishbone Commercial Properties Ltd, Sebastian, Minda, desktop-tutorial) | https://drive.google.com/drive/folders/1clpfjpil2SVL3Dzzrls1gY3FgDJaJtnp | minda@ | created 2026-08-26 | Org-Fishbone-Properties-Ltd, Org-Fishbone-Commercial-Properties-Ltd | n/a (code, not documents) |
| SRC-13 | Fishbone Properties Ltd - Knowledge Base / CLAUDE.md (48 KB, current) | https://drive.google.com/file/d/1-ApEcb2BG8wyTeD9sJmEw_XOqRvYdWEq/view | minda@ | 2026-09-03 07:45 | CLAUDE.md (model) | n/a (control file of a sister system) |
| SRC-14 | Fishbone Commercial Properties Ltd - Knowledge Base / Archive / CLAUDE.md (archived 2026-09-03, superseded by v2) | https://drive.google.com/file/d/14mcabtnKOSZNKIURSjsthU4kFw9KppjR/view | minda@ | 2026-09-03 | CLAUDE.md (model) | n/a. Its v2 successor was not found on Drive at 15:20Z; check again before relying on this version. |
| SRC-15 | Original CLAUDE.md template (7.9 KB) in My Drive / Downloads | https://drive.google.com/file/d/1HO6fXwpBretuGuT4r3Ny9cvsWUnUf-xW/view | minda@ | 2026-08-10 | CLAUDE.md (model) | n/a |

Key subfolders surveyed under SRC-07 (all accessed 2026-09-03): Fishbone Construction `1J5imfoCs11kHEEnc7qyo3g0JG0u_97WL`; Fishbone Properties Ltd `1_zR-v8T7a8caIQ-LRDRahEat9y9uonYW`; Fishbone Commercial Properties `1F3qKwvnENAXQdtrtJcZ_M3SbVik6IMVS`; Fishbone Waste `1JOnsUigihbpin7HzstedCookwkDiSI49`; Furniture by Fishbone `1qJsNA2hiR83FRIQOWJr3fqFBpJqzv3TF`; Other `1sS9XPgwtwQhS1niwdZLBNN5Zk3XJv3a-`; Other / Staff (SSAS) `1Q7C8BIAD9pGfoBa9a-RF-EmGdS7xXqw0`; Other / Fishbone Pension Fund `1ZPnzdxoaEbtvBe5njOqMhc0XC1dmCd1l` (empty).

---

## Processed Items Ledger

One row per Raw item ever seen. The **Drive file ID** is the primary key (it survives rename and move). **Archived filename** is the `YYYY-MM-DD_` prefixed name in `Archive/` and is the key used in Wiki citations.

Status values: `in-progress` · `partial (step n)` · `blocked: <reason>` · `duplicate-of <file>` · `irrelevant` · `done`

| Drive file ID | Original filename | Item date | Processed (UTC) | Status | Archived filename | Wiki articles created / updated | Notes |
|---------------|-------------------|-----------|-----------------|--------|-------------------|---------------------------------|-------|
| _none_        |                   |           |                 |        |                   |                                 |       |

---

## Session Log

One entry per session, newest at the bottom. Each entry states what was done so the next session can carry on.

### Session 2026-09-03T14:52Z — Database initialised
- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Raw items processed:** 0 (folder empty)
- **Wiki articles created/updated:** none (structure only)
- **Outputs produced:** none
- **Actions:**
  - Created Drive folder `Fishbone Group` (ID `1pOHvl8X64E-x3rRb-6Wrc9zsHZ2mgi73`).
  - Created subfolders `Raw`, `Wiki`, `Outputs`, `Archive`.
  - Wrote `README.md` (structure, conventions, quick start).
  - Wrote `WORKFLOW.md` (Raw → Wiki → Archive procedure; Output procedure).
  - Wrote `Wiki/WIKI_GUIDELINES.md` (article template, linking, citation and maintenance rules).
  - Wrote `Wiki/00_INDEX.md` (empty index skeleton).
  - Wrote this `CHANGELOG.md`.
- **Left for next session:** nothing pending. When files appear in `Raw/`, start at `WORKFLOW.md` Step 0.

### Session 2026-09-03T15:40Z — Drive survey, source register, six entity stubs
- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Trigger:** Minda listed the group as Fishbone Construction Ltd, Fishbone Properties Ltd, Fishbone Commercial Properties Ltd, Fishbone Waste Ltd, Amfa Furniture Ltd and Fishbone SSAS, and asked for Drive to be checked for company folders and information.
- **Raw items processed:** 0 (folder still empty; sources were read in place, not moved)
- **Wiki articles created:** `Org-Fishbone-Construction-Ltd.md`, `Org-Fishbone-Properties-Ltd.md`, `Org-Fishbone-Commercial-Properties-Ltd.md`, `Org-Fishbone-Waste-Ltd.md`, `Org-Amfa-Furniture-Ltd.md`, `Org-Fishbone-SSAS.md`
- **Wiki articles updated:** `00_INDEX.md` (six entries)
- **Outputs produced:** none
- **Findings:**
  - No single "companies" folder exists. Company material is in Collaboration Space (operational), three per-company Knowledge Base folders, and the Loans Wiki.
  - Fishbone Drylining Ltd is the former name of Fishbone Construction Ltd (same entity).
  - No folder exists for Amfa Furniture Ltd; the furniture business is filed as Furniture by Fishbone (OI-1).
  - No dedicated SSAS folder; documents are under Other / Staff (SSAS) (OI-3).
  - Fishbone Holdings and Anthill Homes Ltd appear in the Minda Wiki but not in Minda's list (OI-2).
- **Actions:**
  - Added the External Source Register section to this file and registered SRC-01 to SRC-12.
  - Raised OI-1 to OI-5.
  - Replaced `Wiki/00_INDEX.md` and `CHANGELOG.md`. **Correction (recorded in the next entry):** the superseded versions were sent to Drive trash rather than archived. They are recoverable from trash for 30 days. Archive-then-recreate is now the rule.
- **Left for next session:** answer OI-1 to OI-5 with Minda. Then copy SRC-01 to SRC-06 into `Raw/` and process them properly so the six stubs can cite archived files instead of external links.

### Session 2026-09-03T15:30Z — CLAUDE.md adopted; archive-then-recreate rule
- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Trigger:** Minda asked for the CLAUDE.md files on Drive to be found, analysed, and a similar one created for this database.
- **Raw items processed:** 0
- **Wiki articles created/updated:** none
- **Outputs produced:** none
- **Sources analysed:** SRC-13 (Properties Ltd CLAUDE.md, 48 KB, current), SRC-14 (Commercial Properties CLAUDE.md, 17 KB, archived same day and marked superseded by a v2 that was not found), SRC-15 (the original 7.9 KB template of 10 Aug 2026). Also seen but not read: four archived Properties Ltd versions (10 Aug to 03 Sep) in that base's Archive.
- **Design decisions taken from the models:**
  - §0 "start every session here" (from Properties Ltd, added there after a session re-derived facts a same-day session had already settled), extended with a per-company table pointing to the sister system to read first.
  - Single root `CHANGELOG.md` with a status table (Commercial Properties design) rather than one dated file per run (Properties Ltd design), because this database has no automation.
  - Archive-then-recreate for every control file and article (both models), replacing the trash approach used earlier today.
  - Owner notes written into Raw as citable files (Commercial Properties §3c).
  - Reading limits carried over: side-by-side PDF tables read as images, CT600 PDFs, Gmail attachment upload failures, and the similar-name lesson from the Loans Wiki.
  - §6a governance boundary with no Smartsheet append exception, and an explicit rule not to edit sister systems from here.
  - §7 group snapshot with open questions (Commercial Properties §7).
- **Actions:**
  - Created `CLAUDE.md` at the root.
  - Archived `README.md` (as `README (archived 2026-09-03 1453, superseded by CLAUDE.md pointer and archive rule).md`) and recreated it with a pointer to `CLAUDE.md`, the owner-note convention, the archive-then-recreate rule, and the archived-control-file naming convention.
  - Archived `CHANGELOG.md` (as `CHANGELOG (archived 2026-09-03 1515, superseded by CLAUDE.md adoption).md`) and recreated it as this file.
  - Registered SRC-13 to SRC-15.
- **Not done:** `WORKFLOW.md` and `Wiki/WIKI_GUIDELINES.md` were not changed; they remain consistent with `CLAUDE.md` except that neither yet mentions owner notes or archive-then-recreate. Fold those in at the next edit of each rather than churning them now.
- **Left for next session:** as before: resolve OI-1 to OI-5; write Minda's 2026-09-03 entity list as the first owner note in `Raw/`; then process SRC-01 to SRC-06 through Raw.

---

## Structure Changes

Changes to the database itself (folders, control files, conventions), separate from content processing.

| Date (UTC)        | Change                                                    | File(s)                                   | Reason              |
|-------------------|-----------------------------------------------------------|-------------------------------------------|---------------------|
| 2026-09-03T14:52Z | Initial creation of folder structure and control files    | README.md, WORKFLOW.md, CHANGELOG.md, Wiki/WIKI_GUIDELINES.md, Wiki/00_INDEX.md | Database set-up |
| 2026-09-03T15:40Z | Added "External Source Register" section and the rule that control files are replaced, not edited, so must be referenced by filename | CHANGELOG.md | Sources used before being archived; Drive tooling cannot edit file contents in place |
| 2026-09-03T15:30Z | Adopted `CLAUDE.md` as the standing context, read before README. Adopted archive-then-recreate (never trash) for all control files and articles. Adopted owner-note convention in Raw. Archive/ now also holds superseded control files. | CLAUDE.md (new), README.md, CHANGELOG.md | Align with the Properties Ltd and Commercial Properties Ltd knowledge bases |
