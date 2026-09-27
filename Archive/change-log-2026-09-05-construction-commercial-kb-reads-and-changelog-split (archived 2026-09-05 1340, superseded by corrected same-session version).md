# Change log — 2026-09-05 — Construction & Commercial Properties KBs read; change-log split to the Properties Ltd model

_One dated file per session (Properties Ltd model, adopted 2026-09-05). Newest notes at the top within a file; append-only; never edit past entries — correct with a new entry. Current state lives in the four standing files in the root (`current-state.md`, `open-issues.md`, `external-source-register.md`, `processed-items-ledger.md`)._

- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Session:** 2026-09-05T12:00Z–13:00Z

---

## Structure change — change log migrated to the Fishbone Properties Ltd model

- **Trigger:** Minda asked me to check how the Fishbone Properties Ltd KB deals with its change log, then chose (a) to adopt that model and (b) to keep the four trackers as standing files.
- **What the Properties Ltd KB does (verified 2026-09-05):** its `CLAUDE.md` §4 nominally names a single `Outputs/change-log.md` but states "in practice, one dated file per session/run." On Drive its `Outputs/` folder holds 50+ dated `change-log-YYYY-MM-DD-<slug>.md` files — every manual session and every one of its 8 scheduled Routines writes its own new dated file. Rules: newest-first within a file; strictly append-only (corrections are new entries); reading the latest entries is the first act of every session. Standing current-state (risk register, financial snapshot, ops board, company overview) lives in separate always-current files, archived-then-recreated, **not** in the change log.
- **Why we changed:** our group KB had taken the opposite (Commercial Properties Ltd) design — one growing `CHANGELOG.md` holding six sections, archive-then-recreated every session. It had reached ~90 KB, forcing a full-file re-upload each session (with transcription-drift risk) and hitting the §4 size-roll-over gap.
- **New model (this KB's adaptation):**
  - **Four standing control files in the root**, each archive-then-recreated only when it changes: `current-state.md`, `open-issues.md`, `external-source-register.md`, `processed-items-ledger.md`. (Kept as standing files, not folded into the log, so the ledger keeps working as the reprocessing/idempotence guard and the open-issues and source trackers stay live at a glance.)
  - **One dated change-log file per session** in a new root `change-log/` folder: `change-log-YYYY-MM-DD-<slug>.md`, this file being the first.
  - The retired monolith (all six sections, incl. the full Session Log 2026-09-03→05 and the Structure Changes table) is frozen in `Archive/` as the final monolithic `CHANGELOG`; nothing is lost.
- **Files created:** `change-log/` folder; `current-state.md`, `open-issues.md`, `external-source-register.md`, `processed-items-ledger.md`; this dated change-log file.
- **Files updated (archive-then-recreate):** `CLAUDE.md` (§0, §2 tree, §4 rewritten to the new model, §5, §6 quick start), `README.md` (§2 tree, §5 control-file table, §6 quick start, §7), `WORKFLOW.md` (the register/close steps).
- **Files archived (frozen):** the final monolithic `CHANGELOG.md`.
- No Wiki article content changed in this structural step. No Raw items. No Open Issue resolved.

---

## Session content — Construction (SRC-08) and Commercial Properties (SRC-10) Knowledge Bases read; sister-KB pass completed

- **Trigger:** Minda: "do commercial properties and construction knowledge bases too."
- **Method:** two parallel read-only survey sub-agents read the two sister KBs; their group-relevant, non-personal findings were folded into the two articles here, **cited not copied**. Nothing in either KB was edited/moved/copied. Personal data (individual salaries, subcontractor payments, a director's HMRC self-assessment, bank/account numbers) was not extracted; the Construction KB's ~95 project supplier-invoice scans were left unopened.
- **Construction KB (SRC-08)** is a cost-estimating / invoice-processing workspace (no CLAUDE.md; a Change Log doc, five procedure docs, an empty Outputs folder, and a Smartsheet rate database — the "Сlassifier", 1,116 rows). Its group-relevant content is raw HSBC statements (Feb–Jul 2026). Folded into `Org-Fishbone-Construction-Ltd.md` (new "Live bank-data view"): Construction is the group's **intercompany-lending hub** (two-way loan/payback flows with Properties, Holdings, Commercial, plus Anthill Homes and AT UK Interiors); external facilities include multiple Funding Circle loans (a £59,451 drawdown 29 Jul 2026), iwoca, Haydock HP, MotoNovo and an HMRC Time-to-Pay DD; and **the joinery/furniture trade runs through Construction's own account** (machinery purchases, MacDonald Joinery customer receipts; "AMFA" not named) — the strongest evidence yet on OI-8.
- **Commercial Properties KB (SRC-10)** is a structured Wiki with a 29 KB v2 CLAUDE.md (the SRC-14 successor, now located). Folded into `Org-Fishbone-Commercial-Properties-Ltd.md`: CT600 detail (CT £1,484.47 unpaid at signing; **four associated companies**, one unidentified from its side); the Starling account run as a **cash conduit** (down to £41.30, rent swept to Construction); the **structural works funded by another group entity** (no contractor spend through FCP's own account); valuation caveats (ground-floor only, special assumption unmet, validity lapsed); and the **QuickBooks connector pointing at the sister Properties company**. Its Ferndale-flats stance (a Properties leasehold carved from FCP's freehold, reconciled by owner note) is recorded against OI-7 alongside the Properties KB's opposing "still a conflict" view.
- **Wiki articles updated (archive-then-recreate):** `Org-Fishbone-Construction-Ltd.md`, `Org-Fishbone-Commercial-Properties-Ltd.md`, and `00_INDEX.md` — all completed and byte-verified on upload earlier in the session.
- **Standing-file updates:** `external-source-register.md` SRC-08/SRC-10 rows annotated (read and mined 2026-09-05); SRC-14 updated (v2 CLAUDE.md located). `open-issues.md` OI-6, OI-7 and OI-8 given 2026-09-05T12:00Z notes. **No ledger rows** (external sister systems; cited, not copied). No Open Issue resolved (OI-6/OI-7/OI-8 enriched, still open).
- **Two entities flagged for a scope decision:** **AT UK Interiors Ltd** (appears only in Construction's bank data as a lender/borrower) and the continuing cash flows with **Anthill Homes Ltd** (ruled out of the group at OI-2). Noted, not acted on.
- **Not done:** `Org-Fishbone-SSAS.md` still a stub. The sister-KB read pass is now complete (Holdings, Waste, Amfa and the SSAS have no dedicated KB).
