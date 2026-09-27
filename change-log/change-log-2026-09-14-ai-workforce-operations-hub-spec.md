# Change log — 2026-09-14 — AI Workforce Operations Hub spec drafted

_Append-only; newest notes at the top. See `CLAUDE.md` §4. No Raw processing; no live system touched — a design spec filed to Outputs (§6a)._

## AI Workforce Operations Hub — spec written (owner asked, 2026-09-14)

The owner asked whether we could create **a space to communicate with Peter, Eugene and future AI employees — showing achievements, work done, and work to do**. Drafted a design spec (owner chose plan-first): `Outputs/2026-09-14_Plan_AI-Workforce-Operations-Hub_v1.md` (id `1eQ_FwfvuM3ZJzImPnpVRcVf62bfNnaEz`, 9159 B). It is the **operational front-end of AI Workforce Plan v2** — no build performed, awaiting owner decisions (§9 of the spec).

Design in brief:
- **Communication model (honest):** no always-on chatbot. Two modes — **live** (open a Claude Code session on the employee's repo; its charter loads, so it *is* that employee) and **async** (post a task/question in a Tasks sheet; the employee's routine picks it up next run and writes a response). The Hub is a task-and-status board + achievements wall, not a group chat.
- **Three layers:** (2a) **Roster** Smartsheet (who works here, status, connectors, routines, last/next run); (2b) **Tasks/Requests** Smartsheet (assign work / ask; employee writes Status + Response; reuses the group RYGB `Health` column); (2c) **Achievements/Log** (completed-task rollup + a change-log feed fed by the master-index digest routine); (2d) an **HTML dashboard** card-per-employee (Operations-Dashboard style), with an optional later interactive-Artifact board.
- **The one prerequisite:** a **narrow charter grant** per employee to write status back to the Hub sheet — Eugene already edits directly; Peter gets one scoped "may set Status/Response on its own Hub rows" exception (email boundaries untouched). Grants are applied in each employee's own KB, not from this database (§6a).
- **Governance:** building the group "Fishbone AI Workforce" Smartsheet + dashboard is in scope (§6a, same basis as the Document Register / Operations Dashboard); it widens no employee's reach.

## Decisions the spec asks Minda for (§9)
First-build scope (recommended: Smartsheet tracker + dashboard together); who beyond Minda may view/assign; static vs interactive dashboard; refresh cadence; workspace naming.

## Governance
Read + plan + Drive Outputs filing only (§6a). No Smartsheet/dashboard built, no sister-KB edited; the spec awaits owner decisions before any build.
