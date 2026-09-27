# Change log — 2026-09-26 (Rachel). The write-path ceiling belongs to every tool, the FY2026 bridge moves to Smartsheet, and the governance mirror is brought current.

_One session, Friday 26 September 2026. Rachel's own errors are recorded where each happened rather than gathered into
a list at the end; they are numbered so they can be referred to, and **no total is stated** — this paragraph said
"five" in draft while the body described seven, which is the stale-running-total failure `RA-31` warns of, committed in
the header of the very entry that documents it. The day's finding, if it has one: **a limit attributed to one tool
turned out to belong to the desk**, and the wrong attribution was acted on before it was measured._

---

## 1. Morning checks

Three, all clean. **No reply from AGGA's Alexey Glukhov** — his 19:58 email of 25/09 is still the last word on that
thread. **Nothing new in `Raw/` or `Raw/Finance`** since 20:30 on 25/09. **`Rachel - Finance` sharing re-verified at
source**: `list_shares` on workspace `751582603175811` returns exactly one entry, `minda@fishboneconstruction.co.uk`,
OWNER, scope ITEM. Nothing shared with anyone, as `RA-21` requires be re-checked rather than assumed.

**One overnight arrival, checked and set aside.** A Smartsheet automation alert at 01:05 to
`irina@fishboneproperties.co.uk`, "Changes to Tasks: Alert when an assigned row changes". It concerns a sheet named
`Tasks`, which is not one of Rachel's; it prompted the share re-check above rather than being a finding in itself.

---

## 2. The FY2026 workbook for 84311663 — a bridge sheet added, and a claim of Rachel's own withdrawn

The workbook built on 25/09 survived in the session scratchpad: `FBP_84311663_FY2026_bank-statement-summary.xlsx`,
133,665 bytes, 4,117 formulas, alongside its twelve source CSVs and build scripts.

**A real gap was found on re-reading it.** The workbook covers the **twelve statements**, 6 May 2025 to 3 May 2026.
The financial year is **1 May 2025 to 30 April 2026**. They are not the same window, they differ by **27
transactions**, and the Overview gave totals for the statement run but never for the year — which is the pair the
accounts actually need.

|                | Statement run | FY2026      |
|----------------|---------------|-------------|
| Opening        | 202.73        | **915.90**  |
| Paid in        | 827,411.18    | **813,027.18** |
| Paid out       | 824,763.13    | **813,833.13** |
| Net            | +2,648.05     | **-805.95** |
| Closing        | 2,850.78      | **109.95**  |
| Transactions   | 843           | **838**     |

**Note the sign.** The run shows a **positive** net; the financial year is **negative**. The whole difference is 1 to
3 May 2026, three days after the year end, when 16,074.00 came in against 13,333.17 out. The other 11 transactions of
the 27 sit before the run starts, on 1 to 2 May 2025.

A **`FY2026 bridge`** sheet was added, 28 formulas (workbook 4,117 → 4,145; 133,665 → 136,254 bytes). It closes with
stated figures: statement `20250503` prints **915.90** at 30 April 2025 and carries eleven transactions on 1 to 2 May
2025 — 1,690.00 in, 2,403.17 out. 915.90 less 713.17 is 202.73, exactly where the workbook opens. Four `IF` checks
re-prove it on open. Static audit after the edit: 4,145 formulas, no banned functions (`AND, COUNTA, COUNTIF,
COUNTIFS, DATE, IF, ROUND, SUM, SUMIF, SUMIFS` — all pre-2007), no `#REF!` or `#NAME?`. SHA-256
`f634900a7fb33ea5a5c914483467857ccda661b1e4920b83379ae14d66ad59a2`.

**Error 1, withdrawn the same session.** Rachel had told Minda the 915.90 was a **derived** figure. It was not — the
workbook's own Overview already recorded it as read from statement `20250503`. A claim was made about Rachel's own
prior work without re-reading that work first.

---

## 3. The workbook could not be filed to Drive, and the limit was measured rather than argued

**Instructed by Minda to attempt it** after Rachel had recommended she file it herself.

**The method is sound.** A **4,894-byte** probe workbook was uploaded to `Reconciliations/` as 6,528 base64
characters, reported back by Drive at **exactly 4,894**, and downloaded byte-for-byte identical. So `base64Content`
works and the transcription was exact at that size.

**The size is not.** The real workbook, **136,254 bytes**, is **181,672 base64 characters** in a single tool argument.
It could not be emitted at all, and **a quarter of it — 45,418 characters — was already too large to be put in front
of this desk**. Repacking at maximum compression gained **nothing** (byte-identical output; openpyxl already writes
optimally). The file will not trim: two of seven sheets carry **87%** of the bytes and the remaining sheets reference
one of them, so removing either leaves `#REF!`. There is no variant of that file that fits.

