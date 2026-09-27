# Fishbone Properties → Group — Staged Migration Plan

**Version:** 1.0
**Type:** Plan (standing Output — revised by archive-then-recreate, version bumped)
**Status:** Active — approved
**Date:** 2026-09-19
**Author:** Victoria (AI Workforce Coordinator / CEO's Assistant)
**Owner-approved:** Minda, via the 2026-09-19 decision walk-through (all decisions logged in §9)
**Tracks against:** one Hub task per stage (AI Workforce Hub, Tasks & Requests `8860839228606340`)

---

## 1. Purpose

Fishbone Properties Ltd runs the estate's most mature, most automated Knowledge Base — 8 live cloud
routines, a live property register and a live QuickBooks file — but it **predates the group's AI-workforce
structure** and runs largely *alongside* the group rather than *inside* it. This plan integrates it.

**Chosen approach (owner decision):** *rationalise & absorb the overlaps* — realised by **standing up a
dedicated AI employee, "John", who owns Fishbone Properties end-to-end** and assists the human property
manager, **Irina**. Properties' two genuine functional overlaps move to the group's functional owners
(finance → Rachel); its document flow joins the group register; its quarterly governance folds into the
group sweep. The Properties KB **stays** as the property-knowledge home — now owned by John.

## 2. Principles (non-negotiable)

- **P1 — Personal-data containment.** The Properties KB holds tenant personal data in plain text, protected
  by *access control* (§6b). Nothing in this migration may widen who can see it. Any assistant handling it
  carries the same personal-data boundary; **group-level surfaces (dashboards, reporting, the Hub) show
  aggregate / non-personal data only.** Giving Properties its own dedicated seat (John) *serves* this rule.
- **P2 — Parallel-run-then-retire.** A live routine is only ever switched off **after** its replacement has
  been proven firing for a full cycle. **No same-day cutovers, ever.**
- **P3 — Rollback window.** A retired routine is **paused, not deleted**, and kept paused **14 days** before
  final deletion (deletion is an owner step via the routines form).
- **P4 — Quality-paced.** No fixed deadline. Each stage takes the time it needs.
- **P5 — Owner-executed routine changes.** The coordinator cannot create/edit/fire/retire a routine (§6a);
  every routine change is delivered to Minda as an **owner task carrying the full replacement prompt**.

## 3. End state

- **Properties KB stays** as the property-knowledge home (17 property articles, tenants, financials,
  processes), **owned by John** — charter written into the KB, Hub Roster seat, inheriting the existing git
  mirror `minda-ui/Fishbone-Properties-Ltd`.
- **John** runs Properties operations on a **hybrid tier**: operational *write* inside the domain (KB,
  document pipeline, property register, Tasks), **draft-only outward** — any tenant letter/notice he
  prepares is released by **Irina** (a human). Never sends, files externally, pays or commits the company.
- **Documents** flow to the **group Document Register** (`7352854736144260`); the legacy register
  (`7675667699337092`) is frozen read-only.
- **Finance** is **Rachel's** — she produces the Properties financial snapshot into the **Finance Archive**
  (`1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4`, SRC-31); bounded QB writes only, no money movement.
- **Quarterly governance** folds into the **group quarterly sweep** (with a Properties section).
- **Reporting** (ops-board, digests, register-sync, compliance-monitor) is **unchanged** — kept running,
  ownership moved to John. Branding / group-dashboard visibility deferred to a later version.

## 4. Roles after migration

| Who | Owns |
|---|---|
| **John** (new AI employee — Properties Operations Assistant) | Properties KB + its day-to-day automation; intake→document→file→task pipeline; assists Irina. Hybrid tier. |
| **Irina** (human, property manager) | Releases anything outward John drafts; the human decision-maker for the property business. |
| **Rachel** (AI Finance Assistant) | Properties financial reconciliation + snapshot → Finance Archive. Bounded QB writes only. |
| **Peter** (AI Data Assistant) | The group-wide document-writer capability for the **other six** companies (a **separate track**, not this plan). Properties is carved **out** of Peter's scope. |
| **Victoria** (coordinator) | Runs this plan; coordinator-side writes (back-catalogue register migration); registers each stage + routine change as Hub / owner tasks. |

## 5. The stages

Each stage: **build the replacement → run it in parallel with the original → verify → retire the original
(pause 14 days)**. "Done" (per §8.4) = replacement proven firing ≥1 full cycle + old routine paused +
change-logged + Hub task closed.

### Stage 1 — Stand John up *(prep only; no live routine touched)*
- Write John's **charter** into the Properties KB (standing context + the hybrid-tier reach + the Irina
  working mechanism); create his **Hub Roster seat**; provision **connectors** (Drive + Gmail + Smartsheet +
  Web + QuickBooks **read-only**); he **inherits** the existing `minda-ui/Fishbone-Properties-Ltd` repo.
