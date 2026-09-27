# Change log — 2026-09-22 (Victoria) — Anna, AI Construction Assistant, stood up

**Author:** Victoria (CEO's Assistant / AI Workforce Coordinator), on Minda's instruction.
**Session:** 2026-09-22 (interactive). Append-only.

## 1. What Minda asked
"I need a construction assistant. She'll assist me with construction questions. Her name will be Anna."
Decisions taken with Minda (AskUserQuestion + follow-ups):
- **Name:** keep **Anna** — there is to be only one Anna in the workforce; the human Anna (Friday
  business-processes meeting; anna@indome.co.uk) is a side person / external contact, so no real clash.
- **Remit:** **technical construction adviser** (not the Fishbone Construction Ltd company assistant).
- Standard §6a reach (reads/drafts/cites, never sends email, never writes to a system of record,
  **never certifies**). Repo name `minda-ui/Anna`.

## 2. What was built (all owner minda@)
- **Drive home** `Anna - AI Construction Assistant` (`1b0p62LxaX4C9H1cvK1R7K1KdX6-JcvoT`) with
  `Reference/` (`1onMLvmC4Kmo-x_oUDZ7LpNFV5_hU6rzt`), `Queries/` (`13m_xt-oZLTnCKUHu5h0QEBb5JypWFgaH`),
  `Raw/` (`18PkuxAxchaS0rEkgdexw2zOvzoidcJFA`), `change-log/` (`1SlHwIp_-DGEO3E1CWDsofMDYkt4LzwOt`).
- **`CLAUDE.md`** charter instantiated (10,180 B, byte-verified). Defines identity, remit, the
  **advise-not-certify safety spine (§3)**, the anti-collision lane vs Darius / the Construction KB /
  Eugene / Peter / Rachel / Victoria (§4), §6a reach (§5), structure (§6), way of working (§7).
- **Four control files** byte-verified: `current-state.md` (1303), `open-questions.md` (697, AQ-1/AQ-2),
  `source-register.md` (918, ASRC-1 Approved Docs / ASRC-2 CDM 2015), `processed-items-ledger.md` (590).
- **`Reference/` seed:** `Approved-Documents-Index.md` (2626, Parts A–S, England) and
  `Checklist-Drylining-and-Finishes.md` (2867, Fishbone's own trade).
- **Git mirror `minda-ui/Anna` created** (by Minda/Eugene, 2026-09-22).

## 3. Anna's lane (recorded so it isn't relitigated)
Workshop / machines / furniture = **Darius**. The company's own job records = **Fishbone Construction
Ltd KB** (Anna reads and cites, does not write to it). Anna owns **the building/construction knowledge
itself** — Building Regs, methods, materials, buildability — for Minda. Interactive; **no routines**.

## 4. Governance / scope
- New assistant built entirely in **its own new Drive home** (no sister-KB file edited). §6a-governed.
- The **advise-not-certify** boundary is Anna's defining safety rule: structural/fire/Building-Control/
  party-wall/gas/electrical decisions are **flagged and deferred** to the named professional; company-
  specific answers are grounded in the Construction KB and cited; unsourced claims are flagged, not stated.

## 5. Recorded in the estate (this session)
- **Group `CLAUDE.md` — git mirror (`minda-ui/fishbone-group`) updated and pushed** (branch
  `claude/awesome-knuth-p1ll7w`, commit `0fcdac2`), **byte-exact**: §1 sister-systems gains the Anna
  row (count **12 → 13**); the Hub-standard and Victoria roster lists, the top revision note and the
  footer all include Anna. This commit also reconciled the mirror (which sat at the 2026-09-12 state)
  up to the current Drive content (2026-09-20 Darius/Rachel/Victoria/John roster + Hub standard).
- **Drive source-of-truth master files handed to Eugene** (Hub **AWT-0062**): the large pre-existing
  Drive files — group `CLAUDE.md` (reconcile to the repo's updated copy), `Wiki/00_INDEX.md` (add
  Anna's "where each thing lives" row) and `current-state.md` (refresh) — are to be synced by Eugene
  from the canonical repo, rather than inline-rewritten here, to avoid any risk to a 569-line
  authoritative file. Repo↔Drive reconciliation is Eugene's infrastructure lane.
- Hub **Tasks & Requests**: **AWT-0060** (Eugene — install SessionStart hook on `minda-ui/Anna`),
  **AWT-0061** (Minda — grant Anna Drive read access to the Construction Ltd KB / Collab Space),
  **AWT-0062** (Eugene — sync the Drive group master-index files for Anna).

## 6. Follow-ups
- **Eugene:** (a) install the group SessionStart PDF-toolkit hook on `minda-ui/Anna`
  (`.claude/hooks/session-start.sh` + `.claude/settings.json`); (b) sync the Drive master-index for
  Anna — reconcile Drive group `CLAUDE.md` to the repo copy, add Anna to `Wiki/00_INDEX.md`, refresh
  `current-state.md`.
- Confirm Anna's Drive **read** access to the Fishbone Construction Ltd KB folder
  (`13IQdim0JhKmoQvJBmJmnMhreJqg55xTr`) so company-specific answers can be grounded (Anna AQ-2).
