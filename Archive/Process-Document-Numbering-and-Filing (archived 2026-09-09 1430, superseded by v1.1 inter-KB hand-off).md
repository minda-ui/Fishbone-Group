# Document Numbering & Filing — Fishbone Group policy (v1.0)

**Type:** Process
**Status:** Active — **canonical, group-wide, locked**
**Version:** v1.0
**Last updated:** 2026-09-09
**Applies to:** every Fishbone Group company (Construction, Properties, Holdings, Waste, Amfa Furniture, Commercial Properties, Fishbone SSAS) and the group itself
**Related:** `CLAUDE.md` §3/§6 · `WORKFLOW.md` · `Wiki/00_INDEX.md` (master-index map)

## 1. Purpose
This is the **one** set of instructions every company follows for registering, numbering and filing
business documents. The goal is a single system where **documents don't duplicate each other**: one
document is registered once, gets one ID, and has one stored file. This document is the canonical,
**locked** source of truth — it is not edited locally by any company. It changes only through the
central review→upgrade loop in §9.

## 2. The one register (single index)
There is **one register for the whole group** — the Smartsheet **"Document Register"**:
`https://app.smartsheet.eu/sheets/4W2xwP9c2gfCpvWPGJmPHg2P2QwJfxPmWXpCvC21` (sheet id 7352854736144260),
in the **"Fishbone Group - Documents"** workspace
(`https://app.smartsheet.eu/workspaces/cMrhqqvWghC3mcf9cRxXPf9gJgpGvFWMXjW5wjV1`).

Every company's KB / automation **reads it** (to check for an existing entry) and **appends its own
rows**. It is the single place to find any document, wherever the file physically sits.

Columns: `Document No. | Entity (owner) | Direction | Date | Category | Title | Entities involved |
Description | Status | Source key | File link | Location`.
- **Status:** `Draft` · `Issued` · `Superseded` · `Void`.
- **Source key** = the document's Google Drive file ID, or a Gmail thread id for email-only items — the
  dedup key (see §5).
- **File link** = the Drive URL (or Gmail thread ref); **Location** = a human-readable folder path.

## 3. The ID scheme
- **Format:** `<PREFIX>` + **7 zero-padded digits**, e.g. `FC0000001`.
- **One continuous sequence per entity.** Incoming and outgoing share the same counter — the Direction
  and Category columns do the filtering, not separate number ranges.
- **Assigned at creation/receipt**, and the register row is written **immediately** so parallel
  humans/automation cannot collide on a number.
- **Numbers are never reused.** A killed or replaced document is marked `Superseded`/`Void`; its number
  stays burned.
- **Per-entity prefixes:**

  | Prefix | Entity |
  |---|---|
  | `FC` | Fishbone Construction Ltd |
  | `FP` | Fishbone Properties Ltd |
  | `FH` | Fishbone Holdings Ltd |
  | `FW` | Fishbone Waste Ltd |
  | `FA` | Amfa Furniture Ltd |
  | `FM` | Fishbone Commercial Properties Ltd |
  | `FS` | Fishbone SSAS |
  | `FG` | Group-level (cross-entity, or the group/holding itself) |

- **Disambiguation rule:** a **document number is always 7 digits; a property code is 4 digits** (e.g.
  the Properties portfolio codes `FP1601`..`FP2401`). If something could be either, count the digits.

## 4. The anti-duplication rule (the core of the system)
`one owning entity -> one row -> one ID -> one stored file`.
- Every document has exactly **one owning entity** (its prefix). It is registered **once**, under that
  entity.
- A document that touches more than one company is recorded with the others named in **Entities
  involved** and cross-referenced in **Description** — it never gets a second row or a second number in
  another entity's name.

## 5. Dedup-on-entry (mandatory, before any number is assigned)
Before minting a number, **search the register**:
1. by **Source key** (the Drive file ID / Gmail thread id), and
2. by the same **title + date + counterparty**.
If a matching row already exists, **reuse that ID** — do not create a second. Record the Source key on
the row so the same source can never be numbered twice. If it is genuinely unclear whether a document is
already registered, or whether it qualifies at all, **raise it in the Change Requests queue (§9) or flag
for a human — never guess, never fork the rules.**

## 6. What gets a number (and what doesn't)
**Register** anything meaningful to a company's record or audit trail: statutory accounts and CT600s;
certificates (incorporation, change of name, VAT, EORI); title registers/plans, leases and tenancies;
loan/mortgage documents (offers, deeds, guarantees, variations); board and intercompany letters/minutes;
legal, lender, insurer and Companies House / HMRC correspondence; valuations; completion/redemption
statements; property- or project-tied invoices and receipts.
**Do not register** (no number, no row): marketing and newsletters; generic recurring bills with no
property/entity tie; duplicates; routine automated notifications.

