# Change log — 2026-09-09 — Centralised group Document Register system

_Session by Claude (AI assistant) on behalf of minda@fishboneconstruction.co.uk. Newest notes at the top. Append-only; never edited after the session. See `CLAUDE.md` §4 and `current-state.md` for the present snapshot._

**Session start:** 2026-09-09 (UTC).

## Summary

Stood up a **single, centralised group-wide Document Register system** so that documents across all Fishbone companies are registered once, numbered consistently, and filed co-located with the projects they belong to — the core goal being that **documents don't duplicate each other**. This was designed with Minda across the planning phase and implemented this session on the owner's instruction ("proceed with the wiring; share to all companies' info@ accounts and irina@fishboneproperties.co.uk").

## What was decided (owner, during planning)

- **One register for all companies**, not per-entity registers — a per-entity prefix marks the owning entity within the single list.
- **Substrate: a shared Smartsheet** all companies append to (a markdown control file cannot take concurrent appends from several automations). This required a narrow new live-system write exception in group governance.
- **Instructions: one centralised, locked, versioned policy** — sisters follow it verbatim and never fork it; the only way to change it is a central review→upgrade loop.
- **File store: Collaboration Space**, co-located in each document's own project/company folder (index and storage deliberately decoupled — the register is the one place to *find* a document).
- **ID scheme: per-entity prefixes** + a continuous 7-digit sequence, one row per document.
- **Phasing: new first, migrate later** — all new documents route to the register now; the existing Properties `FP` / Holdings `FH` back-catalogues are migrated in and their old sheets retired as a follow-on.
- **Feedback loop:** any KB can raise a change-request to one place; only the group reviews and, if warranted, upgrades the versioned rules.

## What was created / changed

**Smartsheet (new "Fishbone Group - Documents" workspace, id `5815486484113283`):**
- **Document Register** — sheet id `7352854736144260`. Columns: `Document No. | Entity (owner) | Direction | Date | Category | Title | Entities involved | Description | Status | Source key | File link | Location`. Registered as **SRC-38**.
- **Document System - Change Requests** — sheet id `8918834172004228`. Columns: `Ref | Raised | Raised by | Type | Policy version | Description | Example doc | Status | Resolution / new version | Reviewed`. Registered as **SRC-39**.

**Google Drive KB (archive-then-recreate, each upload byte-verified: fileSize == local `wc -c`, 0 U+FFFD, `£` preserved):**
- **`Wiki/Process-Document-Numbering-and-Filing.md`** — CREATED, the canonical **v1.0** policy (the one register; the `FC/FP/FH/FW/FA/FM/FS/FG` 7-digit ID scheme; the `one owning entity → one row → one ID → one stored file` anti-duplication rule; dedup-on-entry against a Source key; what qualifies; project-co-located filing/naming `<ID> - <Category> - <Short Title>.<ext>`; supersession; the locked-rules + feedback-loop model §9; governance §10; phased rollout §11).
- **`external-source-register.md`** — recreated; added SRC-38 and SRC-39.
- **`Wiki/00_INDEX.md`** — recreated; Process article listed; the numbering row split into the group register + change-requests rows; recently-changed bullet.
- **`CLAUDE.md`** — recreated; §0 document filing/numbering paragraph, §1 Collaboration Space / Smartsheet / live-data-source rows, §5 digest routine now reads the Change Requests queue, and the new **§6a append exception** (append to the two group sheets and file into Collaboration Space — the one narrow live-system write, never editing another entity's rows and no other Smartsheet writes).
- **`README.md`** — recreated; §2 folder tree adds `Process-*.md`, §3 a "Document numbering & filing (all companies)" subsection, §5 a note that the policy is a Wiki article + Smartsheets, not a root control file.
- **`WORKFLOW.md`** — recreated; new **Step 3b** (register qualifying business documents: dedup-on-entry, assign ID + append row, file the copy into Collaboration Space; not-qualifying / unclear → Change Requests), Related header, Step 5 cross-reference, and a checklist line.
- **`current-state.md`** — recreated for this session (new "Group Document Register" row; external sources 37 → 39; next actions).

## Governance note

The group KB previously had "no live-system append exception at all." Minda authorised a **narrow amendment** (CLAUDE.md §6a): the KB and each company's automation **may append rows to the group Document Register and Change Requests sheets** (and set the Status of rows they own) and **file/move qualifying documents into Collaboration Space**. All other bars are unchanged: never edit/delete another entity's rows; no other Smartsheet or QuickBooks writes; never edit/move/copy/delete inside a sister KB or the Finance archive; never trash (archive instead); no external email/filings/payments; personal-data redaction; flag-don't-guess.

## Verification

- Each recreated Drive file's uploaded `fileSize` equals its local byte count: `CLAUDE.md` 42036, `external-source-register.md` 23420, `00_INDEX.md` 13291, `README.md` 12551, `WORKFLOW.md` 8736, `current-state.md` 6476, `Process-Document-Numbering-and-Filing.md` 9489. 0 U+FFFD in each; `£` and the Cyrillic `С` in "Сlassifier" preserved where present.
- Superseded versions archived (never trashed): `CLAUDE.md`, `00_INDEX.md`, `external-source-register.md`, `README.md`, `WORKFLOW.md`, `current-state.md`.
- The instruction doc, `CLAUDE.md`, `README.md`, `WORKFLOW.md`, `00_INDEX.md` and the register sheet all state the same prefixes, 7-digit format, statuses, filing rule and dedup step; the policy shows v1.0.

## Pending (owner-driven — the group DB cannot do these itself)

1. **Share the "Fishbone Group - Documents" Smartsheet workspace** (Editor) with each company's `info@` account (`info@fishboneconstruction.co.uk`, `info@fishboneproperties.co.uk`, `info@fishbonewaste.co.uk`) and `irina@fishboneproperties.co.uk`. The Smartsheet MCP cannot set user sharing (only favorites), so Minda applies it. Automated appends should not be relied on until the shares are confirmed.
2. **Distribute the locked v1.0 policy forwarding note to the sister KBs** so each company adopts it in its own CLAUDE.md/automation (the group DB cannot write into sister KBs).
3. **Phase 2 (follow-on):** migrate the existing Properties `FP` / Holdings `FH` register rows and the group `Archive/` back-catalogue into the one register (dedup-on-entry throughout), then retire the separate sheets.

## Open issues

No change to the OI table: **OI-12** and **OI-13** remain open (both with Minda; OI-13 in research mode, RMT deferred). OI-1 to OI-11 resolved. A new document-policy change-request would arrive via SRC-39 and be promoted into `open-issues.md` by the weekly digest routine.
