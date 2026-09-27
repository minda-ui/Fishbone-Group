# Change Log — 2026-09-07 — Master-index catch-up

_One dated file per session (Properties Ltd style). Present-state snapshots live in the four standing control files (`current-state.md`, `open-issues.md`, `external-source-register.md`, `processed-items-ledger.md`); this file is the history of what changed this session and why. See `CLAUDE.md` §4._

| Field | Value |
|-------------------|-------------------------------------------------|
| Session | 2026-09-07 (later) — master-index catch-up |
| By | Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk |
| Trigger | Actioning the first live run of the weekly **Group master-index sync** routine (`Outputs/2026-09-07_Digest_Group_v1.md`), which raised OI-10, OI-11 and OI-12. Owner decision this session: **catch the index up and take the routine live**; **ignore OI-12** (leave recorded, route to Minda/RMT, no action). |
| Scope | Group side only. Read-only on all sister KBs, the Loans Wiki, Smartsheet, QuickBooks and the Finance archive. No live-system writes; nothing trashed (archive-then-recreate throughout). |

## What changed

1. **Indexed the Fishbone Holdings Ltd Knowledge Base** as a sister system (closes OI-10, part 1).
   - `CLAUDE.md` §0 read-first table + §1 sister-systems table: added the Holdings KB as **SRC-37** (root `1sZJ4frIcVqsgON4eewAqmdKq5YEXInvu`; git mirror `minda-ui/Fishbone-Holdings-Ltd`); intro/count updated to "eight other knowledge systems".
   - `Wiki/00_INDEX.md` "where each thing lives" map: added the Holdings KB row.
   - `external-source-register.md`: new **SRC-37** row.
   - `Org-Fishbone-Holdings-Ltd.md`: recorded the Holdings KB as the canonical home for Holdings records; corrected the stale "no per-company Knowledge Base" line.

2. **Recorded the executed Holdings→Properties interest waiver** (closes OI-10, part 2; closes `CLAUDE.md` §7 open question 2). Verified against the Holdings KB audit trail before recording.
   - Terms: interest on the Holdings→Properties loans **waived 1 Oct 2026 – 30 Sep 2028**; contractual rates (3.8% / 6%) resume 1 Oct 2028. Instruments: letter of variation **FH0000012**, acceptance minute **FH0000013**, Annex A of **FH0000009** signed by both shareholders. Standing orders £897.00 + £100.00/month **cancelled from 7 Sep 2026**; a manual September-period interest amount (~£1,994) is due by 31 Oct 2026; to be disclosed in both companies' FY2027 accounts.
   - Written into `Org-Fishbone-Properties-Ltd.md` (open-question closure + `[S21]` bullet + History) and `Org-Fishbone-Holdings-Ltd.md` (Loans section; open questions resolved), and summarised as a one-liner in `CLAUDE.md` §7 and `00_INDEX.md`.

3. **Corrected two stale sister-system descriptions** (closes OI-11).
   - Construction KB (SRC-08) is no longer a "Skeleton" — it is a working database (live `CLAUDE.md` v3, populated Wiki, dated `Outputs/` change-logs, daily email-intake automation). Refreshed in `CLAUDE.md` §1 and `external-source-register.md` SRC-08.
   - Commercial Properties KB (SRC-10) no longer runs a root `CHANGELOG.md` (retired 2026-09-05 for dated `Outputs/change-log-*.md` files); `CLAUDE.md` grew to 32 KB. Refreshed in `CLAUDE.md` §0 CHANGELOG pointer and `external-source-register.md` SRC-10.

4. **Took the weekly digest routine live.** `CLAUDE.md` §5: moved "Group master-index sync" from proposed to **live** (weekly, Mondays 07:00 UK; read-only on sisters; writes the group digest + control files; raises Open Issues; does not auto-edit the index or `Org-*` articles). Note retained: the routine was created via the `claude.ai/code/routines` form, not the API (the API `connectors` parameter is unavailable for this org).

5. **OI-12 recorded, not actioned** (owner instruction). The Loans-Wiki finding — a proposed Construction→Holdings dividend / D Macdonald loan-assignment dated 31/05/2025 that Construction's own ledger does not support — is **left with Minda/RMT**. No accounting treatment to be actioned or backdated; the issue stays in `open-issues.md` as the audit trail, not deleted.

## Files touched (all GROUP side; archive-then-recreate, byte-verified)

| File | Change | Verify |
|------|--------|--------|
| `CLAUDE.md` | SRC-37 added; Construction/Commercial rows refreshed (OI-11); §5 routine live; §7 Q2 closed + waiver one-liner; OI-10/OI-11 recently-resolved | 38447 B |
| `Wiki/00_INDEX.md` | Holdings KB row; waiver one-liner; recent-changed entry | 11726 B |
| `Org-Fishbone-Properties-Ltd.md` | Waiver recorded as executed | 26276 B |
| `Org-Fishbone-Holdings-Ltd.md` | Holdings KB canonical home; waiver executed; open Qs resolved | 16324 B |
| `open-issues.md` | OI-10, OI-11 → Resolved; OI-12 left Open with owner-instruction note | 24603 B |
| `external-source-register.md` | SRC-37 added; SRC-08/SRC-10 refreshed (OI-11) | 22111 B |
| `current-state.md` | Snapshot refreshed: 37 sources, 2 open issues (OI-8, OI-12), routine live | 4220 B |

## Sources / issues

- New source: **SRC-37** (Fishbone Holdings Ltd Knowledge Base). Total registered sources: **37**.
- Issues: **OI-10 resolved**, **OI-11 resolved**. **OI-12 open** (with Minda/RMT, out of scope). **OI-8 open** (furniture-workshop lease). OI-1 to OI-7 and OI-9 remain resolved.

## Verification

Every group control-file / article change was archived (never trashed) and recreated, verified by exact byte-size (uploaded `fileSize` == local `wc -c`) and 0 U+FFFD; `£` and the Cyrillic `С` in "Сlassifier" preserved in `external-source-register.md`. The five earlier files and the two standing files uploaded this turn are now internally consistent (SRC count 37; OI-10/OI-11 resolved; routine live).

## Awaiting Minda

(a) OI-8 — the furniture-workshop lease + the machines' legal title; (b) OI-12 — Minda/RMT decision on the Macdonald loan/dividend document (out of this database's scope); (c) the group **north-star goal** for dashboard §3.
