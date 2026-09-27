# Fishbone Group — CLAUDE.md version history (split out 2026-09-23)

_Append-only. Newest entry at the top, in the order each was originally written (not re-sorted by
the date it describes — a few entries were written after later-dated ones, backfilling an earlier
event). Never edit a past entry — correct with a new one. This file holds the full revision history
so that `CLAUDE.md` never has to grow an intro blockquote just to record what changed and when; a
routine rule or roster change now only needs a new line here, not a rewrite of the standing-context
paragraph above it._

- **2026-09-27 (later).** **§1 — John's unattended grant and Nadia's standalone KB restored.** Both were
 made in git only (`384129e`, 2026-09-24; `38bde73`, 2026-09-26) and lost when the same-day
 Drive→git sync (`5f7838a`) copied the older Drive text over git. Re-applied exactly: the count of
 other knowledge systems 13→14, the Nadia paragraph, Nadia in the Hub Coordination Standard list, and
 John's row (unattended for Smartsheet + Google Drive within his §2 guardrails). Replaced on Drive by
 archive-then-recreate through Composio (`victoria-googledrive`), byte-verified. Covers the John/Nadia
 part of `AWT-0118`; the rest of that task is not checked here. Owner-authorised (Minda: "Go ahead").
- **2026-09-27.** **`CLAUDE-Rules.md` §6a — Composio fallback-connector rule added.** Adopts
 Alex's `Raw/2026-09-27_Proposal_Composio-Rollout.md` into this database's governance: Composio
 (CLI pinned 0.4.1) may stand in when a native connector fails, as a transport only — every §6a
 limit binds through it; per-seat aliases in the shared org; verify account and first write;
 Minda authorises logins/links and runs removals; no secrets. Permission rule already in
 `.claude/settings.json` (Minda, git `2b8ed60`). Owner-authorised (Minda: "adopt CLAUDE-Rules.md"
 → "Add Composio rule").
- **2026-09-23 (later).** **Two corrections to the split below.** (1) The split had paraphrased
 §1's Hub Coordination Standard bullet list (Rules A/B/plain-brief) into a short pointer claiming
 the rules lived in `CLAUDE-Rules.md` §0 — they did not; the original bullet text belongs in §1 and
 was restored here verbatim, so the "nothing dropped" claim in the split entry below is now true.
 (2) The plain-brief bullet's letter: this database's own §1 had labelled it "Rule C" (2026-09-22),
 colliding with the unrelated, older Rule C (verify-against-system-of-record) used in Alex's own
 charter and the group's `Process-Housekeeping-and-Session-Discipline.md` since 2026-09-21. Minda's
 ruling: the older Rule C keeps its letter; plain-brief is lettered **Rule E** instead, here and in
 both of those files. (An earlier same-day pass had this backwards — renaming the older rule to E
 and giving plain-brief the letter C — before Minda clarified which rule was "old"; superseded by
 this entry, not a separate change.) Alex (direct edit, Rung-1 authority).
