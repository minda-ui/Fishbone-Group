# CHANGELOG history — Fishbone Group database — 2026-09

Closed Session Log entries moved out of the live `CHANGELOG.md` when it passed ~60 KB (CLAUDE.md §4).
These are the September 2026 setup sessions that precede the Raw processing batches. The live file keeps
the Current State, Open Issues, External Source Register, Processed Items Ledger, Structure Changes and the
most recent Session Log entries (Raw batch 1 onward). Nothing here is edited; it is a verbatim move.

---

## Session Log (archived: 2026-09-03T14:52Z to 16:15Z)

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
