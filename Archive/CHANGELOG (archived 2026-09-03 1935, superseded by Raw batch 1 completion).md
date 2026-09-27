# CHANGELOG — Fishbone Group database

This file is the system's memory. Every session reads it first and updates it last. It is **append-only** except for the Current State block, which is overwritten each session to reflect the present.

Rules:
- Timestamps are UTC, ISO 8601 (`2026-09-03T14:52Z`).
- A Raw item counts as processed only when it has a ledger row with status `done`.
- Never delete rows or entries. Correct a mistake by adding a new entry that references the old one.
- Drive files cannot be edited in place by the assistant tooling, so control files (`CLAUDE.md`, `README.md`, `WORKFLOW.md`, `CHANGELOG.md`, `Wiki/*.md`) are replaced by **archive-then-recreate**: rename the old file `<title> (archived YYYY-MM-DD HHMM, superseded by <reason>)`, move it to `Archive/`, upload the new one. Never trash. Their Drive IDs therefore change: always reference them by filename. Raw and Archive items are never replaced, so their Drive IDs are stable and are the ledger key.
- Owner notes are named `YYYY-MM-DD_owner-note_<subject>.md` when written and keep that name in `Archive/` (no second date prefix).
- Sections, in order: Current State · Open Issues · External Source Register · Processed Items Ledger · Session Log · Structure Changes.

---

## Current State

_Overwritten at the end of every session._

| Field                     | Value                                           |
|---------------------------|-------------------------------------------------|
| Last session              | 2026-09-03T18:35Z (IN PROGRESS: Raw batch 1, seven accounts PDFs registered, reading under way) |
| Last session by           | Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk |
| Group entities (per owner) | 7, final: Construction, Properties, Commercial Properties, Holdings, Waste, Amfa Furniture, SSAS. Anthill Homes Ltd is **not** part of the group (owner note 16:15Z); do not raise again. |
| Raw items pending         | 7 (ledger rows 3 to 9, all `in-progress`). If this state is still shown at the start of a later session, the processing session was cut off: resume at WORKFLOW.md Step 3 for each row. |
| Raw items blocked         | 0                                               |
| Wiki articles             | 7 (all Organisation stubs)                      |
| Outputs produced          | 0                                               |
| Archived items            | 2 Raw items (owner notes); 8 superseded control files |
| External sources registered | 31                                            |
| Open issues               | 6                                               |
| Next action               | Finish Raw batch 1: extract into Org-Fishbone-Holdings-Ltd, Org-Fishbone-Construction-Ltd, Org-Fishbone-Properties-Ltd, Org-Fishbone-Waste-Ltd; archive the seven PDFs; set rows 3 to 9 to `done`. |

---

## Open Issues

Unresolved items needing a human decision: blocked Raw files, material conflicts between sources, missing documents. Each issue gets an ID `OI-<n>`. When resolved, add a `Resolved` line rather than deleting.

| ID    | Raised (UTC)      | Item / article                       | Issue                                    | Status | Resolved (UTC) / note |
|-------|-------------------|--------------------------------------|------------------------------------------|--------|-----------------------|
| OI-1  | 2026-09-03T15:40Z | Org-Amfa-Furniture-Ltd.md | Minda named the entity "Amfa Furniture Ltd" but Drive files it as "Furniture by Fishbone" and the Minda Wiki calls it "Furniture by Fishbone Ltd". Confirm the registered legal name and whether they are one company. | Open | 15:50Z: a Smartsheet workspace named "AMFA Furniture" exists (SRC-20), created Jul 2026, with an order tracker (first order AM001, 17/07/2026). Supports "AMFA" as the operating name; legal name still unconfirmed. 16:10Z: the Finance upload (SRC-31) has no folder for Amfa or Furniture by Fishbone; either it has no separate accounts yet or they sit inside Construction's. |
| OI-2  | 2026-09-03T15:40Z | Group scope | The Minda Wiki also lists Fishbone Holdings and Anthill Homes Ltd as group companies. Neither is in Minda's list of six nor has a Drive folder. Confirm whether they are in scope for this database. | **Resolved** | 16:00Z: Holdings is in scope (owner note, ledger row 1); `Org-Fishbone-Holdings-Ltd.md` created. **16:15Z: Anthill Homes Ltd is not part of the group** (owner note, ledger row 2). Removed from CLAUDE.md §1 and §7. Not to be raised again. Its Smartsheet workspace (SRC-24) stays in the register as history only and is not to be surveyed or cited. |
| OI-3  | 2026-09-03T15:40Z | Org-Fishbone-SSAS.md | SSAS documents sit under "Collaboration Space / Other / Staff (SSAS)"; a separate "Fishbone Pension Fund" folder is empty. Decide the canonical home, and confirm scheme name, PSTR and trustees. | Open | 15:50Z: no SSAS workspace or sheet on Smartsheet. 16:10Z: no SSAS folder in the Finance upload either. |
| OI-4  | 2026-09-03T15:40Z | Structure | Four parallel knowledge systems exist: Collaboration Space (operational filing), three per-company Knowledge Base folders, the Loans Wiki, and this database. Decide whether this database links to them, absorbs them, or supersedes them. Until decided, this database links and does not copy (CLAUDE.md §1). | Open | 15:50Z: Smartsheet adds a fifth system. 16:10Z: the Finance upload (SRC-31) is a sixth, a finance archive organised by company and accounting year; it overlaps Collaboration Space's FC Finance, CP Finance and FW Finance folders and the two Knowledge Bases' Raw folders. 18:35Z: Minda copied seven accounts PDFs from SRC-31 into this database's `Raw/`, which settles the Finance-folder question in favour of "link to the archive, copy individual documents into Raw for processing". |
| OI-5  | 2026-09-03T15:40Z | Access | Fishbone Waste and Furniture by Fishbone folders are owned by other accounts (lana@fishbonewaste.co.uk, anna@indome.co.uk, anastasia@fishboneconstruction.co.uk). Listings may be incomplete for this login. Confirm access or request sharing. | Open | |
| OI-6  | 2026-09-03T15:50Z | Loans reconciliation | Three loan lists disagree. (a) Loans Wiki (SRC-05): 14 facilities across three entities as at 25/08/2026. (b) Smartsheet "Loan schedule" (SRC-27, My Work, last edited 26/08/2026): 16 named lines totalling £779,252.67 including Iwoca £77,032, Sasha £40,000, "Funding Circle Properties Flexi" £20,200, "Pension fund" £750/month. (c) Smartsheet "Repayment Plan" (SRC-28, 26/08/2026): Iwoca paid off 01/08/2026; a Sasha director loan of £40,000 at 0% that is not in the Loans Wiki; HMRC Construction £50,000 removed on Minda's instruction; Eugene and Sebik loans shown at 0% whereas the Loans Wiki records Eugene at 12% and Sebastian at 10% with arrears. Decide which is authoritative and reconcile before any group-level lending figure is published. | Open | 16:00Z: the two Holdings intercompany loans to Properties Ltd (£283,000 at 3.80%, £20,000 at 6.00%) appear in none of the three lists. Add to the reconciliation. 16:10Z: the Finance upload (SRC-31) holds primary loan documents that could settle this: Properties Ltd 2025-26 has "Funding Circle Loan" and "Funding Circle Flexi" folders with monthly statements May 2025 to Apr 2026; Construction 2023-24 has a "Bank loan" folder and a repayment schedule dated 14/05/2024. |
| OI-7  | 2026-09-03T15:50Z | Org-Fishbone-Commercial-Properties-Ltd.md, Org-Fishbone-Properties-Ltd.md | Ownership of 2 and 2A Ferndale Avenue (FP 2202). Properties Ltd register lists it as owned outright (£77,000, no loan, insurer Axis). FCP register (03/09/2026) records the freehold of 145 High Street East, including the flats, as FCP 0001, with the flats as a leasehold held by Properties Ltd. Properties Ltd Task T00003 is marked Done but the FCP register note says lease terms are not on file and the FP 2202 insurance invoice (£1,795.20, T00011) is awaiting entity confirmation. The two registers must agree; confirm which entity insures and which pays. | Open | |

