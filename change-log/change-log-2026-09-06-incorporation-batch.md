# Change log — 2026-09-06 — Fishbone incorporation batch processed

_One dated file per session (Properties Ltd model). Newest notes at the top; append-only. Current state lives in the four standing files in the root._

- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Session:** 2026-09-06

---

## Processed the Raw `Fishbone incorporation` batch into the KB

- **Trigger:** Minda asked to "check folder /Raw for new documents", then approved (AskUserQuestion) "Yes, process it in" for the new `Fishbone incorporation` subfolder (24 files), and ruled Shakerbone Construction Ltd "Out of scope".
- **Item:** Raw subfolder `Fishbone incorporation` (folder id `11fP4-hUiLgfCKQGGcn1qeLqjcJVbGw2w`), 24 company-formation / change-of-name / VAT / UTR / EORI documents spanning 2012 to 2026. Registered as processed-items-ledger row 26 (batch row, per the WORKFLOW subfolder rule).
- **New recordable public facts added (company-level, statutory/public — cited to each certificate):**
  - **Fishbone Construction Ltd** — incorporated **14 February 2012** as Fishbone Drylining Ltd (materially earlier than the KB's earliest accounts, FY2015); a group-held copy of the 31 Oct 2024 change-of-name certificate; **EORI GB190175216000**. (Article sources [S21]–[S23].)
  - **Fishbone Holdings Ltd** — incorporated **26 April 2016**; original registered office 49 Wheatfield Grove, Longbenton NE12 8DP; two first subscribers/directors, 2 ordinary £1 shares. (Source [S13].)
  - **Fishbone Properties Ltd** — incorporated **15 July 2015**. (Source [S24].)
  - **Amfa Furniture Ltd** — the exact date of the **Fishbone Investment Ltd → Furniture by Fishbone Ltd** change of name, **10 April 2024** (completing the name chain Investment → Furniture by Fishbone → Amfa). (Source [S12].)
  - **Fishbone Waste Ltd** — incorporated **15 February 2021** as Rubbish Taxi NE Ltd; the exact **Rubbish Taxi NE Ltd → Fishbone Waste Ltd** change-of-name date, **13 July 2023**; **VAT 408853087** (effective 1 May 2022, SIC 38110, quarterly returns); company UTR 6464516352 corroborated by a second source. (Sources [S12]–[S15].)
  - **Fishbone Commercial Properties Ltd** — incorporated **19 October 2021**; **VAT 438 2786 61** (effective 1 March 2023); company **UTR 3664016412** (tax office 623). (Sources [S22]–[S24].)
- **Out of scope:** `Shakerbone Construction.pdf` = SHAKERBONE CONSTRUCTION LTD (11261433, inc 19 Mar 2018) — Minda confirmed it is **not a group entity**. Filed to Archive with the batch; no article, no group-entity listing.
- **Sensitive documents — filed to Archive with the batch, values NOT copied into the KB** (governance: credentials, personal and payroll identifiers): two HMRC PAYE letters (Rubbish Taxi NE and Fishbone Properties — Employer PAYE / Accounts Office references not recorded) and six Government Gateway user-ID PDFs (user IDs are login credentials, not recorded). Company-level identifiers that ARE public (company UTRs, VAT numbers, EORI, incorporation dates, company numbers) were recorded; personal/credential data was not.
- **Files updated (archive-then-recreate):** all six Org articles — `Org-Fishbone-Construction-Ltd.md`, `Org-Fishbone-Holdings-Ltd.md`, `Org-Fishbone-Properties-Ltd.md`, `Org-Amfa-Furniture-Ltd.md`, `Org-Fishbone-Waste-Ltd.md`, `Org-Fishbone-Commercial-Properties-Ltd.md` (each: new Key facts, new Sources, History line, Last reviewed → 2026-09-06); `processed-items-ledger.md` (added row 26); `current-state.md` (Last session, Raw pending, Archived items, Next action). Every recreate verified by exact byte-size match. Previous versions archived to `Archive/` (renamed "… (archived 2026-09-06 2222, superseded by incorporation-batch update)").
- **Housekeeping:** the Raw folder was renamed `2026-09-06_Fishbone incorporation` and moved to `Archive/` intact (all 24 files inside, including the out-of-scope and sensitive ones). Raw is now empty (0 pending). Nothing was trashed; no live system (Smartsheet / QuickBooks / Companies House / HMRC) was written to; sister systems untouched.
- **Result:** the group KB now records each operating company's incorporation date, full name-change history with dates, and (where held) VAT number, company UTR and EORI — all from primary certificates. The group stands at seven entities; Shakerbone Construction Ltd is confirmed outside it.
