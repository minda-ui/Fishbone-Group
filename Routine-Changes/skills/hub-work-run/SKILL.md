---
name: hub-work-run
description: How to work and close Hub rows in a work run. Use in every run: choose rows, write DONE, PROGRESS, BLOCKED or NOT MINE lines, hand work to another employee, take a safe new Task ID, and close a row with the right columns. Extends hub-close-on-finish.
---

# Hub work run (mechanics only)

Rules source: Task Work Run Standard v1.1 (group Outputs, Drive 1ysdjb-vsPIQnmGlp2CXIrvyu93LT1ovN).

## Read your rows
get_sheet_summary on 8860839228606340 with a top-level filters list: Assigned to = you, Status not Done. Confirm metadata.filtersApplied names both filters, isSampled false, rowsActual = rowsInFilter; else re-read once, then raise one Help and Lessons row (7780569054316420) and stop. Filters use the field names columnName, operator, columnValue (not columnId, columnTitle or value, which are ignored and leave filtersApplied None). find_in_sheet also works and pages; use it to confirm a row exists, not to read Status.

## State lines (one per row you touch, newest last)
`<You> <date> <time UK>: DONE | PROGRESS | BLOCKED | NOT MINE - ...`
- DONE: close it (below).
- PROGRESS: what you produced, where (file name and Drive id), what is left, that the next run continues.
- BLOCKED: set Status Blocked; the blocker, who must act, the one thing needed, what you do when it arrives.
- NOT MINE: which employee, then hand on.
Never write "received", "not started", "needs a full session". Three PROGRESS runs with no new output become BLOCKED or NOT MINE. No row of yours goes 24 hours without a dated line. The Response cell silently truncates at 4,000 characters: near 3,500, move older lines to a file in your KB, link it, keep the latest.

## Update a row
update_rows rows use `id` (the row id), cells use columnId: Status 8891359190189956, Response 95266167981956, Done date 2347065981667204, Due date 4598865795352452. Read the row back; if the Response changed since your run started, re-read before writing.

## Close
Status Done, Done date today, and a closing line: what was done, where it is, what happens next. Your own rows only.

## Hand on
A Hub row for them (first line: what is wanted and the done-when; sources; due date; Requested by you) and a Raw note in their KB's Raw folder (raw-handoff-to-employee skill). Answer anything handed to you on your own row and in a note to the sender by your next run.


## Due dates
With four runs a day, seven days a week, the default due date is the next calendar day (the same day for a single run). Choose a later date only for a named dependency, such as something a person must supply or a date set outside the group, and name that dependency on the row. Never copy a weekday habit into a due date.

## New Task ID
Never use an unfiltered read. Take the highest AWT number you know, probe the next ten with get_sheet_summary filters Task ID IN [AWT-xxxx ...], columns ["Task ID"]. First number not returned is free. After add_rows, read the "⚠ Duplicate Task ID?" cell: if it is not empty, renumber with update_rows to the next free one. Never compare IDs with GREATER_THAN. add_rows column ids: Task ID 3261859655976836, Assigned to 7765459283347332, Requested by 2135959749134212, Request 6639559376504708, Priority 4387759562819460, Status 8891359190189956, Source 1221166074824580.
