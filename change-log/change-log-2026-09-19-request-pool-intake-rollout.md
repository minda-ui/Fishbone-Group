# Change log — 2026-09-19 — Request-Pool Intake standard promoted + routine-edit owner tasks

_Session by Victoria (AI Workforce Coordinator / CEO's Assistant), on behalf of
minda@fishboneconstruction.co.uk. Append-only; newest notes at the top. See `current-state.md` for the
present snapshot and `Wiki/00_INDEX.md` for the article list._

## Context

Follow-through on the "stress-test" that ended with the workforce (Victoria → Alex) designing its own fix
for the autonomous-delivery wall: routines are the only contexts that carry the connectors an assistant
needs, but not every routine read the shared Hub request pool, so an ad-hoc request could sit `Open`
forever. Alex delivered the **Request-Pool Intake** standard as Hub request **AWT-0011** (filed in the
Alex KB as `Process-Request-Pool-Intake-Standard-v1.md`, Drive id `11bHBp_wUzun-vCGTJ3BYCtO4R0ktsOSE`).
Minda then asked to (a) promote the standard to the group Wiki, and (b) adopt a **standing convention**:
any routine create/update/edit is registered as a task on the owner's list carrying the **full
replacement prompt text**, ready to paste into the `claude.ai/code/routines` form.

## What this session did

1. **Promoted the standard to the group Wiki.** Created `Wiki/Process-Request-Pool-Intake.md` (v1, Active;
   id `1vBiPwwR8aeFkHqRcGkVefpbvUHDolIM5`, 10634 B, byte-verified) as the canonical group-level standard.
   It carries the full mechanics (filter own `Open`/`In Progress` rows, oldest first, cap 3, classify →
   do / partial / outside-authority / ambiguous, log, then normal beat), the governance guardrails, the
   one-routine-vs-many rule (put it on the routine with write authority + the right cadence, never the
   hourly read-only reconcile), the **own-row-Hub-write clarification** (see §Governance below), and the
   owner-task delivery convention for routine changes. Cites the Alex origin doc.

2. **Built four full-replacement routine prompts** from the live routine text (read via the routines
   connector) with the intake step merged in, and staged them in a **new group KB folder
   `Routine-Changes/`** (id `10V5ASQ5MT-4j113npwUJZDQ0i2QBynBM`), each byte-verified on upload:
   - `Peter-Inbox-Morning.md` (7445 B) — `trig_01EwBQzsyGrpuLCtCcgzVgkP`
   - `Peter-Inbox-Afternoon.md` (7232 B) — `trig_013vb2UJivYb1P2xhxPnQC19`
   - `Peter-CompaniesHouse.md` (6638 B) — `trig_018avRuWyZfWwzFdLyeeVLXi` (**needs the Smartsheet
     connector attached first** — today it carries Google Drive only)
   - `Alex-Housekeeping-Sweep.md` (6317 B) — `trig_01JMX63UDr55nJrTfhrcKBrC` (new Step 0)
   Stray markdown blockquote (`>`) line-markers in the source prompts were normalised away (cosmetic).

3. **Registered four owner tasks** on the AI Workforce Hub Tasks & Requests sheet (`8860839228606340`),
   Assigned to Minda, Requested by Victoria, each linking its full paste text:
   - **AWT-0019** (Medium) — Peter inbox morning
   - **AWT-0020** (Medium) — Peter inbox afternoon
   - **AWT-0021** (High) — Peter Companies House: attach Smartsheet, then paste. This is the single
     unblocker for the live Companies House cross-check from the test task (Report 1): Peter's CH routine
     already reaches the live CH REST API via a proxy-attached credential, but without Smartsheet it
     cannot read the request pool.
   - **AWT-0022** (Medium) — Alex weekly Housekeeping sweep (new Step 0). Explicitly NOT the hourly Daily
     Hub Reconcile (`trig_01EMsc8Bn7c3a75q9cfr981c`), which is read-only by design.

## Governance

- The intake requires an assistant to update its **own** assigned Hub row (Status / Response / Done date).
  For Peter, whose charter forbade writing to "any system of record … Smartsheet rows", the full
  replacement prompt adds a **one-line carve-out** limiting Smartsheet writes to Peter's **own** rows on
  the two Hub sheets (`8860839228606340`, `7780569054316420`) — nothing else. This is a coordination-layer
  clarification, consistent with how Helen and Eugene's check-in routines already operate; Peter stays
  read + draft + stage only for every real system of record. Surfaced to Minda in chat and in each task,
  not smuggled in.
- No live system of record was written beyond the §6a-permitted append (four rows on the Hub Tasks &
  Requests sheet, which the coordinator owns). No routine was edited by the assistant — routine edits are
  the owner's paste (governance: only a human edits routines via the form).
- The **standing convention** (routine changes delivered as owner tasks carrying the full replacement
  prompt) is recorded in `Process-Request-Pool-Intake.md` §Rollout mechanics and in `current-state.md`.

## Control-file updates (archive-then-recreate, each byte-verified)

- `Wiki/00_INDEX.md` — article count 10 → **11**; new Process bullet for `Process-Request-Pool-Intake.md`;
  new "Recently changed" 2026-09-19 entry; AI-workforce master-index row now points to the standard.
  Old id `1YRgevgJ-n7HX8X7HvPgb6DCALk5Q5FZo` archived; new id `1c_jvFx4mHgE_3557JqwLsVKt1Wozphl7` (23756 B).
- `current-state.md` — new latest-session cell; Wiki articles 11; Next-action rollout line; the
  2026-09-19 standing instruction recorded. Old (morning) id `19zQGGhYLMJHWCE7vkZwksdsw9IN5bgNh` archived;
  new id `1jxhiNcmf_RKHElTetpRRflGR_FqMBHTy` (16067 B).
- New folder `Routine-Changes/` created at the KB root.

## Still pending (owner action)

- Apply the four routine edits from `Routine-Changes/` via the routines form (AWT-0019–0022); attach the
  Smartsheet connector to Peter's CH routine before pasting AWT-0021. Once AWT-0021 is live, the live
  Companies House cross-check for the test-task Report 1 can be dropped into Peter's pool and returns on
  his next weekly run.
- Optional (not urgent): re-paste the standard wording into Helen's and Eugene's check-in routines
  (`trig_01AJ2vd3rxuishiThgSJ38sT`, `trig_01Q6nS5UKzQFRfGsQnQLKiQX`) — they already implement the
  behaviour; this only aligns wording.