---

## External Source Register

Sources that live elsewhere on Drive or in a connected system and have been used by Wiki articles or control files without being copied into Raw or Archive. Each gets an ID `SRC-<n>`. When a source is later copied into Raw and archived, add its ledger row and note the archived filename here so citations can be upgraded.

| ID     | Title / location | URL | Owner | Dated | Used by | Archived as |
|--------|------------------|-----|-------|-------|---------|-------------|
| SRC-01 | Loans/Wiki — "Entity — Fishbone Construction Ltd" (Google Doc) | https://docs.google.com/document/d/1eFOZKEN5nqESIVAw-Cwzc8FRddsH4gEY8-_wt62koB8/edit | minda@ | 25/08/2026 | Org-Fishbone-Construction-Ltd | not yet |
| SRC-02 | Loans/Wiki — "Entity — Fishbone Properties Ltd" (Google Doc) | https://docs.google.com/document/d/11Da7FpVo1rjYEbYJx422m8fFZK3BOCFT7xwPGZ5vCXE/edit | minda@ | 25/08/2026 | Org-Fishbone-Properties-Ltd | not yet |
| SRC-03 | Loans/Wiki — "Entity — Fishbone Commercial Properties Ltd" (Google Doc) | https://docs.google.com/document/d/15VwmT_9KPAajrnwDd4mn7nUxA9RoyPqJfL2HE2pgkxw/edit | minda@ | 21/08/2026 | Org-Fishbone-Commercial-Properties-Ltd | not yet |
| SRC-04 | Loans/Wiki — "Facility — SSAS Loanback — Pension Scheme Loan" (Google Doc) | https://docs.google.com/document/d/1XuyqUCiGu5OIdQqmrqe8V-jevSY8rrId8thcnp2jtwM/edit | minda@ | 21/08/2026 | Org-Fishbone-Commercial-Properties-Ltd, Org-Fishbone-SSAS | not yet |
| SRC-05 | Loans/Wiki — "Home" (Google Doc) | https://docs.google.com/document/d/1BpOCuVgYyhNpD4SKfoWMKFmS7oN3iWW8-p7B1Vf6-nY/edit | minda@ | 25/08/2026 | all Org articles | not yet |
| SRC-06 | "Minda Wiki - Business & Fishbone Group" (Google Doc) | https://docs.google.com/document/d/1F7_X-Zomd6iXBBr5h3nHgXdd23tw8sx1Ecz4lYFiA-o/edit | minda@ | 18 Aug 2026 | all Org articles | not yet. Note: its list of group companies is superseded on Anthill Homes by the owner note of 2026-09-03T16:15Z. |
| SRC-07 | Folder: Collaboration Space (root of operational filing) | https://drive.google.com/drive/folders/1YNj5BIpKVzcmI4U1DRkgu7kcnSDizGEi | minda@ | created 2024-11-22 | Org articles (subfolders) | n/a (folder) |
| SRC-08 | Folder: Fishbone Construction Ltd - Knowledge Base | https://drive.google.com/drive/folders/13IQdim0JhKmoQvJBmJmnMhreJqg55xTr | minda@ | created 2026-08-25 | Org-Fishbone-Construction-Ltd | n/a (folder) |
| SRC-09 | Folder: Fishbone Properties Ltd - Knowledge Base | https://drive.google.com/drive/folders/11SREv6Rx4jvTzMtpQbKqzzZkTN4wZgNk | minda@ | created 2026-08-10 | Org-Fishbone-Properties-Ltd | n/a (folder) |
| SRC-10 | Folder: Fishbone Commercial Properties Ltd - Knowledge Base | https://drive.google.com/drive/folders/1zC8LmkCLr7BEaqcAlxgAXyz5Bfm73Z7C | minda@ | created 2026-09-03 | Org-Fishbone-Commercial-Properties-Ltd | n/a (folder) |
| SRC-11 | Folder: Loans (contains Wiki, Outputs workbook, dated Change Logs) | https://drive.google.com/drive/folders/1kW9XA7ADnvVH700XYnFTFbKa3SeNtqip | minda@ | created 2026-08-21 | Org articles via SRC-01 to SRC-05 | n/a (folder) |
| SRC-12 | Folder: GitHub (repo mirrors: Fishbone Properties Ltd, Fishbone Commercial Properties Ltd, Sebastian, Minda, desktop-tutorial) | https://drive.google.com/drive/folders/1clpfjpil2SVL3Dzzrls1gY3FgDJaJtnp | minda@ | created 2026-08-26 | Org-Fishbone-Properties-Ltd, Org-Fishbone-Commercial-Properties-Ltd | n/a (code, not documents) |
| SRC-13 | Fishbone Properties Ltd - Knowledge Base / CLAUDE.md (48 KB, current) | https://drive.google.com/file/d/1-ApEcb2BG8wyTeD9sJmEw_XOqRvYdWEq/view | minda@ | 2026-09-03 07:45 | CLAUDE.md (model) | n/a (control file of a sister system) |
| SRC-14 | Fishbone Commercial Properties Ltd - Knowledge Base / Archive / CLAUDE.md (archived 2026-09-03, superseded by v2) | https://drive.google.com/file/d/14mcabtnKOSZNKIURSjsthU4kFw9KppjR/view | minda@ | 2026-09-03 | CLAUDE.md (model), Org-Fishbone-Holdings-Ltd | n/a. Its v2 successor was not found on Drive at 15:20Z; check again before relying on this version. |
| SRC-15 | Original CLAUDE.md template (7.9 KB) in My Drive / Downloads | https://drive.google.com/file/d/1HO6fXwpBretuGuT4r3Ny9cvsWUnUf-xW/view | minda@ | 2026-08-10 | CLAUDE.md (model) | n/a |
| SRC-16 | Smartsheet workspace "1. General" (id 5711235816679299): Contacts Database, Document Register, Mail Register, Rates for Sourcing, Tasks, Classifier, Templates | https://app.smartsheet.eu/workspaces/4rHfjhQ4vf64m2gqGg3qQJGg6fqH3cxCxQ6VrXW1 | minda@ (Owner) | surveyed 2026-09-03 | this log; future Org and Supplier articles | n/a (live system) |
| SRC-17 | Smartsheet sheet "Document Register" (id 7675667699337092), 14 rows FP0000001 to FP0000014, 31/08 to 02/09/2026 | https://app.smartsheet.eu/sheets/g9rGwRj3G5mM48pJcW9gqGfCjWgGH4G6gH3Ph291 | minda@ | 2026-09-03 | Org-Fishbone-Holdings-Ltd, OI-7 | n/a (live) |
| SRC-18 | Smartsheet sheet "Tasks" (id 1343219457722244), 12 rows T00001 to T00012, 4 Open | https://app.smartsheet.eu/sheets/7mhCXpm7jR6wfHGX6J4H7g32Q5RGQrc8h68mC9c1 | minda@ | 2026-09-03 | OI-7 | n/a (live) |
| SRC-19 | Smartsheet sheet "Contacts Database" (id 3154540083939204), 20 trades and professionals with ratings | https://app.smartsheet.eu/sheets/R775PPr8fcxqp726H6GCG2X5XMpXpQQp4XG9xr61 | minda@ | last edited 2026-06-25 | future Supplier articles | n/a (live) |
| SRC-20 | Smartsheet workspace "AMFA Furniture" (id 5258609614448515): one sheet, an order tracker (Internal Id AM001, statuses Received to Shipped, Google folder link per order), 4 rows | https://app.smartsheet.eu/workspaces/C73vGW6p9fWhcgCwpWFCrQ5frJxjMv8Gw7f6mQg1 | minda@ | created 2026-07-17 | OI-1, Org-Amfa-Furniture-Ltd | n/a (live) |
| SRC-21 | Smartsheet workspace "Fishbone Commercial Properties Ltd" (id 3788897575561091): "Property Register - Database" (sheet id 8289112509515652, 61 columns, 2 rows: FCP 0001 and a reference-only row), Reports&Dashboards (empty) | https://app.smartsheet.eu/workspaces/8G83Rg7mvF7PQfPfHjgjR5xrf6H5JMPVp7j8hF81 | minda@ | created 2026-09-03 14:04 | Org-Fishbone-Commercial-Properties-Ltd, OI-7 | n/a (live) |
| SRC-22 | Smartsheet workspace "4. Property maintenance" (id 8666723072141187): "Property Register-DataBase" (sheet id 4273518114113412, 41 columns, 21 rows: 17 properties plus loan sub-rows and Total), Property AST and Property Certificates reports, Quarterly Visits sheets | https://app.smartsheet.eu/workspaces/PF6WRfHfR493wJhrP776g32pRjvJpmH3fCJwPF21 | minda@ (Admin) | last edited 2026-09-01 | Org-Fishbone-Properties-Ltd | n/a (live; documented in the Properties Ltd CLAUDE.md §1) |
| SRC-23 | Smartsheet workspace "3. Project Delivery" (id 6977873211877251): folder "FP 2401_131 Goathlan Avenue" with FP 2401_Budget (sheet id 8653045758035844) and FP 2401_Work Programme | https://app.smartsheet.eu/workspaces/RXjQrfpMG4PCX2VHg6Gmv7w26FHFgPhV5323q7C1 | minda@ | last edited 2026-09-02 | Org-Fishbone-Properties-Ltd | n/a (live) |
| SRC-24 | Smartsheet workspace "Workspace 1" (id 7541986027693955): Anthill Homes register, dashboard, reports and sourcing sheets. **Out of scope** since 2026-09-03T16:15Z (Anthill Homes Ltd is not part of the group). Kept only so a future session does not re-survey it. | https://app.smartsheet.eu/workspaces/crvJjwhrFwcgP8rVJhJjcC6GjRcQGGR9xrWPxWJ1 | minda@ | created 2026-07-02 | none (was OI-2) | n/a (out of scope) |
| SRC-25 | Smartsheet workspace "2. Sourcing" (id 8244510607075203): Property Sourcing Register, Shopping Sourcing Register, Archive | https://app.smartsheet.eu/workspaces/wv6WQ49qq27RWG98X9vMxWw8rrRXCcc3Q3mx3xq1 | minda@ | last edited 2026-08-04 | future Project or Topic articles | n/a (live) |
| SRC-26 | Smartsheet workspace "My Work" (id 416068347946883): loan and budget sheets for the group, Fishbone Properties Ltd budgets, "Properties" summary sheet, "2 Ferndale Avenue", folder "Sebastian Pabis" | https://app.smartsheet.eu/workspaces/rrCqR3xPXcr8v7RWVJ47GRFcfVPG8FgVvjxvMvp1 | minda@ | last edited 2026-09-03 | OI-6 | n/a (live) |
| SRC-27 | Smartsheet sheet "Loan schedule" (id 5538379808769924), My Work: 16 lender lines, total £779,252.67, monthly interest £15,335.78, monthly payment £61,063.40 | https://app.smartsheet.eu/sheets/j56mcwPjG2x53M8x4WX9g2CwJpmrMPh5xCgP7Mg1 | minda@ | last edited 2026-08-26 | OI-6 | n/a (live) |
| SRC-28 | Smartsheet sheet "Repayment Plan" (id 4650432322471812), My Work: avalanche-ordered payoff model with per-facility notes and corrections dated 21/08 and 26/08/2026; companion sheets "Loans Ranked by Interest Rate", "Loans Ranked by Monthly Payment", "Repayment Progress & Savings" | https://app.smartsheet.eu/sheets/9qFJ82v264p95VCxcJ5XC2gcG23MJR4J8W7jhv61 | minda@ | last edited 2026-08-26 | OI-6 | n/a (live) |
| SRC-29 | Smartsheet folder "Sebastian Pabis" (id 4283793369524099), My Work: People, Bills, Payments, Balance Summary. Tracks a Fishbone Construction Ltd subcontractor-plus-PAYE worker's bills and payroll; Balance Summary (03/09/2026) shows bills owed £61,129.08 against payments £63,634.84, net overpaid £2,505.76, with unreconciled statements flagged. Contains personal payroll identifiers: cite, never copy. | https://app.smartsheet.eu/folders/VRwhJjHv6PVVwJvJwPRqrmj65gwq6Pp9RfFxrR71 | minda@ | last edited 2026-09-03 | Org-Fishbone-Construction-Ltd (future Person article) | n/a (live; sensitive) |
| SRC-30 | Smartsheet workspace "Minda" (id 4412884382967683): Household servicing, Mortgage offer compare, Utilities Accounts. Personal, not group. Listed only so a future session does not re-survey it. | https://app.smartsheet.eu/workspaces/CGmrWm8g6Pp2c4CvxgXQMCMFrrF37Fchj6pXg961 | minda@ | last edited 2026-08-30 | none | n/a (personal) |
| SRC-31 | Folder: `Finance-20260903T154848Z-1-001 / Finance` (My Drive root, id `1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4`), a bulk upload made 2026-09-03 15:49Z to 15:52Z, more than 200 files. Six subfolders: Fishbone Construction Ltd (`1ePymHdM75MvKx9242BbO_lwTbeoeJ0dD`, years 2017-18 to 2025-26 plus Annual Accounts, Budget, CIS, Machinery invoices), Fishbone Properties Ltd (`15Dognp3BagjlaG58nTYnkg4GWNP56T-u`, 2020-21 to 2025-26 plus Annual Accounts), Fishbone Commercial Properties Ltd (`1pC48dWSIN8igoG8nZRnJyJIyfaCKQTGX`, 2023-24 to 2025-26 plus Annual Accounts), Fishbone Holdings Ltd (`1Hx8GBCNcQdVAaS9BGa6m78GLd_K3UGwh`, 2023-24 to 2025-26 plus Annual Accounts), Fishbone Waste Ltd (`1Z35kgAI4mjywH99yHqTrfUbWwKx2VRgj`, 2024-2025, 2025-26, Bank, Annual Accounts, two loose CSVs), Fishbone Accounts (`1q65aBVwJPtDpTqarGMr9tknct6HWiPoh`, three FYE 30/04/2024 signed accounts dated 29/04/2025). Contains PAYE returns, bank statements, CIS statements, loan statements and at least one employee P60: **sensitive; cite, never copy.** | https://drive.google.com/drive/folders/1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4 | minda@ | uploaded 2026-09-03 15:49Z | this log; OI-1, OI-3, OI-4, OI-6 | Seven documents copied into Raw by Minda 18:02Z to 18:32Z: ledger rows 3 to 9. |

