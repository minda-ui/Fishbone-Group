# Change log — 2026-09-12 — Eugene (AI IT & Engineering Assistant) created and indexed

_Group Fishbone database, dated session file (append-only; newest note at the top). See `CLAUDE.md` §4._

## 2026-09-12 (night) — created Eugene, the group's second AI employee, and indexed him in the master index

**By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk.

**What / why.** At Minda's instruction to build the **IT agent before Content & Marketing**, stood up
**Eugene — AI IT & Engineering Assistant**, the enablement layer behind the AI workforce. Eugene
produces software-setup runbooks + config and verifies them, scaffolds new AI employees and drafts
their routine prompts, writes/tests hardware & automation code, and keeps the infrastructure
inventory. He is **interactive** (no routines).

**Reach (owner-set).** Eugene **edits code/repos/KB directly** and pushes to git repos he owns, but
is **guide-only for live systems** — a human executes Admin-console / DNS-MX / mailbox-migration /
account-provisioning / routines-form / hardware-deploy steps; Eugene produces the runbook and
verifies the outcome. He **never holds, stores, types or requests real credentials or secrets** (he
references *where* a secret lives, never its value, and never commits one). Inherits the group
`CLAUDE.md` §6a boundary; connectors Google Drive + GitHub + Web (no Gmail).

**Built (all byte-verified).**
- **Drive home** `My Drive / Eugene - AI IT Assistant` (`1o4MBRcckZBspw-uT6qM2V-74H6OsRK9T`) with
  working folders `Runbooks/`, `Infra-Inventory/`, `Hardware-Projects/`, `change-log/`, `Archive/`.
  Uploaded charter `CLAUDE.md` (12313B), `README.md` (2683B) and the four control files —
  `current-state.md` (3023B), `open-issues.md` (1708B), `external-source-register.md` (2094B),
  `processed-items-ledger.md` (496B) — each fileSize verified against local; 0 U+FFFD.
- **Git mirror** `minda-ui/Eugene` seeded on `main` (commit `1b4df9e`) with the charter, README, the
  four control files and the **group-standard SessionStart PDF-toolkit hook** (`.claude/hooks/session-start.sh`
  + `.claude/settings.json`). (The empty repo was created by Minda; the integration cannot create repos.)
- Eugene's open questions: **OI-1** Google Workspace tenant shape (one tenant + secondary domains vs
  separate subscriptions), **OI-2** Gmail connector delegated-mailbox capability, **OI-3**
  first-runbooks priority. Eugene owns the runbooks to resolve **Peter OI-5** (dedicated `info@`
  mailbox) and **Peter OI-6** (Companies House egress allowlist).

**Master-index update (archive-then-recreate + byte-verify).** Added Eugene to `CLAUDE.md`: the §1
sister-systems table (a new row), the intro count (**eleven → twelve** other knowledge systems), a
"Revised 2026-09-12 (night)" header line and the footer clause. New `CLAUDE.md` is 57925B; downloaded
and **diff = IDENTICAL**, 0 U+FFFD. Refreshed `current-state.md` (now 27959B) for the Eugene session.

**Master-index drift fixed the same session.** The group folder root held **two** `CLAUDE.md` files
and **two** `current-state.md` files — in each case the current 2026-09-12 (Peter) version plus an
**orphaned 2026-09-11 predecessor that was never archived** when the Peter version was recreated. All
four were renamed and moved to `Archive/` and the single new authoritative copy uploaded to root, so
root now holds exactly one of each. (Root cause: a prior recreate skipped the archive step; noted in
the AI Workforce Plan v2 §7 "master-index hygiene".)

**AI Workforce Plan reordered to v2.** The owner's decision to build Eugene before Content & Marketing
supersedes v1's locked decision #2. Filed `Outputs/2026-09-12_Plan_AI-Workforce_v2.md` (12139B):
Eugene is now **build #2** (live) with Content & Marketing next, and the old "IT/ops watcher" roster
slot is **absorbed into Eugene**. v1 is left in place (Outputs are immutable dated snapshots).

**Governance.** No live-system change was made and no email sent. All writes were to this database
(archive-then-recreate) and to Eugene's own KB + repo. No secrets recorded anywhere.

**Still open / next.** Companion `Wiki/00_INDEX.md` still to gain the Peter **and** Eugene rows
(deferred again this session due to the large-file round-trip limit; the authoritative `CLAUDE.md` §1
index already lists both). Minda to answer Eugene OI-1 (Workspace tenant shape) and confirm the
first-runbooks priority (OI-3), after which Eugene produces the Workspace multi-domain + ops-account
runbook and populates `Infra-Inventory/`.
