# Change log — 2026-09-21 (afternoon), Rachel (AI Finance Assistant)

**House style adopted, `HL-0035` raised, `RA-21` corrected, and the four record files resynced to Drive.**

---

## 1. House style for external correspondence — owner ruling, adopted in full bar one line

Alexey Glukhov (AGGA) sent Minda a style guide for finance correspondence at **10:06** on 2026-09-21. Minda's
instruction: **"adopt the rest, keep the name."**

- **Adopted** into `CHARTER.md` §2 as a live rule; the **guide is preserved verbatim** in `CHARTER-amendments.md`
  (Amendment 21), so the charter's summary can always be checked against what was actually received.
- **The one departure, ruled by Minda:** the guide asks for **no name after the sign-off**. The name **stays**.
  Rachel's drafts leave `ops@fishboneconstruction.co.uk`, which displays to the recipient as **"Peter Fishbone"** —
  so the signature is the only thing telling the reader who wrote the letter. Removing it would make every reply
  appear to come from someone else, which is the opposite of what §2's signing rule protects.
- **A routing gap, recorded because it is not just a style note.** The email went to
  `minda@fishboneconstruction.co.uk`, **not** to the `ops@` mailbox Rachel reads. It reached this desk only because
  Minda asked whether she had seen it. **Anything the adviser sends to Minda's own address does not reach Rachel.**
- **The ruling was also a fair criticism, and it is recorded as one rather than softened.** Rachel's replies to the
  adviser on 20 and 21 September ran to **nine and eleven thousand characters** with shouted section headers, when
  the questions asked did not warrant a report each time. Length now matches the weight of the exchange — a one-line
  acknowledgement is a complete email.

**Two compactions were needed in §2 to fit the rule under the 31,316-byte ceiling, and neither loses anything.**
Both compacted passages were narrative **already preserved verbatim** in `CHARTER-amendments.md`, and both were
replaced by the live rule plus a pointer: (1) the git-mirror list history (four → seven → eight files), and (2) the
connector and email-authority history. Every operative rule stays in §2 word for word. Same method as 2026-09-20's
`HL-0024` compaction — **compact only what is duplicated, and only after confirming the full text survives.**
Charter headroom after the amendment: **808 bytes**, from 262.

## 2. `HL-0035` — "For Approval" in an RMT filename is the final document

Rachel raised a doubt that **`RA-27` had already disproved**: whether RMT's `For Approval` files were drafts awaiting
a later approved version. Minda checked and confirmed — **"They are exactly the same: 'for approval' and 'approved.'"**

Raised on the group **Help & Lessons** desk as **`HL-0035`** (row `7031159052175236`), Medium/Resolved. The lesson
recorded is not only the filename convention: **`RA-27` drew the narrow lesson** — it settled one document — and so
the general point was available to be re-doubted two days later. A finding that answers a class of question should be
written as the class.

**A numbering near-miss worth recording.** The high-water mark was checked **at the moment of assignment** (`RA-15`'s
rule) and had moved from `HL-0031` to **`HL-0034`** since the morning — Darius, Alex and Peter had all filed rows in
between. Assuming `HL-0032` from the morning's reading would have collided with a live row.

## 3. `RA-21` — Rachel's advice was wrong, and the row is rewritten

**Rachel advised Minda that `RA-21` could be resolved. That was wrong**, and the reason is worth stating plainly: she
relied on **`CHARTER.md`'s wording** ("exposure now closed") rather than checking the **Document Register**. The
charter recorded the part Minda had closed — five empty folders removed, `F Finance` sanctioned — and Rachel read a
summary of one decision as a statement about the whole exposure.

Checking the register instead showed **registered documents still homed in the Collaboration Space**: `FS0000009`–
`FS0000013`, `FM0000001`–`FM0000003`, `FH0000017`–`FH0000019`, `FC0000001` and `FC0000004`–`FC0000009`, `FA0000001`,
`FP0000001`, and **`FP0000114`**.