- **Executor:** coordinator drafts the charter + Roster row; **owner** provisions connectors / the routines
  environment. No writes to any live property system yet.

### Stage 2 — John takes the intake pipeline (Properties #1) *(the careful one)*
- Apply the **write-expansion blueprint** (§7) to John: mint FP document numbers, append Document Register
  rows, create/update Properties Tasks, file Raw→Wiki. **New FP documents write to the *group* register from
  day one** — this *is* the document-register forward-migration.
- Run **attended (dry-run-then-tick)**, **in parallel** with the existing `fishbone-daily-inbox-raw` routine,
  until a full cycle is clean (FP numbers land right, register rows dedupe, **no PII leaks outward**). Then
  retire the old routine (pause 14 days). Minda confirms the unattended cutover.
- **Executor:** owner task (new routine prompt + John's write-grant); coordinator verifies each cycle.

### Stage 3 — John takes the remaining Properties routines + quarterly merge
- Ownership of `register-sync`, `compliance-monitor`, `ops-board`, and the digests moves to **John**; they
  **keep running as-is** (no rebuild). The **quarterly sweep merges into the group quarterly sweep**,
  carrying the property-specific checks (uninsured properties, CH charges) as a Properties section; the
  standalone Properties quarterly routine is then retired (pause 14 days).
- **Executor:** owner task for the quarterly-sweep merge/retire; ownership re-home is coordinator + charter.

### Stage 4 — Finance → Rachel *(gated)*
- **Trigger:** starts only when Rachel's current group finance work (FY2023 accounts filing `AWT-0016` + the
  financial-archive organisation) is **Done on the Hub**.
- Rachel absorbs the monthly reconciliation: reads the Properties QuickBooks file, produces the
  Properties-labelled **financial snapshot into the Finance Archive** (§3). Bounded QB writes only (bank-feed
  match / categorisation), attended dry-run-then-tick, **never money movement**. Parallel-run vs Properties'
  `#5` routine, then retire `#5` (pause 14 days).