Key subfolders surveyed under SRC-07 (all accessed 2026-09-03): Fishbone Construction `1J5imfoCs11kHEEnc7qyo3g0JG0u_97WL`; Fishbone Properties Ltd `1_zR-v8T7a8caIQ-LRDRahEat9y9uonYW`; Fishbone Commercial Properties `1F3qKwvnENAXQdtrtJcZ_M3SbVik6IMVS`; Fishbone Waste `1JOnsUigihbpin7HzstedCookwkDiSI49`; Furniture by Fishbone `1qJsNA2hiR83FRIQOWJr3fqFBpJqzv3TF`; Other `1sS9XPgwtwQhS1niwdZLBNN5Zk3XJv3a-`; Other / Staff (SSAS) `1Q7C8BIAD9pGfoBa9a-RF-EmGdS7xXqw0`; Other / Fishbone Pension Fund `1ZPnzdxoaEbtvBe5njOqMhc0XC1dmCd1l` (empty).

Annual Accounts files under SRC-31 (the highest-value items for the Org articles): Construction `Annual Accounts` (`19k8n3NwR5V4JICqQ-zYC0VwrzbH0sooc`): Members Accounts 2025 and Pages for Registrar 2025, dated 28/04/2026, For Approval. Properties `Annual Accounts` (`1teAPIEBu-LoM6KL_3shWg5FfQ6XNxQdd`): Members Accounts 2025, Pages for Registrar 2025, CT600 2025, all dated 30/04/2026, plus Summary.pdf. Commercial Properties `Annual Accounts` (`15UO7W_1vO97BEjQZnk5FeSQKYXah4atK`): same four documents dated 30/04/2026. Holdings `Annual Accounts` (`1mgauYRehiziqpdEZY7s5HpcBU6FVog0Q`): Members Accounts 2025 and Pages for Registrar 2025, dated 28/04/2026. Waste `Annual Accounts` (`18wcIBdb-2uXouMmS1UL2YL8voRHIzmSn`): Members Accounts 2025 and Pages for Registrar 2025, dated 28/04/2026. `Fishbone Accounts`: FYE 30/04/2024 Members Accounts for Waste, Properties and Holdings, dated 29/04/2025. Construction `2024 - 25`: Fishbone Drylining Members Accounts and CT600 for YE 29/04/2024, dated 02/12/2024. Construction `2023 - 24`: Fishbone Drylining Members Accounts YE 29/04/2023, dated 24/01/2024.

