# Change log — 2026-09-27 — Catch-up: John's unattended-authority grant (2026-09-24), Nadia stood up then converted to a standalone KB (2026-09-24/26), Request-Inbox found and published (2026-09-27)

_Append-only dated session file. See `current-state.md` and `CLAUDE.md` §4._

## Why this entry exists

Routed to Alex as Hub `AWT-0119` (Victoria, for Minda, 2026-09-27): three days of coordination work
that touched this database had gone unlogged here specifically, because Victoria's own Drive
connector cannot list a folder by parent and so could not safely isolate the live
`current-state.md` from the many same-named sister/archived copies scattered across the estate
(the `HL-0051` wrong-file-write risk). This entry is the catch-up; `current-state.md` is refreshed
in the same session.

## 2026-09-24 — John's unattended-authority grant; Nadia stood up

**John (AI Properties Operations Assistant) authorised UNATTENDED** for Smartsheet and Google Drive
within his own §2 guardrails (Hub `AWT-0100`). Recorded in the group `CLAUDE.md` §1 (git commit
`384129e`).

**Nadia stood up as Amfa Sales & Ops** (Hub `AWT-0092`/`AWT-0093`) — at this point operating without
a standalone KB of her own.

## 2026-09-26 — Nadia converted to a standalone KB

**Nadia converted from an operating role into a full standalone KB** (Hub `AWT-0104`, built by
Eugene): Drive home `1dWtVYhQZlluqDiL4azeaEN2t4Y-be9xT`, git mirror `minda-ui/Nadia`. Group
`CLAUDE.md` §1 bumped (git commit `38bde73`), KB count 13→14. Nadia added to the Hub **Roster**, the
**Authority Register** (row 20) and **Achievements** (row 24).

## 2026-09-27 — Request-Inbox found, classified, and published as a group process

Same day Amfa's own inbox-report routine (FA) started posting into the shared
`Raw/Inbox-Reports/` staging folder, a coordination sweep found a second, undocumented item:
**`Raw/Request-Inbox/`**, holding one test file (`Minda_Request_2026-09-26-1400.md`,
`[SYSTEM TEST]`). It had already been classified correctly by the live Estate Index routine — an FC
technical build question → Anna — and held unexecuted per its own flag, but **no spec existed for
it anywhere in the estate** (Victoria's full-text search confirmed this). Victoria drafted
`Process-Request-Inbox_v1.md` and raised Hub `AWT-0117` asking Alex to confirm intent and ownership.

**Resolved the same day.** Alex confirmed this was co-designed with Minda on 2026-09-26, alongside
the previous day's mail-triage build — not a separate initiative needing its own watcher. Victoria's
draft's own open question (§5, "who watches it") was moot: the watcher already existed and had
already run six times — the same Estate Index routine that does mail-triage, reading
`Request-Inbox/` as a third source. Two genuine gaps her draft caught were folded into a **v3**
patch of the Index routine prompt: an archive-after-processing step (so the inbox doesn't
accumulate handled items), and four routing-map additions (Housekeeping → Alex, document-numbering
→ the Register itself, Commercial Properties/Holdings/SSAS-personal-data → the owning KB with
SSAS/pension → Minda directly, and an explicit ambiguous → Minda default).

**Published, with Minda's sign-off:** `Wiki/Process-Request-Inbox.md` **v1.0** — the corrected spec,
describing the mechanism as actually built. Victoria's original draft archived as superseded,
credited in the new doc's header. `00_INDEX.md` updated (article count 14 → 15; two other stale
references corrected in passing: the Document Register policy citation and the AI-employee count,
both of which had drifted). `CLAUDE-Rules.md` §0 gained a one-paragraph pointer. Hub `AWT-0117`
closed Done. A broadcast went to all eight AI employees (`AWT-0124`–`AWT-0131`) naming their own
slice of the routing map — Nadia's row also caught that she was never added to the Hub's own
"Assigned to" picklist despite joining the roster on 2026-09-26; fixed as part of the same
broadcast.

Also raised this same day: `AWT-0118` (Eugene) — this database's own `CLAUDE.md`/`00_INDEX.md` on
Drive has drifted from git since `AWT-0062` closed 2026-09-23 (missing John's grant and Nadia's
conversion, both recorded above); not yet actioned.

**Separately, same day, a different task entirely:** the Fishbone SSAS financial-documents
exemption (`FS-CR-0001`) bumped `Process-Document-Numbering-and-Filing.md` to **v1.5**, adding a
new §7b.8. Full detail of both the mail-triage/Request-Inbox build and the SSAS exemption lives in
Alex's own KB change-log (`change-log-2026-09-26-estate-outbound-send-identity.md` and its later
continuation) — not duplicated here in full; this entry covers only what changed in *this*
database.

**Explicitly out of scope for this database:** Konstantin/Anthill Homes work is not recorded here —
Anthill is out of group scope (`OI-2`) and is logged only in Anthill's own KB.

## Open after this session
- `AWT-0118` (Eugene) — Drive↔git `CLAUDE.md`/`00_INDEX.md` reconciliation, not yet actioned.
- `AWT-0113` (Rachel) — adopt v1.5's §7b.8 into her own charter/current-state.
- Anna has no unattended-receipt mechanism — surfaces every time the Index routine tries to route a
  Construction request to her; not yet resolved.
- Peter has no true "General/unclassified" catch-all grant in the Authority Register — every item
  that would default to him under Layer 1 has so far failed gate 3 on that basis.
- Minda still needs to paste the v3 Index-routine prompt over the live routine.
