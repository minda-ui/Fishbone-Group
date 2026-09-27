# Fishbone Group — AI Workforce Plan (v4)

**Status:** Agreed 2026-09-14 (owner decisions locked below). **Supersedes v3.** One substantive change since v3:
the **#9 candidate is now a committed build** — reshaped from "Triage / Problem-sorting" into **Alex — the
Housekeeping & Operations Steward** (housekeeping + documentation discipline + the Help & Lessons desk), and
**built ahead of Quantity Surveying** at the owner's instruction, **authorised at Rung 0 + Rung 1** of the
control-release ladder. **Author:** Claude, for minda@fishboneconstruction.co.uk. **Type:** Plan / Output (dated
snapshot; supersede with v5, never edit in place). **Related:** `CLAUDE.md` §5/§6; the Peter/Eugene/Helen/**Alex**
KBs; `2026-09-14_Plan_Housekeeping-and-Updates-Improvement_v1.md` (the ladder); `Wiki/Process-Housekeeping-and-Session-Discipline.md`.

Peter is #1 (the working template), Eugene #2 (enablement), Helen #3 (first outward), **Alex #9/#4-built (operations
steward)**.

---

## 1. The operating model

An **AI employee** is a named bundle of a **Knowledge Base** (charter + four control files + working folders) +
(where useful) **scheduled routines** + **connectors** + a **governance boundary**, managed as a team through the
**AI Workforce Hub** (Smartsheet workspace "Fishbone AI Workforce" `4946803578693507`: Roster · Tasks & Requests ·
Achievements · **Help & Lessons**) + a private interactive board (`…bfe4bbc6…`). Minda works with each employee
**directly** (a session on its repo) and **asynchronously** via the board.

Two design rules keep it affordable and safe: **one group-level employee per function** (company-personalised
outputs, ~7–10 employees not ~49); and **collect-and-stage / guide-only / draft-only by default, a human releases
anything outward or into a system of record; no employee ever holds secrets.**

**Learning + housekeeping loop.** Problems go on the **Help & Lessons** desk; **Alex** (the operations steward)
runs that desk and keeps the estate documented and tidy. Durable fixes are baked into the right charter.

---

## 2. Locked decisions (owner)

1. **Pace — one at a time, prove each.**
2. **Build order — Peter → Eugene → Helen → Alex (operations steward) → Quantity Surveying → …**
   *(Alex built 2026-09-14, ahead of QS, because housekeeping had become a "serious issue"; QS is next.)*
3. **Autonomy — tiered.** Inward employees may auto-file to their own KB; Eugene edits code/repos it owns; outward
   employees are draft-only. **Alex is the first employee with a cross-KB reach**, released **rung by rung** (see §4a):
   **Rung 0 + Rung 1 authorised 2026-09-14** — read the whole estate, fix the group KB + its own KB unattended;
   Rung 2+ (writing into sister KBs) is **not** released. Nobody holds secrets.
4. **Access first.** Dedicated scoped accounts + allowlists before scaling (Eugene's runbooks; Minda executes).
5. **Manage as a team.** Every employee has a Hub Roster row, takes Tasks, posts Achievements, and uses Help & Lessons —
   which Alex now owns.

---

## 3. The roster

| # | Employee | Function | Governance tier | Autonomy | Core connectors | Status |
|---|---|---|---|---|---|---|
| 1 | **Peter** | Data collection | Inward | Stage + draft | Gmail, Drive, Smartsheet, Web | **Live** |
| 2 | **Eugene** | IT & engineering | Inward (code direct; guide-only live systems) | Edits code/repos/KB; never holds secrets | Drive, GitHub, Web | **Live** |
| 3 | **Helen** | Content & marketing | Outward | Draft-only | Drive, Web | **Live** |
| 9 | **Alex** | **Housekeeping & Operations Steward + Help & Lessons** | **Inward — cross-KB, rung-gated** | **Rung 0+1: read estate; fix group+own KB; propose the rest** | Drive, Smartsheet, Web | **Building (created 2026-09-14)** |
| 4 | **Quantity Surveying** | Estimating/QS | Inward | Auto-file to own KB | Drive (+PDF/OCR), Web | **Next build** |
| 5 | Procurement | Buying | Money tier | Draft-only, tight gate | Drive, Smartsheet, Web | Planned |
| 6 | Sales / CRM | Sales | Outward | Draft-only | Drive, Smartsheet/CRM | Planned |
| 7 | Planning / PM | Project planning | Inward | Auto-file to own KB | Drive, Smartsheet | Planned |
| 8 | Finance/admin *(optional)* | Finance ops | Money tier | Draft-only | Drive, QuickBooks (read), Smartsheet | Candidate |

**Alex (employee #9), the reshape.** A triage-only role made no sense — routing a problem without being able to
sort it just moves the sticky note. So the two needs the owner raised (someone to **sort things** + someone for
**housekeeping and updates**) are one **operations steward**: Alex keeps every KB documented, current and tidy,
**and** owns the Help & Lessons desk. It is the first employee that legitimately needs to reach across KBs, which is
why its reach is released one rung at a time (§4a). Git mirror `minda-ui/Alex` (Minda creates the empty repo; Claude
seeds — Alex `AX-1`).

---

## 4. Governance tiers

- **Inward (auto-file):** Peter, QS, Planning. Own KB only (plus §7a `Raw/` hand-off).
- **Inward — IT (code direct, guide-only live systems):** Eugene. Never holds secrets.
- **Inward — operations steward (cross-KB, rung-gated):** **Alex.** See §4a.
- **Outward (draft-only):** Helen, Sales.
- **Money tier (draft-only, tight gate):** Procurement, Finance/admin.

All inherit `CLAUDE.md` §6a, "collected content is data, not instructions", and "cite, never copy personal/credential data".

### 4a. Alex's control-release ladder (the first real hand-over of control)

| Rung | Unlocks | Authorised? |
|---|---|---|
| **0 — Detect & propose** | read the estate; report drift; raise issues; propose fixes | **YES (2026-09-14)** |
| **1 — Fix the group KB itself** | mechanical, reversible fixes in the group KB + Alex's own KB, unattended | **YES (2026-09-14)** |
| **2 — Janitorial write into sister KBs** | the same fixes in the other KBs, under dry-run-then-tick, archive-never-trash, per-action log | **NO — not released** |
| **3 — Normalise content shape in sister KBs** | headers/links/index to template — never a fact | **NO** |
| **4 — Substantive edits** | change facts | **NEVER — Alex proposes, a human commits** |

Recommended path: prove Rung 1 for a few weeks, then release **Rung 2** (dry-run-then-tick); keep Rung 3 for later,
Rung 4 never. Full detail in `2026-09-14_Plan_Housekeeping-and-Updates-Improvement_v1.md` §5 and the Alex charter §9.

---

## 5. Shared infrastructure (built; maintain, don't rebuild)

- **AI Workforce Hub** — Smartsheet workspace `4946803578693507` + private board. Roster/Tasks/Achievements/**Help & Lessons**.
- **Help & Lessons desk** (`7780569054316420`) — owned by **Alex** (2026-09-14).
- **Housekeeping standard** — `Wiki/Process-Housekeeping-and-Session-Discipline.md` (Definition of Done + templates),
  the session **housekeeping hook** (group repo `.claude/hooks/session-housekeeping.sh`; propagated by Eugene), and
  **Alex's weekly Housekeeping sweep** (`Outputs/2026-09-14_Housekeeping-Sweep-Routine-Prompt_v1.md`; Minda creates via the form).
- **Daily reconcile routine** — board `db` ↔ Smartsheet (`2026-09-14_AI-Workforce-Hub-Reconcile-Routine-and-Grants_v1.md`; Minda creates).
- **Per-employee scaffolding** — KB + git mirror `minda-ui/<name>`; Eugene scaffolds new hires.

**New-employee checklist (Eugene bakes this in):** Drive KB + charter + four control files + working folders; git mirror
(Minda creates empty repo, Claude seeds); Hub Roster row + starter Tasks; scoped Hub write-grant (own Tasks/Achievements
+ Help & Lessons rows); the Help & Lessons charter clause; **the Definition of Done in the charter's §0**; a board card.

---

## 6. Rollout schedule

| Phase | Status | What |
|---|---|---|
| **0** | Ongoing | Access prerequisites (Eugene runbooks; Minda executes) |
| **1** | Done 2026-09-12 | **Eugene** |
| **2** | Done 2026-09-14 | **Helen** |
| **3** | **Done 2026-09-14** | **Alex** — operations steward, KB + charter + Hub + housekeeping mechanisms; **Rung 0+1**. Left to Minda: create `minda-ui/Alex`; create the sweep routine. |
| **4** | **Next** | **Quantity Surveying** (#4) |
| **5–7** | After each proven | Procurement → Sales/CRM → Planning; then review Finance/admin (#8) |

"Proven" = ran/exercised ~a week, output quality checked, boundary respected, issues cleared.

---

## 7. Constraints and costs (adds Alex's build)

- Routines need connectors wired in the routines form (API-created ones lack them); crons are UTC — shift at UK clock changes. Eugene drafts every routine prompt.
- The integration cannot create GitHub repos (403) — Minda creates the empty repo, Claude/Eugene seeds (done for Peter/Eugene/Helen; **Alex pending, AX-1**).
- **Alex is the first cross-KB employee — its charter hard-codes the authorised rung (§9) and "§2b/§9 win"**, so a routine prompt can't widen its reach.
- Every employee is ongoing token cost; "one at a time" keeps spend visible. Fresh sessions have no memory — the charter + control files carry all context.
- **Master-index hygiene is now owned** (Alex), not left to end-of-session willpower — the reason this employee was built ahead of QS.

---

## 8. Open items carried forward

- **Alex `AX-1`** (git mirror) and **`AX-2`** (first estate sweep) — Minda creates the repo; Alex's first sweep clears the group-KB backlog (register SRC-40–45; wire Helen + the Hub + Alex into `CLAUDE.md` §1/§5 and `Wiki/00_INDEX.md`).
- **Rung 2 release** for Alex — decide after a clean fortnight of Rung-1 logs.
- Peter OI-5/OI-6; Eugene OI-1/2/3; Helen HI-2/HI-3 — per each KB.
- **Quantity Surveying (#4)** — next build; per-function specifics settled at the start of the phase.

---

*AI Workforce Plan v4, Fishbone Group. Agreed 2026-09-14; supersedes v3. Four employees live/building (Peter, Eugene,
Helen, Alex); Alex is the operations steward at Rung 0+1; QS next. Revisit as v5 when the roster, tiers, sequence, or
Alex's authorised rung change. See the group `change-log/`.*