- **Executor:** owner task (Rachel's routine/scope); coordinator verifies.

### Stage 5 — Back-catalogue + freeze legacy *(cleanup, lowest priority)*
- Migrate the historical `FP…` rows from the legacy register into the group register — a **coordinator
  one-off** under the §6a append exception (careful dedup; check both the Source key **and** the sequence
  high-water mark, per AWT-0027). Then **freeze the legacy register read-only** with a "Superseded — see the
  group Document Register" banner. **Never deleted.**
- **Executor:** coordinator.

## 6. Guardrails carried onto John (from the Section-3 blueprint)

John's write-authority over Properties carries, verbatim:
1. **Four write powers** — mint FP numbers; append Document Register rows; create/update Properties Tasks;
   file Raw→Wiki (incl. tenant/property articles).
2. **PII guardrail (P1)** — these writes stay inside the access-controlled Properties KB; John never surfaces
   tenant data outward; the §6b access boundary applies to everything he files.
3. **§6a limits** — no external email send, no Companies House / HMRC filing, no payments, no sharing
   changes.
4. **HL-0010 "data-filling, not action"** — John records what already happened; he never initiates,
   authorises or commits a future action.
5. **Attended until proven** — dry-run-then-tick until Minda confirms the unattended cutover.
6. **Whole pipeline, single owner** — John owns the full loop (triage + write + file + Tasks); no split
   hand-off seam.

*(The same blueprint is reused by Peter for the other six companies under the separate group-wide track.)*

## 7. Not in scope for v1.0 / revisit later

- **Ops-board re-brand + a group-dashboard Properties tile** — deferred (owner: leave reporting as-is for
  now).
- **Peter's group-wide document-writer expansion** — a **separate track** for Construction / Amfa / Waste /
  Holdings / Commercial + group-level intake. Same blueprint; its own plan and pilot (not Properties).
- **Document Register back-catalogue** — scheduled as Stage 5 (new-first was the priority).
- **Properties' four-control-file model** — *not* imposed; John keeps the KB's existing Tasks + change-logs
  model.
- **DST cron drift** — handled as an owner checklist item at each UK clock change; not urgent.

## 8. Tracking & governance

- **This plan** lives at group `Outputs/` as a standing versioned doc; revised by archive-then-recreate,
  version bumped.
- **Each stage** becomes a **Hub task** (Tasks & Requests `8860839228606340`); **every routine change** is an
  **owner task** carrying the full replacement prompt (P5).
- **Victoria** coordinates and reports progress; owner-executed steps are flagged as such.
- **"Done" per stage (§8.4):** replacement proven firing ≥1 full cycle **+** old routine paused **+**
  change-logged **+** Hub task closed.
- **Success (whole plan):** John owns Properties end-to-end and is on the Hub; the intake pipeline runs under
  John writing to the group register; finance produces to the Finance Archive under Rachel; the quarterly
  sweep is merged; the legacy register is frozen; and — the acceptance test for P1 — **no tenant PII has
  moved to any wider-shared surface** at any point.

## 9. Decisions log (2026-09-19 walk-through, owner-approved)

| # | Decision |
|---|---|
| 1.1 | KB **stays** (reason incl. tenant personal data that can't be exposed → Principle P1). |
| 1.2 | Parallel-run-then-retire is **absolute** — no same-day cutovers. |
| 1.3 | Retire = **pause; delete after 14 days**. |
| 2.1 | *(superseded by 9.5 once John was added — see revised sequence)*. |
| 2.2 | Finance starts when Rachel's group finance work (FY2023 accounts + archive) is **Done on the Hub**. |
| 2.3 | **No fixed deadline** — quality-paced. |
| 3.1 | Peter/**John** gains all **four** write powers, with the PII guardrail. |
| 3.2 | Scope is **group-wide** (Peter), **pilot-first company-by-company**; Properties later carved to John. |
| 3.3 | **Whole pipeline, single owner** — no triage/write split. |
| 3.4 | **Attended (dry-run-then-tick)** until proven. |
| 3.5 | §6a + HL-0010 "data-filling, not action" guardrails **carry over unchanged**. |
| 4.1 | Rachel: **reporting + reconciliation, bounded QB writes only** (no full ownership, no money movement). |
| 4.2 | Properties financial output lives in the **Finance Archive only** (single home). No group-dashboard finance. |
| 5.1 | Document Register: **new-first, back-catalogue later**. |
| 5.2 | Forward-flow **rides with the pipeline** (John, group register from day one); back-catalogue = coordinator one-off. |
| 5.3 | Legacy register **frozen read-only, kept forever, never deleted**. |
| 6.1 | Ops-board / reporting **left as-is for now** (no re-brand, no group tile). |
| 7.1 | Quarterly sweep **merged into the group sweep**, property checks preserved as a Properties section. |
| 7.2 | Register-sync, compliance-monitor, ops-board, digests **kept as-is, untouched** (now under John). |
| 7.3 | *(superseded)* → Properties gets a **dedicated seat: John**, not a headless system entry. |
| — | **John: firm go, Option (a)** — owns Properties **end-to-end**; Peter's group-wide role covers the other six companies (separate track). |
| 9.1 | John = **hybrid tier**: internal operational write + outward draft-only; **Irina releases**. |
| 9.2 | John **adopts the existing Properties KB** (no new store). |
| 9.3 | Connectors: **Drive + Gmail + Smartsheet + Web + QuickBooks read-only** (finance writes stay Rachel's). |
| 9.4 | Setup: charter in the KB + **Hub seat** + **inherit the existing repo**; Irina mechanism in his charter. |
| 9.5 | **Sequence:** ① stand John up → ② John takes the pipeline (#1) → ③ remaining routines + quarterly merge → ④ finance→Rachel (gated) → ⑤ back-catalogue + freeze legacy. |
| 8.1–8.4 | Keep Properties' Tasks+change-logs model; DST = owner checklist; plan at Outputs + a Hub task per stage; "done" per §8.4. |

## 10. History

- **v1.0 — 2026-09-19.** Created by Victoria from the owner walk-through. Establishes the Properties→Group
  migration via a new dedicated employee (John, Properties Operations Assistant), staged parallel-run,
  personal-data containment as the first principle. Supersedes the earlier "absorb into Peter/Rachel"
  framing for Properties (Peter's group-wide expansion continues as a separate track).
