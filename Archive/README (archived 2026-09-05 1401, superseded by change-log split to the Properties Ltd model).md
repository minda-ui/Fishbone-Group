# Fishbone Group — Knowledge Database

**Database name:** Fishbone Group
**Location:** Google Drive → `Fishbone Group/`
**Owner:** minda@fishboneconstruction.co.uk
**Created:** 2026-09-03

> **AI sessions start with `CLAUDE.md`, not this file.** `CLAUDE.md` is the standing context: session start-up rules, how this database relates to the other Fishbone knowledge systems, governance, and the current group snapshot. This README is the human-readable description of the structure and conventions. Where they differ, `CLAUDE.md` wins.

This folder is a single, self-describing knowledge database. Anyone (human or AI assistant) opening it in a fresh session should be able to read `CLAUDE.md`, then `CHANGELOG.md`, and know exactly where things stand and what to do next.

---

## 1. Purpose

The database turns unstructured incoming material (documents, emails, spreadsheets, notes, photos, PDFs) into a curated, cross-linked Wiki of durable knowledge about the Fishbone Group as a whole, and produces finished Outputs (reports, summaries, briefs) from that Wiki.

The guiding rule: **Raw is the input, Wiki is the truth, Outputs are what we ship, Archive is where processed inputs and superseded files go to rest.**

The group's individual companies have their own knowledge systems (see `CLAUDE.md` §1, "Sister systems"). This database links to them and holds group-level knowledge; it does not duplicate company-level detail.

---

## 2. Folder structure

```
Fishbone Group/                          ← database root
├── CLAUDE.md                            ← standing context for AI sessions (read first)
├── README.md                            ← this file: structure and rules
├── WORKFLOW.md                          ← how to process items from Raw
├── CHANGELOG.md                         ← what was processed, when, and by whom
├── Raw/                                 ← INBOX: new, unprocessed material
├── Wiki/                                ← curated knowledge articles (Markdown)
│   ├── 00_INDEX.md                      ← master list of every article
│   ├── WIKI_GUIDELINES.md               ← how to write, link and cite
│   └── Org-*.md                         ← one article per group entity (six as of 2026-09-03)
├── Outputs/                             ← finished deliverables built from the Wiki
└── Archive/                             ← processed Raw items and superseded control files
```

### Drive folder IDs (for tooling and direct navigation)

| Folder   | Drive ID                              | URL |
|----------|---------------------------------------|-----|
| Root     | `1pOHvl8X64E-x3rRb-6Wrc9zsHZ2mgi73`   | https://drive.google.com/drive/folders/1pOHvl8X64E-x3rRb-6Wrc9zsHZ2mgi73 |
| Raw      | `1AskWaogQoyQH7COKZq85jL00QUtcx---`   | https://drive.google.com/drive/folders/1AskWaogQoyQH7COKZq85jL00QUtcx--- |
| Wiki     | `1noZncKHLV9IWXbcbeIzaBAZs9yfnNQgC`   | https://drive.google.com/drive/folders/1noZncKHLV9IWXbcbeIzaBAZs9yfnNQgC |
| Outputs  | `1jrOGx1lqGfTHKkzUcM8ce__tOGsqPlEp`   | https://drive.google.com/drive/folders/1jrOGx1lqGfTHKkzUcM8ce__tOGsqPlEp |
| Archive  | `1SVuKUs9oFbru0ZqRgC-pVZjB7oI6MTK8`   | https://drive.google.com/drive/folders/1SVuKUs9oFbru0ZqRgC-pVZjB7oI6MTK8 |

Folder IDs are stable. **File IDs of control files and Wiki articles are not** (see §5), so always refer to those by filename.

---

## 3. What each folder holds

### `Raw/` — inbox
- Anything new lands here, in any format, with any name. No curation required at drop-off.
- Items are **read-only once dropped**: never edit a Raw file. Extract from it, then move it.
- Verbal information from Minda or a director is written up as `Raw/YYYY-MM-DD_owner-note_<subject>.md` so the Wiki can cite it.
- A file stays in Raw until it has been fully processed per `WORKFLOW.md`, after which it is moved to `Archive/`.
- Optional subfolders are allowed for bulk drops (e.g. `Raw/2026-09 Site Photos/`); they are processed as a batch and moved to Archive as a unit.

### `Wiki/` — curated knowledge
- One Markdown file per topic. Flat structure, no nested folders, so links never break when things are reorganised.
- Every article follows the template in `WIKI_GUIDELINES.md` and is listed in `00_INDEX.md`.
- Articles are **living documents**: new Raw items update existing articles rather than spawning duplicates.
- Every factual statement traces back to a source in `Archive/`, a registered external source, or a live system via the article's Sources section.