---

## Processed Items Ledger

One row per Raw item ever seen. The **Drive file ID** is the primary key (it survives rename and move). **Archived filename** is the name in `Archive/` and is the key used in Wiki citations.

Status values: `in-progress` · `partial (step n)` · `blocked: <reason>` · `duplicate-of <file>` · `irrelevant` · `done`

| # | Drive file ID | Original filename | Item date | Processed (UTC) | Status | Archived filename | Wiki articles created / updated | Notes |
|---|---------------|-------------------|-----------|-----------------|--------|-------------------|---------------------------------|-------|
| 1 | `1B7Nzc4zX4dZM6ifTjpRspyVGDee07H16` | 2026-09-03_owner-note_group-entities.md | 2026-09-03 | 2026-09-03T16:00Z | done | 2026-09-03_owner-note_group-entities.md | Created Org-Fishbone-Holdings-Ltd | Owner note written by the assistant from Minda's two chat statements (six entities at 14:58Z; Holdings added at 15:55Z). Type: owner-note. The six earlier Org stubs cite the Minda Wiki, not this note; upgrade their [S1] citations to this note at their next edit. |
| 2 | `154dkzBNJ4euY_BAchziMHOrH4sB4xeYt` | 2026-09-03_owner-note_anthill-homes-out-of-scope.md | 2026-09-03 | 2026-09-03T16:15Z | done | 2026-09-03_owner-note_anthill-homes-out-of-scope.md | none (CLAUDE.md §1 and §7 updated; OI-2 resolved) | Owner note written from Minda's statement at 16:14Z that Anthill Homes Ltd is not part of the group. Clarifies ledger row 1. Type: owner-note. |
| 3 | `1v1A3VSvH8ztGuJ4gA7DShHPqn1j_3s7k` | APR-28-2026_Fishbone_Holdings_Ltd_-_Members_Accounts_2025_-_For_Approval.pdf | 2026-04-28 | 2026-09-03T18:35Z | in-progress | — | — | Copied by Minda from SRC-31 (Holdings / Annual Accounts) at 18:32Z. Type: financial. |
| 4 | `1_T4munqbby61yUPouIjN5gKlvXZieKvH` | APR-28-2026_Fishbone_Holdings_Ltd_-_Pages_For_Registrar_2025_-_For_Approval.pdf | 2026-04-28 | 2026-09-03T18:35Z | in-progress | — | — | Copied by Minda from SRC-31 at 18:32Z. Type: financial. Registrar (filleted) version of row 3. |
| 5 | `1eiqH9wcUIwYqsymqBsBrkr3yPnAdPtvW` | APR-28-2026_Fishbone_Construction_-_Pages_For_Registrar_2025_-_For_Approval.pdf | 2026-04-28 | 2026-09-03T18:35Z | in-progress | — | — | Copied by Minda from SRC-31 (Construction / Annual Accounts) at 18:03Z. Type: financial. Registrar version of row 6. |
| 6 | `1MpGuSno2CZQKl5zynizIownuT0ue3G-l` | APR-28-2026_Fishbone_Construction_-_Members_Accounts_2025_-_For_Approval.pdf | 2026-04-28 | 2026-09-03T18:35Z | in-progress | — | — | Copied by Minda from SRC-31 at 18:03Z. Type: financial. |
| 7 | `1M0AbOwowxbwu0v_YI30zTlJSST_mBUw4` | APR-29-2025 - Dated Members Accounts 2024 - Fishbone Properties.pdf | 2025-04-29 | 2026-09-03T18:35Z | in-progress | — | — | Copied by Minda from SRC-31 (Fishbone Accounts) at 18:03Z. Type: financial. Same document is FP0000003 in the Smartsheet Document Register. |
| 8 | `1Su9SORZIV07RDjL0V3FkVUX_OhIdRkNT` | APR-29-2025 - Dated Members Accounts 2024 - Fishbone Holdings.pdf | 2025-04-29 | 2026-09-03T18:35Z | in-progress | — | — | Copied by Minda from SRC-31 (Fishbone Accounts) at 18:03Z. Type: financial. |
| 9 | `1eNUAsNFaOzsb4KcVdpfGrno0N_1U67Rh` | APR-29-2025 - Dated Members Accounts 2024 - Fishbone Waste.pdf | 2025-04-29 | 2026-09-03T18:35Z | in-progress | — | — | Copied by Minda from SRC-31 (Fishbone Accounts) at 18:03Z. Type: financial. |

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

