# Change log — 2026-09-14 — Help & Lessons desk added to the AI Workforce Hub

_Append-only dated session file (Fishbone Group). See `current-state.md` and `CLAUDE.md` §4._

## Session — 2026-09-14 (later still): "Help & Lessons" register created

Owner asked: when an employee hits a problem (e.g. Peter got an email from **FlexiLoan** and didn't know
where to file it), where does it get registered so (a) someone helps sort it now and (b) next time the
answer is known? Added a shared **Help & Lessons** register to the AI Workforce Hub — it is **both a live
help desk and a lessons/analytics log**, and the accumulated categories are the data that will later
justify a dedicated **triage / "problem-sorting" employee** (a candidate for AI Workforce Plan v3).

**New sheet:** **"Help & Lessons"**, id **`7780569054316420`**, in the group **"Fishbone AI Workforce"**
workspace (`4946803578693507`). Columns: `Ref` (HL-####) · `Date raised` · `Raised by` (Peter/Eugene/
Helen/Minda) · **`Category`** (Filing / routing · Access / permission · Data quality · Tooling / how-to ·
Process gap · Governance question · Other — the analytics dimension) · `Problem / question` ·
`Context / example` · `Priority` · `Status` (Open · In Progress · Answered · Resolved · Baked into charter) ·
`Owner / helper` · `Answer / what to do next time` · `Applies to` · **`Health`** (RYGB column formula:
Resolved/Baked/Answered → Green; In Progress → Yellow; else Blue).

**How it works.** Any employee (or Minda) **appends a row to raise a problem/question**; a helper (a
teammate or Minda) fills `Owner / helper` + `Answer / what to do next time` and moves `Status`. A durable
"always do it this way" answer is then **baked into the relevant employee's charter** (Status → "Baked
into charter") so it is read first every session. The three per-employee `open-issues.md` files stay as
each employee's private issue log; Help & Lessons is the **shared, cross-employee** layer.

**Seeded 4 rows:** **HL-0001** — Peter's FlexiLoan filing question (In Progress; a draft triage suggestion
added — identify the owning company, register per the numbering policy, route via §7a — flagged to confirm
with Minda). **HL-0002** two-rules-per-address routing lesson (Baked into charter). **HL-0003** create_sheet
inline-formula limitation (Resolved). **HL-0004** read_file_content escaping → use download_file_content
(Resolved).

**Grant.** Each employee's scoped AI-Workforce-Hub write-grant extends to **appending/updating Help &
Lessons rows** (raise a problem; update ones they help with) — nothing wider. Applied in each employee's
own KB (§6a), same as the existing Hub grants.

**Pending (next group session housekeeping, with the Hub/Helen items):** add the Help & Lessons sheet to
`CLAUDE.md` §1 Live-data-sources + `Wiki/00_INDEX.md` + a SRC entry; add a one-line "raise problems / log
lessons here" clause to each employee charter (per-KB apply); and consider a **Triage / problem-sorting
employee** in an AI Workforce Plan v3 once the Category data shows the recurring pain.