### `Outputs/` — deliverables
- Finished products built from Wiki content: reports, client briefs, tender summaries, board packs, exports.
- Outputs are dated snapshots and are not edited after release. A revised version is a new file with a new date/version.
- Naming: `YYYY-MM-DD_<Type>_<Subject>_v<N>.<ext>`, e.g. `2026-09-15_Report_Q3-Project-Pipeline_v1.docx`.
- Each Output lists which Wiki articles it drew from, so it can be regenerated or audited.

### `Archive/` — processed inputs and superseded files
- The permanent, unmodified copy of every Raw item after processing, renamed `YYYY-MM-DD_<original-name>` where the date is the processing date.
- Also holds superseded versions of control files and Wiki articles, renamed `<title> (archived YYYY-MM-DD HHMM, superseded by <reason>)`.
- Nothing is deleted from Archive. If an item was wrongly processed, its Wiki changes are corrected and a CHANGELOG entry records the correction; the archived file stays.

---

## 4. Naming conventions

| Object          | Convention                                             | Example                                       |
|-----------------|--------------------------------------------------------|-----------------------------------------------|
| Wiki article    | `Prefix-Title-Case-With-Hyphens.md`, no dates, no versions | `Org-Fishbone-Construction-Ltd.md`        |
| Wiki index      | `00_INDEX.md` (always sorts first)                     |                                               |
| Output          | `YYYY-MM-DD_<Type>_<Subject>_v<N>.<ext>`               | `2026-09-15_Brief_Riverside-Tender_v2.pdf`    |
| Archived Raw item | `YYYY-MM-DD_<original filename>`                     | `2026-09-03_Subcontractor list Aug.xlsx`      |
| Archived control file | `<title> (archived YYYY-MM-DD HHMM, superseded by <reason>).md` | `CHANGELOG (archived 2026-09-03 1515, superseded by CLAUDE.md adoption).md` |
| Owner note      | `YYYY-MM-DD_owner-note_<subject>.md` in Raw            | `2026-09-03_owner-note_group-entities.md`     |
| Raw item        | Any — do not rename in Raw                             |                                               |
| Dates           | ISO 8601 `YYYY-MM-DD` everywhere, UTC for timestamps   | `2026-09-03T14:52Z`                           |

---

## 5. Root-level control files and how they are updated

| File           | Role                                                                                 |
|----------------|--------------------------------------------------------------------------------------|
| `CLAUDE.md`    | Standing context for AI sessions. Read first. Revisited deliberately, never silently rewritten. |
| `README.md`    | Structure, conventions and rules (this file). Change rarely; log every change.        |
| `WORKFLOW.md`  | Step-by-step procedure for turning a Raw item into Wiki knowledge and Archive.        |
| `CHANGELOG.md` | The system's memory. Every processing action is appended here with a timestamp.      |

**Archive-then-recreate.** Drive files cannot be edited in place by the assistant tooling. To update any control file or Wiki article: rename the old file to `<title> (archived YYYY-MM-DD HHMM, superseded by <reason>)`, move it into `Archive/`, then upload the new file with the original title. Never trash. The new file gets a new Drive ID, which is why control files and articles are referenced by filename only.

---

## 6. Starting a new session (quick start)

1. Read `CLAUDE.md` §0.
2. Open `CHANGELOG.md`. Read the **Current State** block: last run, items pending, open issues.
3. Read the **Open Issues** table and the **Processed Items Ledger**.
4. List the contents of `Raw/`. Anything not in the ledger is new work.
5. Follow `WORKFLOW.md` for each new item.
6. Before ending the session, update **Current State** and append a **Session Log** entry in `CHANGELOG.md`, using archive-then-recreate.

If steps 1 to 3 are skipped, work will be duplicated. The change log exists precisely so that no session starts from scratch.

---

## 7. Principles

- **Single source of truth.** A fact lives in exactly one Wiki article, or in one sister system that the article links to; other articles link rather than restate.
- **Traceability.** Every Wiki statement can be traced to an archived source, a registered external source or a live system. Every Output can be traced to Wiki articles. Every change can be traced to a CHANGELOG entry.
- **Idempotence.** Re-running the workflow on an already-processed item must produce no change. The ledger guarantees this.
- **Append, don't overwrite.** CHANGELOG and Archive are append-only. Wiki articles are edited in place (via archive-then-recreate) but their History section records each edit.
- **Plain formats.** Markdown for knowledge, native Drive/Office formats for Outputs, originals untouched in Archive.
- **Re-verify, don't repeat.** A claim in any control file can go stale. Check it against the live source before acting on it.