## 7. Filing & naming — files live with their project
Files are kept in the shared **Collaboration Space** library, **co-located in the folder of the thing
they belong to**, not in one central dump. The register (§2) is what makes any document findable; the
storage location is chosen for day-to-day convenience.
- **Project/property-tied** -> that project's folder, e.g. `Collaboration Space/<Company>/<Project or
  Property>/Documents/` (or a matching category subfolder such as the Properties `FP#### - <Address>/`
  structure).
- **Company-level, not project-tied** (statutory accounts, certificates, HMRC/Companies House) -> the
  company's "Company Documents" / `FP00 - Company`-style folder.
- **Group-level (`FG`)** -> the group documents folder.
- **Name every file** `<ID> - <Category> - <Short Title>.<ext>` wherever it sits, so it is
  self-identifying and traceable back to the register.
- The register row is the pointer back (File link + Location). For an email with no attachment, File
  link holds the Gmail thread reference instead.
- The **original** stays in its source location (e.g. `Raw/`), untouched; the filed copy + the register
  row is the permanent business record; the Wiki article is the knowledge layer that cites the ID. When
  moving a file, use Drive **move** (preserves the file's Drive ID) so links already embedded elsewhere
  keep resolving.

## 8. Supersession
Never overwrite a superseded document. Keep the old file, set its register row to `Superseded` (or
`Void` if cancelled), and register the new version under a **new** number that references the old one in
its Description.

## 9. Locked rules, one feedback channel, and versioned upgrades
The rules are locked, but never perfect — so there is one channel to improve them and one control point.
- **Locked & versioned.** This document is the single source of truth, carried at a stated **version**
  (currently **v1.0**). Companies follow it verbatim and **do not edit it locally**.
- **One feedback queue (single place).** Raise any imperfection — a document that doesn't fit the rules,
  an ambiguous rule, or an improvement idea — as a row in the Smartsheet **"Document System - Change
  Requests"**:
  `https://app.smartsheet.eu/sheets/hrx6rP255gm8qVVQgX47GjQmqHGWRf576Vmm5hF1` (sheet id 8918834172004228),
  same workspace. Columns: `Ref | Raised (date) | Raised by (entity/KB) | Type (bug/gap/improvement/
  question) | Policy version | Description | Example doc (ID or link) | Status | Resolution / new version
  | Reviewed (date)`. Status: `New` -> `Under review` -> `Accepted` / `Rejected` / `Deferred`.
- **Review -> upgrade -> propagate.** The group's weekly digest routine reads new `New` items and
  promotes substantive ones into the group `open-issues.md` for a human decision (Minda). **Only the
  group** edits this document; an accepted change is made in a reviewed session, the **version is
  bumped** and recorded in §11, the queue row is set `Accepted` with the new version, and the sisters are
  notified to adopt it.

## 10. Governance (what is and isn't permitted)
- **Permitted (narrow, deliberate):** append rows to the group **Document Register** and **Change
  Requests** sheets (and set the Status of rows you own); file/move qualifying documents into
  Collaboration Space.
- **Not permitted:** editing or deleting another entity's rows; writing to QuickBooks or any other
  live system/sheet; editing, moving, copying or deleting anything inside a sister knowledge base or the
  Finance archive (link to it, or ask for the document to be copied into `Raw/`); trashing anything
  (supersede/archive instead); external email, filings or payments.
- **Personal data:** record business name, role and work contact only, plus company/scheme-level
  identifiers (company numbers, UTRs, VAT, EORI, PSR/PSTR, title numbers, directors' names). **Never**
  copy passports, driving licences, NINOs, personal UTRs, credit reports, payslips/P60s, or personal
  bank-account numbers into the register or the KB.

## 11. Rollout & change history
- **Rollout (phased).** New documents (every company) are registered here from switch-on; the existing
  Properties (`FP`) and Holdings (`FH`) back-catalogues, and the group `Archive/`, are migrated in as a
  follow-on, after which the separate `FP`/`FH` sheets are retired. Each company adopts this policy at
  v1.0 in its own CLAUDE.md/automation.
- **Change history:**
  - **v1.0 — 2026-09-09** — Created. One group register + one Change Requests queue (new "Fishbone Group
    - Documents" Smartsheet workspace); per-entity prefixes; 7-digit IDs; dedup-on-entry; project-
    co-located filing in Collaboration Space; the locked-rules + feedback-loop model.
