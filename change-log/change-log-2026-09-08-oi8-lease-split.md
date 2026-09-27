# Change Log — 2026-09-08 — OI-8 resolved (furniture workshop lease + machine ownership) and OI-13 opened

_One dated file per session (Properties Ltd style). Present-state snapshots live in the four standing control files (`current-state.md`, `open-issues.md`, `external-source-register.md`, `processed-items-ledger.md`); this file is the history of what changed this session and why. See `CLAUDE.md` §4._

| Field | Value |
|-------------------|-------------------------------------------------|
| Session | 2026-09-08 — OI-8 lease/asset split |
| By | Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk |
| Trigger | Owner (Minda) provided the answer to open issue **OI-8** across four messages: (1) the furniture-workshop lease is in AMFA Furniture Ltd's name and the machines are on Construction's balance sheet; (2) the workshop and the warehouse-with-office are two different leases; (3) the second (warehouse+office) lease is in Fishbone Construction Ltd's name; (4) the £449,536 leasehold improvements are apportioned 50/50 per lease. Owner chose to **resolve OI-8 and open a tracker (OI-13)** for the pre-sale asset realignment. |
| Scope | Group side only. No sister-KB / Loans-Wiki / Smartsheet / QuickBooks / Finance-archive writes; no live-system writes; nothing trashed (archive-then-recreate throughout). No accounting treatment actioned or backdated; nothing filed with Companies House or HMRC. |

## The OI-8 answer (owner-confirmed)

| Item | Held by / sits on |
|---|---|
| Furniture **workshop** lease | **Amfa Furniture Ltd** (in its name) |
| **Warehouse + office** lease | **Fishbone Construction Ltd** (a separate, second lease) |
| **Woodworking machines** | **Fishbone Construction Ltd** — on its balance sheet |
| **Leasehold improvements £449,536** (FY2025, on Construction's books) | Apportioned **50/50 per lease — £224,768 workshop / £224,768 warehouse+office** |

The manufacturing trade continues to run through Fishbone Construction Ltd's bank account (R&J Machinery, Häfele, Interfit purchases; MacDonald Joinery receipts), consistent with the earlier bank-data reading recorded under OI-8. The residual cross-entity mismatch — the workshop is leased to Amfa, but its machines and half the improvements (and the trade) sit on Construction — is left for RMT and carried forward as OI-13.

## What changed

1. **OI-8 marked Resolved** in `open-issues.md`, with the four facts above recorded in the resolution note and the earlier investigation history retained beneath it.
2. **OI-13 opened** in `open-issues.md` — a tracker (with Minda/RMT) for realigning the workshop assets and trade with the Amfa entity ahead of any future sale: legal title / transfer of the woodworking machines to Amfa; apportionment and accounting home of the leasehold improvements; and which entity invoices the AMFA order-tracker customers. Explicitly no accounting or Companies House/HMRC action by this database.
3. **`Org-Amfa-Furniture-Ltd.md`** — added a Key fact recording the lease/asset split; updated the "which entity owns the workshop lease" open question to resolved; added source [S13] (owner instruction 2026-09-08) and a History entry. Last reviewed → 2026-09-08.
4. **`Org-Fishbone-Construction-Ltd.md`** — updated the FY2025 observation and the OI-8 bank-data bullet; resolved the two related open questions (workshop lease / machine ownership; whether the £449,536 improvements are the workshop or 145 High Street East — they are the furniture premises, split 50/50, not 145 High Street East); added source [S24] (owner instruction 2026-09-08) and a History entry. Last reviewed → 2026-09-08.
5. **`current-state.md`** — snapshot refreshed: open issues now **OI-12 and OI-13** (OI-8 resolved); last session and next-action lines updated.

## Files touched (all GROUP side; archive-then-recreate / create, byte-verified)

| File | Change | Verify |
|------|--------|--------|
| `open-issues.md` | OI-8 → Resolved (four facts); OI-13 opened | see verification |
| `Org-Amfa-Furniture-Ltd.md` | Lease/asset split Key fact; open question resolved; [S13]; History | see verification |
| `Org-Fishbone-Construction-Ltd.md` | FY2025 observation + OI-8 bullet updated; two open questions resolved; [S24]; History | see verification |
| `current-state.md` | Snapshot: open issues OI-12 + OI-13; last session / next action | see verification |

## Sources / issues

- No new external source registered (the answer is an owner instruction, cited in the two articles as [S13]/[S24] and recorded here). Total registered sources unchanged: **37**.
- Issues: **OI-8 resolved**; **OI-13 opened** (with Minda/RMT). OI-12 remains open (with Minda/RMT, out of scope). OI-1 to OI-9 now all resolved; OI-10/OI-11 resolved 2026-09-07.

## Verification

Every group control-file / article change was archived (never trashed) and recreated, verified by exact byte-size (uploaded `fileSize` == local `wc -c`) and 0 U+FFFD. The `£` sign is preserved throughout. The four files are internally consistent: OI-8 shows Resolved and OI-13 Open in `open-issues.md`; `current-state.md` lists exactly OI-12 and OI-13 as open; both articles carry the same lease/asset split and the OI-13 forward-reference.

## Awaiting Minda

(a) **OI-13** — pre-sale realignment of the workshop assets/trade with Amfa (machine legal title, leasehold-improvement apportionment, who invoices AMFA customers); (b) **OI-12** — Minda/RMT decision on the Macdonald loan/dividend document (out of this database's scope); (c) the group **north-star goal** for dashboard §3.