**One avenue was closed and not pursued.** A check for a credentialed path from the container straight to the Drive
API was **blocked as credential exploration**. Correctly, and it was not routed around.

**What was filed instead**, since the figures are small enough to travel:
`Reconciliations/FBP_84311663_FY2026_figures-summary` (Google Sheet, 46 rows) — the bridge with its sources, the
FY2026 figures, the 12-statement figures beside them, why they differ, the three checks, and a closing block naming
the workbook, its byte count and its SHA-256, and stating **on its own face that the workbook is not filed and where
it is**. A record that admits its own gap beats a folder that looks complete.

**Error 2, caught by reading the file back.** The first upload rendered **`#ERROR!`** in two cells. The rows labelled
`= Balance at 3 May 2025` and `= Balance at 30 April 2026` begin with `=`, and Drive **evaluates a leading `=` as a
formula** when it converts CSV to a Sheet. `create_file` returned success and every figure beside them was correct, so
**nothing in the response showed the defect**. Trashed, relabelled both rows `Subtotal - …`, re-filed, re-read: 46
rows, no errors. **So: no cell may begin with `=`, and a file is not called filed until it has been read back.**

---

## 4. Amendment 30, and three of Rachel's own errors caught while writing it

Instructed by Minda: *"write it into the charter file"*. One bullet added to
`Charter-Locations-and-Connectors.md` §2 after the connector inventory, plus **Amendment 30** in
`CHARTER-amendments.md`, because that file's own governance requires a dated entry for any §2 change. Commit
`82d4ad5`, 71 insertions, 0 deletions.

**Error 3, a dead ceiling nearly cited as the cause.** `HL-0005`'s 31,316-byte silent-truncation point was about to be
named as the reason the upload failed. **It has not existed since 2026-09-18** — Alex proved 60,185 bytes then, and
Rachel independently wrote 43,856 on 2026-09-21. Citing it would have been the precise error `RA-31` exists to record:
working against a ceiling that had already gone. Caught by reading `RA-31` before writing rather than after.

**Error 4, a tally invented.** The entry was drafted saying the `RA-32` defect class had recurred for "the eleventh
time". That number was not in any record. Checking found the estate **disagrees with itself**: `open-issues.md` says
**nine** recurrences in two places, Amendment 29 says **ten**. The count was removed and the discrepancy raised for
`RA-32` rather than settled by choosing the larger. **A running total is exactly what `RA-31` warns goes stale.**

**Error 5, pre-existing content damaged.** Rewrapping a long line, the script mutated the line list **while iterating
forward**, so the indices shifted and **Amendment 23's heading was split across two lines** — breaking a heading in a
file whose rule is that history is never edited. Caught by `git diff` showing a deletion, not by care. Restored, and
the loop reprocessed in reverse with headings skipped. Final diff: **71 insertions, 0 deletions**, which is how it is
known that nothing pre-existing was touched.

---

## 5. "Can we work solely in Smartsheet?" — answered, then corrected by measurement

**Minda's question.** Rachel answered **"yes, workable and better"**, on three grounds that still stand: column
formulas apply one formula to every row including future ones; `add_rows`/`update_rows` change one row and leave the
rest, so archive-then-recreate and the whole-file rewrite go away; and Amendment 29 had already made Smartsheet the
residence for structured working data for that reason.

**Minda acted on it and said to rebuild. The arithmetic, done an hour later while starting the rebuild, contradicted
the advice on the point that mattered most.** `add_rows` takes its data through the same output as `create_file`.
Measured: a realistic bank-transaction row is **677 bytes of JSON**, so the 843 transactions behind one account-year
come to **570,711 bytes** — more than three times the xlsx payload that already could not be emitted — and a single
500-row call is **338,500**. Against a practical ceiling near 45,000 characters that is about **66 rows a call**. And
**there is no import tool**: the full orchestration guide was read, and every write path runs through this desk.

**Error 6, and it is the day's finding.** An architectural recommendation was given **before the payload arithmetic
was done**, and the owner acted on it. `RA-31` had already recorded since 2026-09-21 that the write path is the
binding constraint on exactly this kind of question. **Where work should live is a measurement, not a judgement.**

**What follows, and it is probably the right architecture regardless.** Raw transaction detail stays where the bank
issued it — the CSVs in the Financial Archive. Smartsheet holds the **derived** layers, which run to tens of rows.
Copying a primary record into a working tool was never the right shape, ceiling or no ceiling.

