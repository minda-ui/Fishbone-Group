# Change log — 2026-09-18 (later) — Rachel, AI Finance Assistant, created

_Session run by **Victoria** (CEO's Assistant / AI Workforce Coordinator) on behalf of Minda. Stood up the group's **sixth AI employee**, Rachel (Finance). Earlier the same evening: the inbound-triage tidy and the accounts-coverage check (own dated entries)._

## What was asked
Minda: *"Rachel will be our Finance AI assistant. Could you create it. Her role should include finance document archive, creation of budgets, helping me with QuickBooks, reconciliation of bank accounts."*

## Two owner decisions (AskUserQuestion, Minda, 2026-09-18)
1. **Authority over live finance systems** — Minda chose **"also post routine entries to QuickBooks"** (beyond draft-only). Implemented as a **bounded, owner-authorised exception** to `CLAUDE.md` §6a (which otherwise forbids any AI write to a system of record): Rachel may post only **routine, reversible, low-risk** entries — bank-feed matching, categorising transactions to the right account per an agreed rule set, and small reconciliation adjustments below an agreed threshold — every entry logged with its QuickBooks id, and run **attended dry-run-then-tick** until Minda confirms the unattended cutover (the Alex-ladder pattern). **Payments, invoices/bills, any money movement, chart-of-accounts/tax changes and all HMRC/Companies House filing remain human-only.**
2. **Finance document archive** — Minda chose **"organise what exists"**: Rachel maintains the existing **Finance archive** (SRC-31) and registers finance documents on the group **Document Register**; her KB holds knowledge/index, not a duplicate store (one-fact-one-home).

## What was built
- **Rachel's Drive KB** — `Rachel - AI Finance Assistant` (folder **`1pFz0CMXbHH1buLd2ptbAwTX2GXDsXseN`**, My Drive root):
  - `CHARTER.md` v1 (id `187Ke6gP7vd2tgOM2FqGYrUi6YRO4mQtC`, 6941 B) — role, the bounded §3 Reach (incl. the QuickBooks-posting exception + whitelist/blacklist + phased release), data-care (cite-not-copy payroll/banking), and working method.
  - `README.md`, `current-state.md`, `open-issues.md` (`RA-1`…`RA-4`).
  - Working folders: `Budgets/`, `Reconciliations/`, `QuickBooks/` (incl. the posted-entry log), `Archive-Index/`, `_unverified/`.
  - Connectors: Google Drive + Smartsheet + QuickBooks (Intuit) + Web. No Gmail (Rachel does not send).
- **AI Workforce Hub** — Roster row added for Rachel (workspace `4946803578693507`, Roster sheet `8154403007760260`, row id `544634764396420`), Status **Building**, Manager Victoria / owner Minda.

## Rachel's seeded open issues
`RA-1` QuickBooks connector company-scope unconfirmed (only Properties confirmed, Construction seen — call `company_info` first); `RA-2` the **FY2023 statutory-accounts gap** (Properties/Holdings/Waste — public at Companies House) found in this evening's accounts check; `RA-3` agree the QB routine-posting rule set + threshold + dry-run→unattended cutover before any live posting; `RA-4` create + seed the git mirror.

## Deferred / for Minda
- **Git mirror `minda-ui/rachel`** — Minda to create the empty repo; Victoria/Rachel then seeds it (`RA-4`).
- **Group `CLAUDE.md` §1 + §6a** — §1 sister-systems needs Rachel added (now **six** AI employees; the list also still owes Darius, the Workshop KB and Victoria), and **§6a needs the owner-authorised QuickBooks-posting exception recorded**. Both deferred: `CLAUDE.md` is ~58 KB, over the safe single-pass `create_file` edit ceiling (AX-3 / HL-0005) — for a session with a reliable large-file edit path.
- **Hub board Artifact** — a Rachel card/version bump on the interactive board is a follow-up (board refresh).
- Before any live QuickBooks posting: agree `RA-3` with Minda.

## Also updated this session
Group `current-state.md` (six AI employees; Rachel; Next-action items) and `Wiki/00_INDEX.md` (AI-workforce map row) — see those files.

## Governance
Creating a group-level AI employee is a coordinator action (as with Darius). The one novel element — Rachel's QuickBooks-posting authority — is an **explicit owner decision**, implemented bounded and reversible with a dry-run-first release, and recorded here and in Rachel's charter pending the §6a note. No money moved, nothing filed, no sister-KB source files touched, nothing trashed.