**`FP0000114` is the sharp end.** It is the master TDS deposit export — roughly twenty tenancies with **tenant names,
emails and deposit amounts** — sitting in a folder writable by every `fishboneconstruction.co.uk` account. That is the
§4 personal-data bar, not a filing untidiness. **Rachel read that file from that location earlier the same day without
registering what the location meant.**

The figure is **a floor, not a total**: the register search was capped at 100 rows.

The row now carries this evidence; the route is unchanged (`AWT-0029`, Victoria, High), and its two questions still
gate any retirement — **is any copy the only copy, and is anyone outside the estate working from them.**

**Room was made under `RA-31`, not by trimming.** Every open row was measured; `RA-19` was the longest at 2,614 bytes,
and its **Batch 5 Properties narrative (777 bytes)** moved **verbatim** to `open-issues-history-2026-09-part2.md`. The
first rewrite left only **84 bytes** of headroom, so Rachel tightened **her own wording, not the record**, to reach
**428**. Both seams were read back and confirmed clean. 428 bytes is still tight — `RA-31` again.

## 4. Drive resynced — the residence had fallen behind the mirror

Four record files were committed to git but **stale on Drive**, which inverts the standing order: **Drive is the
residence, git is the mirror.** All four were archived-then-recreated and byte-verified:

| File | Bytes | New Drive id |
|---|---|---|
| `CHARTER.md` | 30,508 | `105Me_MxvpyUgrXhE1udbEt7MAedbN8zC` |
| `CHARTER-amendments.md` | 19,520 | `1CPxwJdR_YvWKnwb9qOwyzqHbNCh_W1fb` |
| `open-issues.md` | 30,888 | `1LGoBbsJWe220fBBN2UdsAkNjW0w-hjqo` |
| `open-issues-history-2026-09-part2.md` | 17,152 | `1Gm8zlIttu-5jWF_VogD_JeiL1AQxkbg1` |

Every superseded copy is in `Archive/` under a title naming what superseded it. The KB root was re-listed afterwards
and holds **one live copy of each basename** (`HL-0020`).

**A stale-id catch worth recording.** Rachel was carrying the Drive ids for `CHARTER.md` and `CHARTER-amendments.md`
from earlier in the session. **Both were already in `Archive/`** — the pair had been recreated at 06:36 that morning,
which mints new ids every time. Listing the folder before writing caught it. **An id held across a rewrite is a stale
id**, and on Drive every rewrite mints a new one.

**A deviation from `HL-0031`, recorded rather than passed over.** The rule is to read a long file **whole in one call**
and send exactly that. Two files could not be read that way: `open-issues.md` (30,888 bytes) and `CHARTER.md` (30,508)
both sit above the shell's output cap, and the file-reading tool truncates lines over 2,000 characters — `open-issues.md`
has a 2,601-character row. Both were therefore read in **two contiguous chunks split on a line boundary**, concatenated
with nothing added or altered, and **byte-verified on arrival**. Both landed exactly on their local byte counts. The
deviation is noted because the byte check is a **detect** control, and `RA-32` is the standing reminder that detect
controls are doing work the discipline should.

## 5. Open, and unanswered

- **The TDS export.** Rachel put it to Minda that `FP0000114` should move **faster than the rest of `RA-21`**, because
  it is personal data rather than company records — **raised on its own row, or folded into `RA-21`?** Minda has not
  yet answered; nothing has been done either way.
- **The mirror ruling.** **Four** record files are now Drive-only. `CHARTER.md` §2's list names eight, and widening it
  is Minda's call, not Rachel's (`RA-31`).
- **Annex A** for the interest-waiver conditions lapses **5 October** (28 days from 7 September, not 1 October).

---

*Filed under `CHARTER.md` §5. Written once; never edited.*
*Rachel — AI Finance Assistant, Fishbone Group.*
