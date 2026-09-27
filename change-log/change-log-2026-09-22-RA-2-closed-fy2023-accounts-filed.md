# Change log — 2026-09-22 (evening), Rachel (AI Finance Assistant)

**`RA-2` is closed after four days. The blocker was never judgement, and what cleared it was the owner doing in one
upload what no AI seat in the estate could do at all.**

---

## 1. `AWT-0028` — the three FY2023 statutory accounts are filed

| Doc | Filed to | Bytes |
|---|---|---|
| `FP0000140` | Financial Archive > Fishbone Properties Ltd > Annual Accounts | 158,886 |
| `FH0000020` | Financial Archive > Fishbone Holdings Ltd > Annual Accounts | 144,161 |
| `FW0000003` | Financial Archive > Fishbone Waste Ltd > Annual Accounts | 38,033 |

Same-Drive **moves**, so every file id and byte size is unchanged and each register row's `File link` still resolves.
Byte sizes match Peter's sha256-verified Companies House retrieval exactly. Register `Location` updated on all three
from `PENDING`.

`FW0000003` was **opened before filing** and confirmed: Fishbone Waste Ltd, company 13201875, year ended 30 April 2023,
board-approved 31 January 2024. Titles and byte counts decide nothing on their own — `RA-15`'s rule, applied.

**Why this sat four days.** `HL-0014`: no seat held both the Companies House fetch and the Drive upload. Peter's tooling
could retrieve but not upload; Rachel's authority could move but not fetch; a 144KB base64 relay through model context is
not acceptable for a financial record. The task was **correctly parked**, not neglected. Minda uploaded the PDFs and it
became a fifteen-minute move. **`HL-0014` stays open on the group desk, because the gap it names has not moved.**

## 2. There were two sets, and the register said which one counted

Victoria placed properly-named copies in the company KB `Raw/` folders at **19:09**. Minda uploaded a second,
**byte-identical** set to the Financial Archive **root** at **19:41**, under raw Companies House filenames
(`09687012_aa_2024-01-25.pdf` and siblings).

The register's `File link` column **already pointed at the 19:09 ids**. So those were the registered documents and those
were the ones filed. Minda's three are relabelled `DUPLICATE … RETIRED-not-deleted` and moved to `Archive/`. Archive root
re-listed afterwards: **nine folders, zero loose files.**

Nothing was lost either way. The point is that the answer came from reading the register rather than from assuming the
newer upload was the live one — `HL-0020` in its usual direction.

## 3. Two things closed alongside it

- **The destination discrepancy.** All three register rows carried "policy v1.3 §7 **or** the Financial Archive —
  unresolved". Minda confirmed the Archive the same day (`AWT-0076`). The rows now say so.
- **`RA-26` is unblocked.** Owner ruling, 2026-09-22, through `Raw/` under §7a: **Rachel may now write into the group
  Loans KB** to create and maintain Facility pages. `AWT-0030` had been parked on "not Rachel's to write" since 19
  September. The sentence in `RA-26` saying she does not write there is **left visible rather than edited out**, because
  what held that row up was a boundary, not a difficulty.

`RA-2` moved **in full, verbatim** to `open-issues-resolved.md` with the resolution appended. **Twenty open, thirteen
resolved** — 20 + 13 = 33, matching `RA-1`–`RA-33`, checked against every record file.

## 4. `RA-32` recurred a third time, and the detect control caught all of it

The `open-issues.md` write came back **33,322** against **32,653** authored. An `RA-26` update had been **composed into
the emit** instead of being edited onto disk first — exactly what `HL-0031` forbids, and exactly the trigger it names:
assembling a long write from read fragments. The added text was correct and is kept; local was reconciled to it and the
two verified equal.

Then reading back from disk before the next emit caught **two more defects, both introduced by Rachel's own edits this
session**: a parenthetical about the house-style task re-attached to `AWT-0028`, and `AWT-0030` listed as both Victoria's
and Rachel's inside one row. Neither came from a tool; both came from patching text without reading the result.

**Three recurrences in two days.** The byte check and the read-back caught every one, and they are *detect* controls. The
*prevent* control — edit the file, read it back, send exactly what is on disk — is not holding, and saying so plainly is
more use than resolving to try harder. `RA-32` stays open and stays Rachel's, not the group's.

## 5. Files written

| File | Bytes | New Drive id |
|---|---|---|
| `open-issues-resolved.md` | 33,014 | `1KjeommLg0TJG4YgwBM652uJgVLkMPiq8` |
| `open-issues.md` | 33,322 | `1oFVqiFeSd-qVjbg5NCFjfLBh_QZfwj8X` |
| `current-state.md` | 39,641 | `1OPgxSQO9RPEhqWZKqQ1v5kveYvdTcFwl` |

All three byte-exact, **created before the superseded copies were archived**. KB root re-listed after: **eleven
governance files, one copy each.** Pushed to `claude/hello-rachel-swj9oc`.

## 6. Still to do, recorded so it is not lost

- **`AWT-0066`** — fold group Rule C (plain-brief) into the charter **under its own heading**; John flagged a clash with
  an existing charter Rule C, so it must not be overwritten.
- **`AWT-0071`** — fold the Loans KB write authority into charter reach, then build the Landbay Facility page.
- **`AWT-0075`** — Properties bank accounts (Starling and Revolut supplied; BBL paid off, to be confirmed from the
  historic statements), plus Amfa and Waste trading status.
- **`AWT-0070`** — John's bulk finance intake, now in Rachel's `Raw/Finance`.
- **A citation to correct, not to act on.** The owner note and `AWT-0075` both tag Fishbone Waste's trading status as
  **`RA-15`**. `RA-15` is the register-reconciliation row and has nothing to do with it. Amfa/`RA-14` is right. Recorded
  here rather than written into the wrong row.

---

*Filed under `CHARTER.md` §5. Written once; never edited.*
*Rachel — AI Finance Assistant, Fishbone Group.*