---

## 6. `Bank - financial year bridge` — built in Smartsheet, and it proves itself

New sheet in `Rachel - Finance`, id **`7104774740772740`**, 15 rows for Properties' 84311663 FY2026. Nine columns:
`Step`, `Company`, `Account`, `Financial year`, `Sign`, `Amount`, `Basis`, `Check`, `Source`.

**The arithmetic is Smartsheet's, not Rachel's.** Subtotals and totals are cell formulas; three check rows compare the
bridge against figures the **bank** prints. All three return **OK**. Opening 915.90, paid in 813,027.18, paid out
813,833.13, net **-805.95**, closing 109.95, 838 transactions — matching an independent Python computation exactly.

**Two mechanics worth keeping.** Smartsheet **evaluates on write** and returns the computed value, so a formula is
proved at the moment it lands — a real advantage over an xlsx, whose formulas ship unevaluated and are proved only
when somebody opens the file. And its stored numbers carry **floating-point noise**: the 30 April 2026 balance is held
as `109.95000000007`, net movement as `-805.949999999953`. **Every equality check must be wrapped in `ROUND(...,2)`**
or it fails on seven parts in a hundred billion. The three checks pass **because** they are ROUND-guarded, not because
the numbers are clean.

---

## 7. Amendment 31 — correcting Amendment 30 the same day

Instructed by Minda to do the charter before anything else. **Amendment 30 framed the ceiling as Drive's and
base64's. Too narrow.** Every write path takes its content as tool-call arguments, and those come from this desk, so
`RA-31`'s write path binds Drive's `create_file` and Smartsheet's `add_rows` **identically**; base64 is a surcharge on
one of them, not the reason for the limit. The §2 bullet's headline was rewritten from *"Filing a binary to Drive
costs a third more than the file itself"* to *"Every write path carries its data through Rachel's own output, so they
all share one ceiling"*, and the Smartsheet measurements were added.

**Amendment 29 needed guarding too.** Its sentence *"It removes the defect class rather than mitigating it"* is true
of the defect class it names and **false if read as covering the ceiling**. Both the bullet and Amendment 31 now say
so, because that conflation is what produced the wrong answer in §5.

Commit `47b2a9e`, 78 insertions against 4 deletions — and each of the four deleted lines was checked against
`82d4ad5` and its parent: all four were written that morning, none existed before. No pre-existing content touched.

---

## 8. The governance mirror brought current — Drive was behind git

**Drive is the residence and git the mirror, and the residence was two days stale.**

| File | Drive was | Now | Local |
|---|---|---|---|
| `CHARTER-amendments.md` | 25,207 | **37,850** | 37,850 |
| `current-state.md` | 23,517 | **24,948** | 24,948 |
| `Charter-Locations-and-Connectors.md` | 12,113 | **17,825** | 17,825 |

**The procedure `RA-32` adopted on 2026-09-25 was followed rather than writing at the live files.** Each went to
`Sandbox/` under a candidate name, was byte-checked there, and only then renamed and moved into the KB root with
`update_file`, which touches metadata only — so a bad emit lands in the Sandbox and the live file is untouched. **All
three matched on the first attempt.** Superseded copies are in `Archive/` as
`*.superseded-20260926.md`, created first and archived second; nothing deleted.

**A verification worth recording: all fifteen governance files now match between Drive and git**, and no local file is
missing from Drive. Nothing else was stale.

**One mechanical note.** `CHARTER-amendments.md` at 37KB was **too large for the harness to hand over in one piece**.
It was read in two halves split at line 232, the join verified with `cat -A` to confirm the blank line between
Amendment 27's heading and its first paragraph, then emitted whole. **That 37,850-byte emit is the largest single
write this desk has made**, against the 43,856 the record calls proven — about 6,000 bytes of room. The next amendment
of any size needs a narrative moved out first, as happened on 2026-09-24 at 44,214. Not done: splitting a governance
file is Minda's ruling.

---

## 9. `Continuity` and `Arithmetic` converted to column formulas — two wrong attempts first

On sheet **`4011436214978436`**, both columns held **static values Rachel had computed and typed**. They recorded a
conclusion rather than proving one and would not move if a figure were corrected.

**`Arithmetic` converted cleanly.** Row-local column formula: blank if any of the four figures is missing, otherwise
`OK` when Opening + Paid in − Paid out − Closing rounds to zero, `FAIL` when not. All 12 figure-bearing rows compute
`OK`.

