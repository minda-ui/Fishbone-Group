# Change log — 2026-09-21 (morning) — Rachel

## FBP issues 1.02, 1.10 and 1.11 answered — and a write error of Rachel's own, caught and repaired

**Employee:** Rachel (AI Finance Assistant)
**Instruction:** Minda — *"issues 1.02, 1.10 and 1.11 can we look at it together now?"*, then *"write them up and draft the reply"*.
**Authority:** `CHARTER.md` §6 (Sandbox Mode). QuickBooks **read only**. Nothing sent, nothing posted.

---

### Start-of-session pass (§0, Hub Rule A)

* **Hub `Tasks & Requests`** read in full — **47 of 47 rows, `isSampled: false`**. Rachel's only rows are
  `AWT-0037` and `AWT-0042`, **both Done**. Nothing open, nothing to flip to In Progress.
* **`Raw/`** listed — **unchanged overnight**, same eight items as at 21:53 on 2026-09-20.

### The work

`Sandbox 07` — `Sandbox/2026-09-21_sandbox-07_FBP-issues-1.02-1.10-1.11_AGGA.md`, id
`1amm73PzjTFCdLRn2313P2owQfsfJiIma`, **10,611 bytes**. Draft staged for Minda: `r-6024636580430732390`,
message `1a0c27e4309a7677`, **a new thread** — these answer the Issues Log, not either live email thread.

**1.11 — the one with a wrong entry behind it.** Construction's FY2026 profit and loss (read live, read-only)
records **no interest income from any group company**: its entire Other Income is `Bank interest - received
£28.85` and `Other Miscellaneous Income £118.03`. So Properties' **£1,281** interest charge against the
Construction loan is **one-sided** — a deduction on one side with no receipt on the other, between companies
under common control — and it contradicts both companies' filed FY2025 accounts. The balance also **reversed
direction** during FY2026, so any charge was running the wrong way for part of the year. Recommendation:
reverse it unless a positive decision is taken to put the balance on interest terms, which is a new arrangement,
not a correction.

**1.10 — sharpened, not closed.** £11,964 is **£10 away** from the stated terms (£283,000 @ 3.8% + £20,000 @ 6%
= £11,954), so it is neither a clean recalculation nor cleanly last year's. The account has **never accrued
interest** — FY2024 £310,340 and FY2025 £303,702 are exact principal plus a shrinking residual. And by
**30 April 2026 the balance is £286,653, £16,347 below the £303,000 of combined tranches**, so the tranches
began to be repaid in-year and a full-year charge computed on them cannot be right. **Holdings' ledger is out of
reach** — one QuickBooks file per entity and this desk is bound to Construction — so the rest is AGGA's to
supply; the reply asks for it, and for the CT61 position.

**1.02 — only one of three balances is confirmable.** Holdings **£303,702** is agreed by both companies' own
filed accounts and reconciles to exact principal. Construction cannot be confirmed (four figures; `Sandbox 06`).
Commercial Properties **£103,251** cannot either — FBCP files no related-party note at all and Properties' own
ledger already carries it at £90,300.57. The reply confirms one and declines two with reasons, because a Note 9
disclosure relies on the answer.

---

### An error of Rachel's own, recorded because it is the point of this log

**What happened.** Writing `current-state.md` to Drive, Rachel **composed two extra sentences directly into the
`create_file` call** instead of editing the file, reading it back and writing exactly what was on disk. The
result was a Drive copy of **31,432 bytes** — **above the measured 31,316 truncation point** (`HL-0005`) — that
**did not match the local and git copy**. Two failures in one: **`RA-32`'s rule broken** (never compose into the
emit), and a governance file left **divergent between Drive and the mirror**.

**What was actually at risk, stated accurately.** The file was read back in full: it is **intact**, the final row
ends correctly, and **nothing was truncated**. `fileSize` reported 31,432, which is larger than the 31,316 figure
`HL-0005` records, so on this one observation the write went through whole. That is a single data point and is
not enough to revise `HL-0005` — the rule against writing over the ceiling stands, and this is precisely the case
where a silent truncation would have been invisible.

**What was done about it.** The bad copy was moved to `Archive/` as
`SUPERSEDED 2026-09-21 0555 - current-state.md (over-ceiling write, replaced same minute)` — labelled for what it
is, not quietly deleted. The two sentences were then put **into the file**, `Consolidation Batch 5` (finished,
and already narrated in its own `change-log` entry) was **dated out verbatim** to
`current-state-history-2026-09.md` under `RA-31` to restore real headroom, and both files were rewritten from
disk and byte-verified.

**The generalisable part:** archive-then-recreate invites this error, because the tool takes the content inline
and there is nothing to stop a writer adding "just one more sentence" at the point of writing. The discipline has
to be **edit → read back → write what was read**, on a Drive write exactly as on an email. Worth an
`HL` row on the group desk; not raised yet, because a numbered row on a shared sheet needs the high-water check
and Minda has not been asked.

---

### Records updated

* `current-state.md` — old id `1ek4bHvfkEyv1QqpZGCWF58JvQ7ruwxkd` archived; the over-ceiling copy
  `1FWzCm10PTcaI1ch9Ei8DUBpn7bgQ_5x0` marked SUPERSEDED; live id **`1OvnK1BcCpOajM59nTaFs270nTfSaq6cx`**,
  **29,560 bytes**, byte-verified, **1,756 bytes of headroom**.
* `current-state-history-2026-09.md` — old id `1ZH5fiUiWLz5VLHo-aM-IurUNaVXjUB_f` archived; live id
  **`1ivtgPM_kNDD9R5kqaZsz4icKAexr7Hs9`**, **26,984 bytes**, byte-verified. Batch 5's full row moved **verbatim**.
* This change-log entry; git mirror `minda-ui/rachel`, branch `claude/hello-rachel-swj9oc`.

**Nothing was sent, nothing was posted to QuickBooks, no live financial record was changed.**

---

_Rachel, AI Finance Assistant — Fishbone Group._
