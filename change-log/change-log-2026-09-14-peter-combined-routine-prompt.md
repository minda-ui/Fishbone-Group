# Change log — 2026-09-14 — Peter combined group-inbox routine prompt drafted and filed

_Append-only; newest notes at the top. See `CLAUDE.md` §4. No Raw processing; no live system of record touched — a drafting/filing task only (§6a)._

## Combined Peter routine prompt written (plan §9 C)

With the routing phase complete (all six sources live), authored the **single combined Peter routine** as a group Output: `Outputs/2026-09-14_Peter-Combined-Routine-Prompt_v1.md` (id `1FVCT6XZJHrYxmZOkawc0svx8DAquTSLz`, 8704 B). It contains:
- **The ready-to-paste prompt** Peter runs: reads the hub `ops@fishboneconstruction.co.uk`, dedups on Gmail thread-id, tags each item to its company by the stacked `Delivered-To` map (`[FC][FP][FM][FA][FH][FW]`; personal/SSAS flagged and never read), triages, coordinates per company (supplement to the FC/FP 07:00 KB routines; sole triage for FM/FA/FH/FW), drafts replies (`create_draft`, never sends), stages document candidates toward the group register (never writes the register itself), flags deadlines and bank-detail-change fraud risk, and writes a run summary into its `Inbox-Triage` staging.
- **Routine settings:** name, connectors (Gmail + Drive + Smartsheet, no send scope), and the two schedule entries — morning `45 6 * * *` / afternoon `0 14 * * *` UTC (shift +1h to `45 7`/`0 15` after the 26 Oct 2026 UK clock change).
- **§C charter delta** for the Peter KB (hub as single email source; six-source SRC entries) and the **§E** retire-old-routines note (the FC/FP 07:00 intake routines stay; only Peter's own per-company inbox runs retire).

Governance: the routine is **created by Minda via the `claude.ai/code/routines` form** (API-created routines lose connectors — `CLAUDE.md` §5); the charter delta is applied in the Peter KB (`minda-ui/Peter`), not from this database. The assistant drafted and filed only.

Tooling note: this Output was filed via `textContent` after a base64 paste corrupted at one token boundary (a stray space made it invalid) — the plain-text path avoids the base64 hazard for `£`-free files.

## Still pending (plan §9 D–E)
Minda creates the two schedule entries in the routines form and test-fires (verify per-company tagging, drafts-only, dedup, no personal/SSAS read); then retires Peter's superseded per-company routines. Plus the deferred **DKIM** spam-hardening task (plan §8): enable DKIM/SPF/DMARC on `fishboneproperties.co.uk`/`amfa.uk`/`fishbonewaste.co.uk`.

## Governance
Read + plan + Drive Outputs filing only (§6a). No routine created by the assistant; no live system of record written.