### Session 2026-09-03T15:50Z — Smartsheet survey
- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Trigger:** Minda said the companies have workspaces on Smartsheet and asked for them to be checked for more data.
- **Raw items processed:** 0
- **Wiki articles created/updated:** none. The findings below are recorded here and in OI-1, OI-2, OI-4, OI-6 and OI-7; folding them into the six `Org-` articles and `CLAUDE.md` §1 is the next content task.
- **Outputs produced:** none
- **Read-only.** No Smartsheet row, column or sheet was created, edited or deleted (CLAUDE.md §6a).
- **Findings (Smartsheet, all as at 2026-09-03 about 15:45Z):**
  - Nine workspaces, all owned by minda@. Five carry company data (SRC-16, SRC-20, SRC-21, SRC-22 with SRC-23 and SRC-25, SRC-24, SRC-26). One is personal (SRC-30).
  - **Fishbone Properties Ltd** is the best covered: the 17-property register (SRC-22) with certificates, tenants, rent, loans, insurance and a formula-driven Total row (rent £12,784/month, loans £1,489,191.71, value £2,328,000, equity £838,808.29); the Document Register and Tasks sheets (SRC-17, SRC-18) with 14 numbered documents and 12 tasks since 31/08/2026, 4 tasks still Open (T00009 to T00012, all insurance or remortgage follow-ups due 05 to 09/09/2026); budget sheets and a cash-flow dashboard (SRC-26); FP 2401 project budget and work programme (SRC-23). Two red flags on the register: FP 1901 gas certificate expires 09/09/2026, and FP 2401's LendInvest bridge is past maturity with the Landbay refinance blocked on condition OC80.
  - **Fishbone Commercial Properties Ltd** has a new workspace (SRC-21, created 14:04Z today) whose register holds one asset, FCP 0001, 145 High Street East, Wallsend: freehold, retail unit let to Food Land at £1,000/month plus VAT, cost £240,559, RICS value £150,000 (05/03/2025, ground floor only, on the assumption repairs are complete), SSAS loanback £41,500 at £790.13/month, insurance via BQI Group £1,795.20. A reference-only second row records the flats at 2 and 2A Ferndale Avenue as a Properties Ltd leasehold (OI-7).
  - **AMFA Furniture** has its own workspace (SRC-20) with a four-row order tracker started 17/07/2026. This is the first system that uses the AMFA name (OI-1).
  - **Anthill Homes** has a full workspace (SRC-24): two let properties, dashboard, reports, sourcing sheets. It is operationally live, not a hobby entry (OI-2). *Later ruled out of scope, 16:15Z.*
  - **Fishbone Holdings Ltd** is confirmed as a real lender to Properties Ltd (SRC-17, FP0000001 and FP0000003): two intercompany loans, £283,000 at 3.80% and £20,000 at 6.00%, with an interest-waiver request drafted 31/08/2026 (OI-2).
  - **Fishbone Construction Ltd** has no workspace of its own. Its borrowing appears in the group loan sheets under My Work (SRC-27, SRC-28), and one of its workers is tracked in the Sebastian Pabis folder (SRC-29). The loan sheets disagree with the Loans Wiki in several places (OI-6).
  - **Fishbone Waste Ltd** and **Fishbone SSAS** have nothing on Smartsheet.
  - **Group-level:** "1. General" (SRC-16) holds shared assets used by more than one company: Contacts Database (20 trades and professionals with quality notes), Classifier (cost code book), Rates for Sourcing, Mail Register, Templates. The Properties Ltd CLAUDE.md notes this workspace is shared at workspace level with Irina Fedonina and several others.