- **2026-09-23.** **Split into three files** — `CLAUDE.md` (§1–§5, §7: stable structure and
 process), `CLAUDE-Rules.md` (§0, §6: session-start and governance, the sections that change
 almost every session — three separate rule changes landed in the fortnight before this split),
 and `CLAUDE-History.md` (this file: the full dated revision log, append-only). Mirrors the split
 proven the same day on Alex's own `CHARTER.md` (v8→v9); Minda: "yes, go ahead with group KB."
 Content-checked against the live file at split time (68,010 B, itself grown from 65,330 B by a
 same-day concurrent edit this split incorporates) — every sentence preserved across the three
 files, plus one small internal-consistency fix (a stale Finance-archive phrase in §6a's "must
 never do" list, brought in line with §7b). All three files carry the same governance as the old
 monolithic `CLAUDE.md` — Raw/-only cross-KB channel, no exception for the split itself.
 Owner-authorised (Minda).
- **2026-09-22 (later).** Document policy to **v1.4** — FG-CR-0001 Accepted: new **§7b Financial
 documents** — financial documents are filed **ONLY in the Financial Archive**
 (`1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4`), **never** the Collaboration Space, OneDrive or git; the
 Finance function (Rachel) holds the sister-KB consolidation-move grant; company
 registration-identifier documents (e.g. Gov Gateway user IDs, carrying no password) are
 registrable with the identifier value kept out; the personal-data bar is untouched. This
 **overrides §7's Collaboration-Space filing for financial documents**, and the rule is now
 identical for every KB. Current policy-version references updated to v1.4; the rule was broadcast
 to every KB `/Raw` (Victoria, 2026-09-22). Owner-authorised (Minda; AWT-0034).
- **2026-09-22.** **Anna — AI Construction Assistant** stood up as the group's technical
 construction adviser (own Drive home `1b0p62LxaX4C9H1cvK1R7K1KdX6-JcvoT` + git mirror
 `minda-ui/Anna`; own charter, four control files, `Reference`/`Queries`/`Raw` folders).
 Interactive; reads/drafts/cites, **adviser not certifier** — structural/fire/Building-Control/
 party-wall/gas/electrical decisions are flagged and deferred to the named professional; no Gmail;
 no routines (§6a). Added to §1 sister systems (count to **thirteen**); Hub `AWT-0060` (Eugene
 hook) / `AWT-0061` (Construction-KB read access). Built by Victoria. Owner-authorised (Minda).
- **2026-09-20.** Recorded the **Hub Coordination Standard** in §1 (owner "main thing", Minda
 2026-09-20; `AWT-0040`) — Rule A (session start: check the Hub's Tasks & Requests for your own
 rows first) and Rule B (the Hub, not a local log, is the single home for tasks, lessons and gaps);
 added a pointer to the new **cross-KB amendment rule** (`HL-0023`/`AWT-0036`, accepted by Minda
 2026-09-19) — an estate-wide amendment to another employee's own governed file now goes through
 that KB's `Raw/` plus a Hub Tasks & Requests row, never a direct edit, though this does not change
 Alex's own direct-edit authority over this group file. Also added **Victoria — CEO's Assistant /
 AI Workforce Coordinator** (no separate KB; operates through this database) and **John — AI
 Properties Operations Assistant** (adopts the existing Fishbone Properties Ltd KB, no KB of his
 own) to §1, both previously missing from the roster. Owner-authorised (Minda, via Alex).
- **2026-09-12 (night).** **Eugene — AI IT & Engineering Assistant** stood up as the group's
 **second AI employee**, built before Content & Marketing at the owner's instruction — the
 enablement layer behind the AI workforce (software-setup runbooks + config, scaffolds new AI
 employees, hardware/automation code, infrastructure inventory). Reach: edits code/repos/KB
 directly; guide-only for live systems; never holds secrets (§6a). Own Drive home
 (`1o4MBRcckZBspw-uT6qM2V-74H6OsRK9T`) + git mirror `minda-ui/Eugene`; connectors Drive + GitHub +
 Web (no Gmail). Added to §1 sister systems (count to **twelve**); AI Workforce Plan reordered to
 v2. Owner-authorised (Minda).
- **2026-09-12 (evening).** **Peter — AI Data Assistant** stood up as the group's data-collection
 assistant — inbound email triage of `info@fishboneconstruction.co.uk`; Companies House research
 for the six registered companies; document capture staged toward the group register. Own Drive
 home + git mirror `minda-ui/Peter`. Reads and drafts only, never sends, files or writes to a
 system of record (§6a). Added to §1 sister systems (count to **eleven**) and `00_INDEX.md`; his
 routines not yet created. Owner-authorised (Minda).
- **2026-09-12 (later still).** The **Quarterly sweep** routine (§5) gained a **tooling &
 environment health** scope (hook install check; skills/connectors/tools drift diff; change-log
 tooling-pain scan). A separate monthly tooling-review routine was considered and declined
 (owner): tooling changes too slowly for monthly to carry signal, so it folds into the quarterly
 sweep. Owner-authorised (Minda).
- **2026-09-12 (later).** Established a **group SessionStart-hook standard** — every Fishbone KB
 repo carries `.claude/hooks/session-start.sh` installing the PDF toolkit (pdfplumber/PyMuPDF/
 pdf2image/pytesseract + tesseract-ocr/poppler-utils) on web sessions, so scanned or tabular PDFs
 can be OCR'd and table-extracted rather than read by eye. §5 updated; the hook is on branch
 `claude/session-start-pdf-toolkit` in all eight repos, live once merged to each default branch.
 Owner-authorised (Minda).
- **2026-09-12.** The group **Tasks health-colour convention** was implemented as a formula-driven
 **`Health` RYGB column** across all five Tasks sheets (group "1. General", Construction, Holdings,
 SSAS, AMFA) — Done green / Blocked or overdue red / due ≤14 days yellow / >14 days green / no due
 date blue. Supersedes the 2026-09-11 note that colours would be set via Status-cell conditional
 formatting in the UI; the Health column is API-settable and self-updating. §1 updated.
 Owner-authorised (Minda).
- **2026-09-10 (later still).** Corrected two stale "no KB" gaps — the **Amfa Furniture Ltd
 Knowledge Base** (Drive `1ugshCjwx2yvRXZvmtpwLcg3kUgTKN7aU`, created 2026-09-05) and the new
 **Fishbone Waste Ltd Knowledge Base** (Drive `1LMVTPw4YFw9OmW7GcTjaDEfXqCIjp1ZJ`, created
 2026-09-10, built on policy v1.3) now listed in §0 (read-first table) and §1 (sister systems),
 raising the count to **ten**. All seven group companies now have their own KB, so the §0 post-room
 pointer routes every company's post to its own KB via §7a; Fishbone Waste no longer a special
 case. No policy change. Owner-authorised (Minda).
- **2026-09-11.** Recorded the **group Tasks Status colour convention** in §1 (Live data sources) at
 the owner's instruction — Done = green, In Progress = yellow, Overdue = red — applied via
 Smartsheet conditional formatting in the UI. Convention only; no sheet change made by this
 database. Owner-authorised (Minda).
- **2026-09-10 (later).** Added a group **incoming paper-mail process** — `Wiki/Process-Post-Handling.md`
 (v1.0). The office receives post for all seven companies in one pile; the group opens/scans it
 into a single `Raw/Paper Mail/` intake, triages each letter to its owning company, registers it in
 the Document Register (Direction = Incoming) and files it, then routes it to that company's KB
 `/Raw` via §7a. Reuses the v1.3 numbering policy; no new numbering. §0 pointer added; distributed
 to the six KB `/Raw` inboxes. Owner-authorised (Minda).
- **2026-09-10.** The document policy went to **v1.3** — resolving two more Change Requests (both
 Accepted): **FM-CR-0001** (Commercial Properties) — property codes self-assigned per company
 (§3/§7); **FP-CR-0001** (Properties) — email-attachment source capture (§5). Current
 policy-version references updated to v1.3; distributed to the five sister `/Raw` inboxes.
 Owner-authorised (Minda).
- **2026-09-09 (later still).** The document policy went to **v1.2** — resolving the first Change
 Request, FC-CR-0001 (Fishbone Construction, Accepted): §6 clarifies that tasks/to-dos are not
 documents (no register row, no ID) and §11 that each KB may migrate its own local back-catalogue
 now, deduping on entry. §0 and §6a updated to v1.2. Owner-authorised (Minda).
- **2026-09-09 (later).** The document policy went to **v1.1** — new **§7a inter-KB document
 hand-off** (a group KB may drop a registered document, named by its existing ID, into another
 group KB's `Raw/` — add-only, with a covering note and a register annotation, no re-numbering).
 The §6a exception widened; §0 and §6a updated. Owner-authorised (Minda).
- **2026-09-09.** **Centralised group Document Register system** stood up — one group-wide
 **Document Register** and a **Change Requests** feedback queue (Smartsheets, "Fishbone Group -
 Documents" workspace; SRC-38/39), and the single locked, versioned policy
 `Wiki/Process-Document-Numbering-and-Filing.md` v1.0 (per-entity prefixes FC/FP/FH/FW/FA/FM/FS/FG,
 7-digit IDs, dedup-on-entry, files co-located in Collaboration Space, feedback loop). A narrow
 §6a append exception now permits appending rows to those two group sheets and filing documents
 into Collaboration Space. §0, §5 and §6a updated; rollout phased.
- **2026-09-07 (later).** The group **weekly master-index digest routine went live** (§5) and its
 first run flagged drift now actioned here — the **Fishbone Holdings Ltd Knowledge Base** (created
 2026-09-05) added to §0/§1; the Holdings→Properties **interest waiver recorded as executed**
 (effective 1 Oct 2026–30 Sep 2028); two stale sister-KB descriptions corrected in §1. OI-10 and
 OI-11 resolved; OI-12 (a Loans-Wiki compliance finding) left with Minda/RMT.
- **2026-09-07.** Outstanding-items sort. OI-3 to OI-7 resolved (SSAS canonical home + scheme
 facts; this database confirmed as the group **master index**; loan reconciliation adopting the
 authoritative `Fishbone_Loan_Repayment_Plan.xlsx`, three debt layers; Ferndale title TY59507 — FCP
 freehold / Properties leasehold); OI-5 access adequate; FY2025 accounts confirmed **filed** at
 Companies House. OI-8 remains open (workshop lease). §0 SSAS row, §1 sister-systems, §6b and §7
 updated.
- **2026-09-05T19:30Z.** Owner ruling — AT UK Interiors Ltd is not connected to the group (owner
 note, ledger row 25); §0 out-of-scope list and §7 updated.
- **2026-09-05T13:00Z.** The change log was split to the Fishbone Properties Ltd model — the single
 `CHANGELOG.md` retired (frozen in `Archive/`) in favour of four standing control files
 (`current-state.md`, `open-issues.md`, `external-source-register.md`, `processed-items-ledger.md`)
 plus dated per-session files in `change-log/`; §0, §1, §3b and §4 updated.
- **2026-09-04T20:00Z.** Owner note (ledger row 21) confirms Fishbone Waste Ltd ceased operating
 January 2026 (not being liquidated); Waste status Active → Dormant; OI-9 resolved; §7 Waste row
 and open questions updated.
- **2026-09-04T13:39Z.** Companies House certificate (ledger row 18) confirms Furniture by Fishbone
 Ltd renamed to Amfa Furniture Ltd on 13/07/2026; OI-1 resolved; §7 Amfa row and open questions
 updated.
- **2026-09-03T20:00Z.** Raw batch 2 (Properties FY2025, Waste FY2025, Drylining YE2023); Fishbone
 Waste status changed to Active; §7 Waste and Properties rows and open questions updated.
- **2026-09-03T19:45Z.** Legal structure, company numbers and financial summaries taken from
 statutory accounts (Raw batch 1); §7 rewritten.
- **2026-09-03T16:15Z.** Anthill Homes Ltd confirmed out of scope; the group is final at seven.
- **2026-09-03T16:00Z.** Fishbone Holdings Ltd added as the seventh entity.
- **2026-09-03.** `CLAUDE.md` adopted. Modelled on the Fishbone Properties Ltd `CLAUDE.md` and the
 Fishbone Commercial Properties Ltd `CLAUDE.md`, adapted to a group-level database sitting above
 the per-company knowledge bases.

Revisit this file's own convention deliberately, same as `CLAUDE.md` itself; every change still gets
a dated `change-log/` entry too — this file is the version-number index, not a replacement for
`change-log/`.
