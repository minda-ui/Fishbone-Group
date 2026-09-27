# Fishbone Group — Knowledge Database

**Database name:** Fishbone Group
**Location:** Google Drive → `Fishbone Group/`
**Owner:** minda@fishboneconstruction.co.uk
**Created:** 2026-09-03

This folder is a single, self-describing knowledge database. Anyone (human or AI assistant) opening it in a fresh session should be able to read this file, then `CHANGELOG.md`, and know exactly where things stand and what to do next.

---

## 1. Purpose

The database turns unstructured incoming material (documents, emails, spreadsheets, notes, photos, PDFs) into a curated, cross-linked Wiki of durable knowledge about Fishbone Group, and produces finished Outputs (reports, summaries, briefs) from that Wiki.

The guiding rule: **Raw is the input, Wiki is the truth, Outputs are what we ship, Archive is where processed inputs go to rest.**

---

## 2. Folder structure

```
Fishbone Group/                          ← database root
├── README.md                            ← this file: structure and rules
├── WORKFLOW.md                          ← how to process items from Raw
├── CHANGELOG.md                         ← what was processed, when, and by whom
├── Raw/                                 ← INBOX: new, unprocessed material
├── Wiki/                                ← curated knowledge articles (Markdown)
│   ├── 00_INDEX.md                      ← master list of every article
│   └── WIKI_GUIDELINES.md               ← how to write, link and cite
├── Outputs/                             ← finished deliverables built from the Wiki
└── Archive/                             ← Raw items that have been fully processed
```

### Drive folder IDs (for tooling and direct navigation)

| Folder   | Drive ID                              | URL |
|----------|---------------------------------------|-----|
| Root     | `1pOHvl8X64E-x3rRb-6Wrc9zsHZ2mgi73`   | https://drive.google.com/drive/folders/1pOHvl8X64E-x3rRb-6Wrc9zsHZ2mgi73 |
| Raw      | `1AskWaogQoyQH7COKZq85jL00QUtcx---`   | https://drive.google.com/drive/folders/1AskWaogQoyQH7COKZq85jL00QUtcx--- |
| Wiki     | `1noZncKHLV9IWXbcbeIzaBAZs9yfnNQgC`   | https://drive.google.com/drive/folders/1noZncKHLV9IWXbcbeIzaBAZs9yfnNQgC |
| Outputs  | `1jrOGx1lqGfTHKkzUcM8ce__tOGsqPlEp`   | https://drive.google.com/drive/folders/1jrOGx1lqGfTHKkzUcM8ce__tOGsqPlEp |
| Archive  | `1SVuKUs9oFbru0ZqRgC-pVZjB7oI6MTK8`   | https://drive.google.com/drive/folders/1SVuKUs9oFbru0ZqRgC-pVZjB7oI6MTK8 |

---

## 3. What each folder holds

### `Raw/` — inbox
- Anything new lands here, in any format, with any name. No curation required at drop-off.
- Items are **read-only once dropped**: never edit a Raw file. Extract from it, then move it.
- A file stays in Raw until it has been fully processed per `WORKFLOW.md`, after which it is moved to `Archive/`.
- Optional subfolders are allowed for bulk drops (e.g. `Raw/2026-09 Site Photos/`); they are processed as a batch and moved to Archive as a unit.

### `Wiki/` — curated knowledge
- One Markdown file per topic. Flat structure, no nested folders, so links never break when things are reorganised.
- Every article follows the template in `WIKI_GUIDELINES.md` and is listed in `00_INDEX.md`.
- Articles are **living documents**: new Raw items update existing articles rather than spawning duplicates.
- Every factual statement traces back to a source in `Archive/` (or an external reference) via the article's Sources section.

### `Outputs/` — deliverables
- Finished products built from Wiki content: reports, client briefs, tender summaries, board packs, exports.
- Outputs are dated snapshots and are not edited after release. A revised version is a new file with a new date/version.
- Naming: `YYYY-MM-DD_<Type>_<Subject>_v<N>.<ext>`, e.g. `2026-09-15_Report_Q3-Project-Pipeline_v1.docx`.
- Each Output lists which Wiki articles it drew from, so it can be regenerated or audited.

### `Archive/` — processed inputs
- The permanent, unmodified copy of every Raw item after processing.
- Files are renamed on the way in: `YYYY-MM-DD_<original-name>` where the date is the processing date. This keeps the archive chronological and the original name searchable.
- Nothing is deleted from Archive. If an item was wrongly processed, its Wiki changes are corrected and a CHANGELOG entry records the correction; the archived file stays.

---

## 4. Naming conventions

| Object          | Convention                                             | Example                                       |
|-----------------|--------------------------------------------------------|-----------------------------------------------|
| Wiki article    | `Title-Case-With-Hyphens.md`, no dates, no versions    | `Health-and-Safety-Policy.md`                 |
| Wiki index      | `00_INDEX.md` (always sorts first)                     |                                               |
| Output          | `YYYY-MM-DD_<Type>_<Subject>_v<N>.<ext>`               | `2026-09-15_Brief_Riverside-Tender_v2.pdf`    |
| Archived item   | `YYYY-MM-DD_<original filename>`                       | `2026-09-03_Subcontractor list Aug.xlsx`      |
| Raw item        | Any — do not rename in Raw                             |                                               |
| Dates           | ISO 8601 `YYYY-MM-DD` everywhere, UTC for timestamps   | `2026-09-03T14:52Z`                           |

---

## 5. Root-level control files

| File           | Role                                                                                 |
|----------------|--------------------------------------------------------------------------------------|
| `README.md`    | Structure, conventions and rules (this file). Change rarely; log every change.        |
| `WORKFLOW.md`  | Step-by-step procedure for turning a Raw item into Wiki knowledge and Archive.        |
| `CHANGELOG.md` | The system's memory. Every processing action is appended here with a timestamp.      |

---

## 6. Starting a new session (quick start)

1. Open `CHANGELOG.md`. Read the **Current State** block at the top: last run, items pending, open issues.
2. Read the **Processed Items Ledger** to know which Raw items are already done.
3. List the contents of `Raw/`. Anything not in the ledger is new work.
4. Follow `WORKFLOW.md` for each new item.
5. Before ending the session, update **Current State** and append a **Session Log** entry in `CHANGELOG.md`.

If steps 1–2 are skipped, work will be duplicated. The change log exists precisely so that no session starts from scratch.

---

## 7. Principles

- **Single source of truth.** A fact lives in exactly one Wiki article; other articles link to it rather than restating it.
- **Traceability.** Every Wiki statement can be traced to an archived source. Every Output can be traced to Wiki articles. Every change can be traced to a CHANGELOG entry.
- **Idempotence.** Re-running the workflow on an already-processed item must produce no change. The ledger guarantees this.
- **Append, don't overwrite.** CHANGELOG and Archive are append-only. Wiki articles are edited in place but their History section records each edit.
- **Plain formats.** Markdown for knowledge, native Drive/Office formats for Outputs, originals untouched in Archive.