- **Actions:**
  - Registered SRC-16 to SRC-30.
  - Raised OI-6 (loan lists disagree) and OI-7 (FP 2202 ownership and insurer).
  - Added Smartsheet evidence to OI-1, OI-2, OI-3 and OI-4.
  - Archived `CHANGELOG.md` (as `CHANGELOG (archived 2026-09-03 1528, superseded by Smartsheet survey).md`) and recreated it as this file.
- **Not done:** `CLAUDE.md` §1 "Live data sources" still lists only the two property registers and QuickBooks; it should gain the Document Register and Tasks (already mentioned), the AMFA order tracker, and the My Work loan sheets once OI-6 is decided. The six `Org-` articles are not yet updated.
- **Left for next session:** Minda to answer OI-1 to OI-7, in particular OI-2 (are Holdings and Anthill in scope) and OI-6 (which loan list is authoritative). Then update the Org articles and CLAUDE.md §1 and §7 from this entry.

### Session 2026-09-03T16:00Z — Fishbone Holdings Ltd added to the group; first owner note processed
- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Trigger:** Minda: "I forget to add Fishbone Holdings Ltd as part of group."
- **Raw items processed:** 1. `2026-09-03_owner-note_group-entities.md`, written by the assistant from Minda's two statements (14:58Z list of six; 15:55Z Holdings added), registered, extracted, moved to `Archive/`, ledger row `done`. First item through the full WORKFLOW.md cycle.
- **Wiki articles created:** `Org-Fishbone-Holdings-Ltd.md` (stub; cites the archived owner note as [S1], the Minda Wiki, the Smartsheet Document Register, and the Commercial Properties CLAUDE.md).
- **Wiki articles updated:** `00_INDEX.md` (7 articles).
- **Outputs produced:** none
- **Findings:**
  - Drive title and full-text search for "Holdings" found no folder, sheet or workspace for the company. It appears only inside other companies' documents: the FP0000001 interest-waiver letter (docx, 31/08/2026) and the Properties Ltd and Commercial Properties accounts.
  - The letter's text could not be extracted by the Drive reader (the tool returned the docx package structure, not content). The article's figures come from the Document Register summary and should be checked against the letter itself.
  - The two Holdings loans to Properties Ltd appear in none of the three loan lists under OI-6. Added there.
