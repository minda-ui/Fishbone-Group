# Change log — 2026-09-07 — Operations Dashboard v1 (first Output)

_One dated file per session (Properties Ltd model). Newest notes at the top; append-only. Current state lives in the four standing files in the root._

- **By:** Claude (AI assistant), on behalf of minda@fishboneconstruction.co.uk
- **Session:** 2026-09-07

---

## Built the group Operations Dashboard — the database's first Output

- **Trigger:** Minda: "We need to start creating an .html Operations Dashboard. It should collect data from all companies and display: 1. main financial figures 2. outstanding items 3. Main direction to goal (needs creating)." Decisions taken by AskUserQuestion: goal framework = synthesize from existing KB targets; delivery = Drive Output + private Artifact; data basis = statutory accounts plus live Properties figures where reliable.
- **Deliverable:** `Outputs/2026-09-07_Dashboard_Operations_v1.html` (Outputs folder), a single self-contained HTML page — no external runtime dependencies (Google Fonts only), theme-aware, responsive, print-friendly. Also published as a **private** Artifact (https://claude.ai/code/artifact/6d9a8ad0-f42f-4fd4-9783-12cfb7b9ca9a). This is the group KB's **first Output** (`Outputs produced` 0 → 1).
- **Content, three sections + an at-a-glance strip:**
  1. **Main financial figures** — per-entity cards/table (turnover, profit/(loss), net assets, basis) for all seven entities from the FY2025 statutory accounts; three bar charts (net assets, profit/loss, turnover); a dated Properties "live management view" (register 01/09/2026 + QuickBooks FY25/26); an aggregate net-assets figure (£1.39m) shown with a **not-consolidated** caveat.
  2. **Outstanding items** — OI-3 to OI-8 from `open-issues.md` plus a finance-watch flag (FY2025 filing unconfirmed), as severity-striped cards.
  3. **Direction to goal** — a **newly created** four-strand group framework synthesized from targets already in the KB: owner income (target vs last-reported, with progress bars), portfolio growth, group-debt reduction, and systemise-&-exit. Flagged a first draft for Minda to refine.
- **Data provenance:** every figure is compiled from the `Org-*.md` articles, `CLAUDE.md` §7 and `open-issues.md` (all current after the 2026-09-06 incorporation-batch work); Properties live figures and the 18 Aug 2026 owner-income check-in are dated inline. A footer records sources and governance.
- **Governance respected:**
  - **No group lending/debt total** is published — the three loan lists disagree (OI-6 open); the dashboard shows per-company bank-loan anchors and says so explicitly.
  - The FY2025 accounts are **For Approval** and may be unfiled → the dashboard carries a CONFIDENTIAL banner and is kept **private** (Drive Output + private Artifact, not shared).
  - Read-only snapshot; **no live system was written to**; no consolidated accounts implied (single-entity figures, intercompany not eliminated).
- **Fidelity:** the Drive `.html` was uploaded and verified by exact byte-size match (27,877 bytes). One rendered look was taken; a charting bug (value labels colliding on negative/max bars) was fixed by moving values into a dedicated sign-coloured column before publishing.
- **Standing files updated (archive-then-recreate):** `current-state.md` (`Outputs produced` 0 → 1; Archived-items tally 107 → 108 for this recreate; Next-action note the dashboard and the goal-framework refinement awaiting Minda). Previous `current-state.md` archived as `current-state (archived 2026-09-07 0902, superseded by operations-dashboard v1).md`. No ledger row (an Output is not a Raw item); no Open Issues changed.
- **Next / open for Minda:** set the real group **north-star goal** so §3 becomes an agreed plan rather than a synthesis of existing targets; then the dashboard can be refreshed (v2) and, once the FY2025 accounts are confirmed filed, shared beyond the owner if wanted.