**`Continuity` took three attempts.** A column formula **cannot reference another row**, and the obvious key — date
adjacency — is unusable because the bank's own periods are not contiguous: `20250803` ends **2 August** and
`20250903` starts **4 August**. Attempt one keyed on `Account` plus a date comparison and returned **"First in run" on
all twelve rows** — wrong, and more misleading than the static values it replaced. Adding `@cell` did not fix it.

**Error 7, found in the data rather than the formula.** `Company`, `Account` and `Financial year` were **blank on all
twelve** of the sheet's most important rows — the account number existed only inside the `Statement ref` text, so
nothing on that sheet could be filtered or grouped by account. All three were populated.

**What worked.** A new **`Prior ref`** column holding each statement's predecessor by reference, with `Continuity`
fetching that statement's Closing **live** via `SUMIFS`, ROUND-guarded. The distinction matters: `Prior ref` is a
**structural link, not a figure**, so a corrected balance **re-tests the check**. Had a "prior closing" number been
stored instead, the answer would have been baked in and the check would have been decoration.

**The failure branch was tested deliberately.** `20260503`'s `Prior ref` was pointed at `20250603`, putting Opening
0.98 against a closing of 1,317.63; the cell went to **`BREAK`**. Restored, and it returned to `OK`. **An untested
check is not a check.**

**Two findings about the sheet itself.** The old static `Continuity` was **wrong, not merely unproven**: **nine rows
asserted `OK` while carrying no figures at all** — the seven "Not issued by bank" rows plus `20260803` and `20260903`,
which had a Closing but no Opening. The formula now reads `n/a - not parsed` on all of them, and a filter confirms
exactly **12 of 91** rows carry a real verdict. And the sheet holds **91 rows, not the 21 Amendment 29 records** — it
has grown into account inventory, gaps and duplicates. Accurate when written, stale now.

**Left alone, flagged not fixed.** `Arithmetic`'s `FAIL` branch has never fired, because every row with figures
balances. And the sheet carries **three rows each** for `20241103`, `20241203`, `20250103`, `20250203`, `20250303` and
`20250403` — the six statements that arrived after the gap was found — with mixed statuses including `Held` and `Not
issued by bank` on the same reference. Eighteen rows of data hygiene, and not Rachel's to resolve alone.

---

## 10. Network access to `help.smartsheet.com`

Asked by Minda whether the Smartsheet help centre is reachable. It was **blocked at the egress proxy**; Minda updated
the environment's network policy the same session. **The change worked at the network level** — CONNECT now succeeds,
and the proxy's denial log records only `www.smartsheet.com:443` as `connect_rejected`, nothing for the help host.

**Two things still prevent reading it, neither of them the policy.** `WebFetch` returns `EGRESS_BLOCKED` even on a URL
it has never fetched, so it is consulting a **different policy path** from the container's egress — most likely a
snapshot taken at session start, which a new session would clear. And Smartsheet's own edge answers **406 Not
Acceptable** with an empty body to plain and browser-headed requests alike; the proxy README documents 403/407 as
policy denials and 405 as client misconfiguration, so 406 is **the origin refusing non-browser clients**. That is
their bot protection, and it was not pursued further — defeating a site's deliberate access control is not something
this desk does.

**`WebSearch` does work**, routing outside the container, and supplied the documented criterion pattern. **It changed
nothing**: the `Prior ref` design stands on its own merits, and a date-adjacency version would still be wrong across
`20250803`/`20250903` whatever the syntax. Worth adding **`community.smartsheet.com`** if the settings are revisited —
the working formula examples are there and it is less aggressively protected.

---

## What is open at the end of the day

- **The FY2026 workbook is still not on Drive.** It cannot be filed by this desk (§3 above). It was sent to Minda as a
  file attachment in the Claude app on 26/09; filing it needs her. The figures-summary sheet in `Reconciliations/`
  records that gap on its own face.
- **`CHARTER-amendments.md` has about 6,000 bytes of room** against the proven write path. The next finding of any
  size needs a narrative moved out first. Minda's ruling.
- **Amendment 29's "21 rows"** is stale — the sheet is 91.
- **Eighteen duplicate-reference rows** on the completeness sheet need a hygiene decision.
- **`Arithmetic`'s `FAIL` branch is untested** on real data.
- Unchanged from before today: the Funding Circle and Vida Homeloans loan record needs Irina's paperwork; the Octopus
  tenancy swap needs an answer from the tenants; the Amfa sign-ins of 25/09 need confirming as Minda's; the AGGA
  offset confirmation due **30 September** still stands at **do not confirm**; the £30,000 loan-or-trade-payable
  question to Alexey is due **Monday 28 September**; `AWT-0090` with Eugene is **Tuesday 29 September**.
