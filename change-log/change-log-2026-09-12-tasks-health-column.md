# Change log — 2026-09-12 — Tasks health colour implemented as a formula-driven Health column

_Session by Claude (AI assistant) on behalf of minda@fishboneconstruction.co.uk. Newest note at the top. Append-only. See `CLAUDE.md` §4._

---

## 2026-09-12 — Group Tasks health colour standardised on a `Health` RYGB column across all five Tasks sheets

**Trigger.** Following the 2026-09-11 Tasks Status colour convention, Minda asked to check the
per-company Tasks sheets and then chose to standardise them.

**What the check found.** All five Tasks sheets share the same **Status** picklist (Open / In
Progress / Done / Blocked), but colour was implemented inconsistently:
- **Holdings, SSAS, AMFA** already had a formula-driven **`Health`** RYGB symbol column.
- **The group "1. General" Tasks sheet and Construction had no colour at all.**
- The three existing formulas were not identical — Holdings & SSAS flagged *red* for anything due
  within 14 days, whereas AMFA flagged those *yellow* and reserved red for actually-overdue.

This means the 2026-09-11 record (colours to be set on the Status cell via UI conditional
formatting) did not match reality: the group's actual mechanism is a **separate Health column**,
which is superior — it is a column formula (API-settable, self-updating) rather than a manual UI job.

**What was done (owner-authorised, Option A).** Standardised all five sheets on AMFA's rule:
- **Added** a `Health` RYGB column (after Status) to the **group "1. General" Tasks** sheet
  (`1343219457722244`) and **Construction** (`5235584035587972`).
- **Realigned** the existing `Health` formulas on **Holdings** (`3298244547446660`) and **SSAS**
  (`8617681802626948`) to the same rule.
- **AMFA** (`6815307366795140`) was already on this rule — the reference.

All five now run the identical column formula:
`=IF(Status@row="Done","Green",IF(Status@row="Blocked","Red",IF(ISBLANK([Due Date]@row),"Blue",IF([Due Date]@row-TODAY()<0,"Red",IF([Due Date]@row-TODAY()<=14,"Yellow","Green")))))`
→ **Done green; Blocked or overdue red; due ≤14 days yellow; >14 days green; no Due Date blue.**
Smartsheet accepted every add/update (no errors); being column formulas they apply to all existing
and future rows automatically. No `Status`-cell conditional formatting was needed.

**Governance / control files (archive-then-recreate + byte-verified).**
- `CLAUDE.md` → 51144 B — §1 "Live data sources" row rewritten from the conditional-formatting
  convention to the implemented Health-column approach; a 2026-09-12 header revision line and a
  footer line added. Uploaded size matched local and a download round-trip diffed **IDENTICAL**.
- `current-state.md` → 18776 B — Last-session cell leads with the 2026-09-12 implementation
  (2026-09-11 marked superseded); Next-action cell's "owner UI step" replaced with "Done".
- **Also re-committed `CLAUDE.md` to the git project** (`minda-ui/Fishbone-Group`, branch
  `claude/awesome-knuth-p1ll7w`) so the checked-in copy matches the Drive source of truth.

**Boundary.** These were schema edits to shared Smartsheet Tasks sheets, made only on the owner's
explicit go-ahead (§6a bars unattended Smartsheet writes beyond the Document Register / Change
Requests). Read-only for automation otherwise.

Owner-authorised (Minda).
