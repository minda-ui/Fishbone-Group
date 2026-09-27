# Change log — 2026-09-11 — Tasks Status colour convention recorded in CLAUDE.md

_Session by Claude (AI assistant) on behalf of minda@fishboneconstruction.co.uk. Newest note at the top. Append-only. See `CLAUDE.md` §4._

---

## 2026-09-11 — Group Tasks Status colour convention added to `CLAUDE.md` §1

**Trigger.** Minda asked for the **Status** column on the Smartsheet **Tasks** sheet to be colour-coded —
**Done = green, Overdue = red, In Progress = yellow** — and then said "that's new in CLAUDE.md" (record
it as a standing convention).

**What was checked first.** Inspected the group Tasks sheet in the "1. General" workspace
(`1343219457722244`). The **Status** column is a `PICKLIST` with values **Open / In Progress / Done /
Blocked** — so **"Overdue" is not a Status value**; it is a derived condition (Due Date has passed and the
task is not Done). Colouring it must therefore be a rule referencing the **Due Date** column, not a colour
tied to a label.

**Why nothing was applied to the sheet.** Colour-coding a Status column in Smartsheet is **conditional
formatting**, which is a UI-only feature — the Smartsheet API/MCP exposes no formatting tool (only
row/column/sheet reads and writes). Manually painting each cell's background would be a one-time snapshot
that goes stale as statuses change and as tasks fall overdue, so it is the wrong mechanism. The correct
setup (three conditional-formatting rules, Overdue rule placed last so it wins over In Progress on a task
that is both) was given to Minda to apply in the Smartsheet UI. The "1. General" Tasks sheet is also
read-only for automation (`CLAUDE.md` §6a), so no sheet change was made by this database.

**What was recorded (the standing convention).** Added a **Group Tasks tracker** row to the
`CLAUDE.md` §1 "Live data sources" table capturing: the sheet id `1343219457722244` (and the per-company
Tasks sheets — Construction `5235584035587972`, Holdings `3298244547446660`, SSAS `8617681802626948`,
AMFA `6815307366795140`); the Status picklist values; and the colour convention — **Done = green,
In Progress = yellow, Overdue = red (Overdue = Due Date past AND Status ≠ Done)** — set via conditional
formatting in the UI, with an explicit note that a future session must not try to add it via the connector
(no formatting tool exists).

**Governance / control files (archive-then-recreate + byte-verified).**
- `CLAUDE.md` → 49862 B (new §1 row; a header revision line and a footer line added). Uploaded size
  matched local and a download round-trip diffed **IDENTICAL**.
- `current-state.md` → 18619 B (Last-session cell leads with the 2026-09-11 convention; Next-action cell
  carries the owner's UI step — apply the conditional-formatting rules).

**Still for the owner (UI step).** Apply the three conditional-formatting rules on the Tasks sheet
(Done green / In Progress yellow / Overdue red). If the same colours are wanted on the per-company Tasks
sheets, their Status values can be checked so the identical rules copy across.

Owner-authorised (Minda).
