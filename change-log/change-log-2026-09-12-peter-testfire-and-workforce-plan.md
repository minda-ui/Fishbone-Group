# Change log — 2026-09-12 (evening, later) — Peter test-fires reviewed + AI Workforce Plan agreed

_Session by Claude (AI assistant) on behalf of minda@fishboneconstruction.co.uk. Newest note at the top. Append-only. See `CLAUDE.md` §4._

---

## 2026-09-12 (evening, later) — Peter's first runs checked; concurrent-run collision fixed; workforce plan v1 agreed

**Peter test-fires (both routines, fired by Minda ~21:59 UTC) reviewed.**
- **Inbox triage + capture (beat 2a/2c) — succeeded, high quality.** Peter found the connected Gmail
  account is minda@'s own mailbox, **not** a dedicated `info@` inbox, correctly refused to triage the
  personal mail, scoped to the 4 threads where info@ is an explicit To/Cc recipient, staged a triage
  note, **drafted one holding reply** (`create_draft`, not sent) on a stale vendor proposal, and
  staged its PDF in `Capture/` with a read-only dedup check. Raised the mailbox mismatch as an issue.
- **Companies House research (beat 2b) — blocked.** gov.uk/Companies House domains returned
  `EGRESS_BLOCKED` from the routine environment's egress proxy; per charter §3 Peter wrote nothing to
  `Research/`/ledger and staged unverified snippets only. Raised as an issue.
- **Boundary respected** on both: reads + one draft (never sent), writes only to his own folders.

**Collision fixed (group DB maintenance on Peter's KB).** The two routines were fired seconds apart
and ran concurrently, each rewriting Peter's shared `current-state.md` and `open-issues.md` without
seeing the other — leaving two copies of each with a colliding "OI-5". Merged into one reconciled
pair (OI-5 = Gmail connector scope mismatch; OI-6 = Companies House egress block, renumbered from the
CH run's "OI-5"); archived the four duplicates to Peter's `Archive/` (never trashed); byte-verified.
Peter's root now has exactly one of each control file. In normal scheduled operation the two routines
run 30+ min apart, so this was an artefact of the simultaneous manual fire.

**AI Workforce Plan v1 agreed and filed.** On Minda's ask to plan automating group operations and
decide how many AI employees, four owner decisions were locked: (1) **pace** — one at a time, prove
each; (2) **first build** — Content & Marketing; (3) **autonomy** — tiered (inward employees
[data/QS/planning/IT] may auto-file to their own KB; outward [marketing/sales/procurement] stay
draft-only; money-tier commits always human); (4) **access first** — provision dedicated scoped
accounts + allowlist sources (resolving Peter OI-5/OI-6) before scaling. Roster of 8 group-level
employees (one per function, producing company-personalised output — ~7 not ~49). Plan saved as
`Outputs/2026-09-12_Plan_AI-Workforce_v1.md`. Next: Phase 0 access prerequisites (Minda) + build the
Content & Marketing foundation (draft-only, not blocked by Phase 0).

**Boundary.** No routine created by API; no live system of record written; the only edits were to
Peter's own KB (collision cleanup) and the group `Outputs/` + `change-log/`. Owner-authorised (Minda).
