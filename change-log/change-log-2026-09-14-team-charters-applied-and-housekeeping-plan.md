# Change log — 2026-09-14 — Team charters applied (Hub + Help & Lessons) + Housekeeping & Updates Improvement Plan

_Append-only dated session file (Fishbone Group). See `current-state.md` and `CLAUDE.md` §4._

## Session — 2026-09-14 (later still): charter grants applied to all three employees, then the housekeeping plan

Follows the same day's `change-log-2026-09-14-help-desk-board-plan-v3-team-update.md`, which had left
"Minda still to apply the charter grants + §F Help & Lessons in the Peter/Eugene/Helen KBs" as pending.
The owner then said **"Can you update team members?"** — an explicit owner instruction to apply them
(§6a permits editing a sister KB under an explicit human decision). So this session **applied them**;
this entry supersedes that pending note.

**1. Team charters updated — Peter, Eugene, Helen (Drive + git, byte-verified).** Each got (a) the
scoped **AI Workforce Hub** write-grant (own Tasks/Achievements rows) extended to **Help & Lessons**
rows, and (b) the identical **"Help & Lessons" charter clause** (raise problems / log lessons; bake
durable fixes into the charter). Applied by editing each employee's own charter in its Drive KB
(archive-then-recreate) and its git mirror:
- **Eugene** — `CLAUDE.md` new §2e + header revision; Drive recreate id `1j40cL7sX9piOeAQADwPsXbDBvNWE2blI` (14421 B, byte-verified; predecessor archived id `1yw-FuDwvPc6Soi0xXArMCavb-N4eiP9z`); git `fdf2b64..80e0f2c` on `minda-ui/eugene`.
- **Helen** — `CHARTER.md` §2a Help & Lessons bullet + fixed a stale git-mirror line; Drive recreate id `1l8rCk5csHcjxZKP4BMRWZX9GikiZdPqL` (10782 B, byte-verified; predecessor archived id `176t4--VNBZB6IN4SOTAPQnV1nzS3OyHK`); git `01b7c92..bec1998` then `bec1998..c67b540` on `minda-ui/helen`.
- **Peter** — `CLAUDE.md` header revision + new §2d (Hub grant + Help & Lessons) + §3 carve-out; Drive recreate id `1txojLg6J7qj_NhuwfhuN1nbNeUOhOffb` (20275 B, byte-verified; predecessor archived id `1biUR5bKGtrjr1QKB1qSfJ1GQ-Ho3MIBR`); git `25f9ea4..2b0f633` on `minda-ui/peter`. (Note: the `--depth 1` clone had an old tip; `git fetch origin main` showed the remote already in step with Drive at 18662 B, so the edit was rebased onto origin/main — Peter's mirror was **not** stale, the shallow clone was. Recorded as a lesson.)

All three now carry the Hub + Help & Lessons grant and clause in both Drive and git. **Remaining for
Minda (guide-only, unchanged):** create the daily reconcile routine via the routines form.

**2. Housekeeping & Updates Improvement Plan authored** — owner request: *"We need a plan how we are
going to improve housekeeping and updates. Please create one for implementation. If we need, tell me
that permission is needed, so I can see where we can start releasing control."*
- New Output **`Outputs/2026-09-14_Plan_Housekeeping-and-Updates-Improvement_v1.md`** (id
  `1P_SK3_jnsHJOhY6gH8CpIfwNiqQ7wQrm`, **16516 B byte-verified**, 0 U+FFFD, `£` preserved).
- Content: (1) diagnosis — housekeeping slips because it falls last when the tank is empty, relies on
  memory not tooling, the estate (twelve KBs) outgrew the manual per-session routine, archive-then-recreate
  is easy to half-do (leaves duplicate roots), and no single owner. (2) A four-layer fix, cheapest/safest
  first — **Convention → Hook → Routine → Steward** (templates + Definition-of-Done; a SessionStart/End
  housekeeping hook alongside the PDF hook; a read-only weekly Housekeeping sweep digest; then the
  employee). (3) **Reframes employee #9** from "Triage / Problem-sorting" to a **Housekeeping & Operations
  Steward (includes triage)** — the first employee with a bounded *cross-KB janitorial* reach — and argues
  it should build **before Quantity Surveying**. (4) A **control-release ladder (Rung 0–4)**: Rung 0
  detect-&-propose (no permission, do now) → Rung 1 fix the group KB unattended → **Rung 2** janitorial
  writes into sister KBs (the first real release of control) → Rung 3 normalise content shape →
  Rung 4 substantive edits (never; Steward proposes, human commits). Each rung lists what it unlocks, the
  §6a rule it touches, risk, guardrail (dry-run-then-tick; archive-never-trash; per-action log), and
  rollback (restore from `Archive/`).
- The plan **acts on nothing beyond Rung 0 until the owner authorises a rung** — no live system, sister
  KB or governance boundary changed by writing it. Ends with four owner decisions (start Rung 0?; Steward
  priority vs QS?; how far up the ladder and when?; confirm #9's reshape).

**Housekeeping note (honesty):** the first upload of the plan carried a 16-byte placeholder by mistake;
it was **archived** (not trashed) into `Archive/` under a clear "broken 16-byte placeholder upload,
superseded by full-content upload" name (id `19Ph3m4CHKdOaazWaAXNJTTQxy4pzMfav`), then re-uploaded with
the full content. No duplicate left in the Outputs root — the exact discipline the plan is about.

**Pending / carried forward (unchanged group housekeeping):** register **SRC-40–45** (Hub workspace +
Roster/Tasks/Achievements/Help & Lessons sheets + board artifact) in `external-source-register.md`; wire
the Hub + Help & Lessons + Helen into `CLAUDE.md` §1/§5 and `Wiki/00_INDEX.md`. (Deferred: the large
Drive-only control files have no clean local source to recreate from without a full download-first pass.)
This plan, once a rung is chosen, is itself the vehicle for clearing that backlog.