- **Actions:**
  - OI-2 updated: Holdings resolved (in scope); Anthill Homes Ltd still open.
  - Archived `00_INDEX.md`, `CHANGELOG.md` and `CLAUDE.md` and recreated each. `CLAUDE.md` §0 table, §1 sister-systems note, §3c and §7 now reflect seven entities.
  - Rule added to this file's header: owner notes keep their original name in Archive (they already carry the date).
- **Not done:** `README.md` §2 still says "six as of 2026-09-03" for the Org articles; harmless, fix at its next edit. The other six Org articles still cite the Minda Wiki for group membership rather than the owner note; upgrade at their next edit.
- **Left for next session:** OI-1, OI-2 (Anthill), OI-3 to OI-7 for Minda. Then fold the Smartsheet findings (15:50Z) into the Org articles and CLAUDE.md §1.

### Session 2026-09-03T16:10Z — Finance folder survey
- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Trigger:** Minda: "check for folder Finance on google drive".
- **Raw items processed:** 0. Nothing was moved or copied; the folder was surveyed in place.
- **Wiki articles created/updated:** none.
- **Outputs produced:** none.
- **Findings:**
  - A new folder `Finance-20260903T154848Z-1-001` appeared in My Drive root, uploaded 15:49Z to 15:52Z (the name is the pattern Google Takeout gives an exported zip). Inside is `Finance/` with six subfolders: one per company for Construction, Properties, Commercial Properties, Holdings and Waste, plus `Fishbone Accounts`. Registered as SRC-31 with folder ids.
  - It is the first place on Drive where **Fishbone Holdings Ltd has its own folder**: three accounting years (2023-24 to 2025-26) and an Annual Accounts folder with the FYE April 2025 accounts, dated 28/04/2026, marked For Approval. The 2025-26 folder holds HSBC statements for the Holdings bank account as PDF and CSV.
  - **Every one of the five companies now has its FYE April 2025 statutory accounts on file** ("Members Accounts 2025 - For Approval", dated 28 or 30 April 2026), plus CT600 corporation tax returns for Properties and Commercial Properties, and "Pages for Registrar" versions. `Fishbone Accounts` adds the prior year (FYE April 2024) signed accounts for Waste, Properties and Holdings. Construction's earlier years are filed under the former name Fishbone Drylining (accounts for YE 29/04/2023 and YE 29/04/2024 with CT600).
  - **Construction** is the deepest archive: nine accounting years 2017-18 to 2025-26, a `CIS` folder with monthly Construction Industry Scheme statements from April 2017 to April 2023, a `Budget` folder with "Fishbone Construction Cash Flow 2025.xlsx", and `Machinery invoices` with the 2023 woodworking machinery quotes and invoices and the Motonovo and Autonova finance documents (relevant to the Haydock Finance hire-purchase facility in the Loans Wiki). Year folders contain Bank statements, PAYE, CIS statements, Remittance, Credit Card, Saving account, Invoices and receipts, and a `Bank loan` folder in 2023-24 with a repayment schedule dated 14/05/2024.
  - **Properties** has six years 2020-21 to 2025-26. 2025-26 holds monthly PAYE returns for the whole year, Starling and second-bank CSV statements May 2025 to May 2026, and `Funding Circle Loan` and `Funding Circle Flexi` folders with monthly statements May 2025 to April 2026 (primary evidence for OI-6). Earlier years hold mortgage statements, offers, completion statements, P60s and "Docs for tax". A P60 for a named staff member sits loose in 2022-2023.
  - **Commercial Properties** has three years 2023-24 to 2025-26, each with a bank statement folder, plus the Annual Accounts set (accounts, CT600, registrar pages, summary). The 2025-26 folder is the same material already in that company's Knowledge Base Raw folder.
  - **Waste** has 2024-2025 (bank statement CSVs), 2025-26 (PAYE months 1 to 12, bank statements as PDF and CSV), a `Bank` folder with three CSV exports, the Annual Accounts set, and two loose CSVs: `unified_payments.csv` and a sales report covering 01/01/2023 to 30/04/2024.
  - **Not present:** no folder for Amfa Furniture or Fishbone SSAS.
  - **Sensitivity:** the folder holds PAYE returns, bank statements, loan statements and at least one P60. Per CLAUDE.md §2 and §6b these are cited, never copied into the Wiki.
  - **Tooling note:** time-bounded Drive search paginated incorrectly (the second page repeated the first), so the inventory was built from per-folder listings instead. The count of "more than 200 files" is a lower bound.
- **Actions:**
  - Registered SRC-31, including the Annual Accounts file locations for all five companies.
  - Added Finance-folder evidence to OI-1, OI-2, OI-3, OI-4 and OI-6.
  - Archived `CHANGELOG.md` (as `CHANGELOG (archived 2026-09-03 1551, superseded by Finance folder survey).md`) and recreated it as this file.
- **Not done:** no document was read. The Annual Accounts PDFs are the obvious first Raw items for this database (company numbers, registered offices, directors, intercompany balances, all currently missing from the seven Org articles), but copying them into `Raw/` is Minda's call because it duplicates files that also live in the Finance archive and in two sister Knowledge Bases (OI-4).
- **Left for next session:** Minda to say whether the Finance folder is (a) a one-off dump to be processed through Raw, (b) the canonical finance archive to be linked from here and left in place, or (c) to be merged into Collaboration Space. Recommendation: (b) for the folder as a whole, and copy only the five 2025 Members Accounts plus the three 2024 sets into `Raw/` for processing, so the Org articles gain their registry facts with proper citations.

### Session 2026-09-03T16:15Z — Anthill Homes Ltd ruled out of scope; OI-2 resolved
- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Trigger:** Minda: "Anthill Homes Ltd is not part of group. Forget about this company"
- **Raw items processed:** 1. `2026-09-03_owner-note_anthill-homes-out-of-scope.md`, written from the statement, registered, moved to `Archive/`, ledger row `done`. Clarifies ledger row 1.
- **Wiki articles created/updated:** none. No article for Anthill Homes was ever created, so nothing to supersede.
- **Outputs produced:** none.
- **Actions:**
  - OI-2 marked Resolved: group is the seven entities named in Current State; Anthill Homes Ltd is out.
  - SRC-24 (the Anthill Smartsheet workspace) marked out of scope in the register; kept so it is not re-surveyed.
  - SRC-06 (Minda Wiki) annotated: its group-company list is superseded on this point.
  - `CLAUDE.md` archived and recreated: Anthill removed from §1 sister-systems and live-sources tables and from §7; the open-questions list renumbered.
  - `CHANGELOG.md` archived and recreated as this file.
- **Interpretation of "forget":** removed from all active guidance so no future session raises it; past log entries and the register row are append-only history and are left as they are.
- **Left for next session:** the Finance-folder decision (session 16:10Z), then OI-1, OI-3 to OI-7.

### Session 2026-09-03T18:35Z — Raw batch 1: seven accounts PDFs (IN PROGRESS)
- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Trigger:** Minda: "check /Raw". Seven PDFs had been copied into `Raw/` from the Finance archive (SRC-31) between 18:02Z and 18:32Z.
- **Step 1 (Register) done:** ledger rows 3 to 9 added as `in-progress` before any file was read, per WORKFLOW.md.
- **Steps 2 to 6:** reading and extraction under way at the time this file was written. The next replacement of this file will carry the results. If no later Session Log entry exists, the session was cut off after registration: resume at Step 3 for rows 3 to 9.

---

## Structure Changes

Changes to the database itself (folders, control files, conventions), separate from content processing.

| Date (UTC)        | Change                                                    | File(s)                                   | Reason              |
|-------------------|-----------------------------------------------------------|-------------------------------------------|---------------------|
| 2026-09-03T14:52Z | Initial creation of folder structure and control files    | README.md, WORKFLOW.md, CHANGELOG.md, Wiki/WIKI_GUIDELINES.md, Wiki/00_INDEX.md | Database set-up |
| 2026-09-03T15:40Z | Added "External Source Register" section and the rule that control files are replaced, not edited, so must be referenced by filename | CHANGELOG.md | Sources used before being archived; Drive tooling cannot edit file contents in place |
| 2026-09-03T15:30Z | Adopted `CLAUDE.md` as the standing context, read before README. Adopted archive-then-recreate (never trash) for all control files and articles. Adopted owner-note convention in Raw. Archive/ now also holds superseded control files. | CLAUDE.md (new), README.md, CHANGELOG.md | Align with the Properties Ltd and Commercial Properties Ltd knowledge bases |
| 2026-09-03T15:50Z | External Source Register now also covers live systems (Smartsheet), not only Drive files; the URL column was renamed accordingly | CHANGELOG.md | First non-Drive sources registered |
| 2026-09-03T16:00Z | Owner notes keep their original `YYYY-MM-DD_owner-note_<subject>.md` name when moved to Archive (no second date prefix). Current State gained a "Group entities (per owner)" row. | CHANGELOG.md | First owner note archived |
| 2026-09-03T18:35Z | Ledger gained a leading `#` row-number column so rows can be referenced in prose | CHANGELOG.md | First multi-item batch |
