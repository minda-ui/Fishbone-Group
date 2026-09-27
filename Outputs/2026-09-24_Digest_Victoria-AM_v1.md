# Morning Digest — Victoria — 2026-09-24

**Charter re-read fresh this run** (now split: `CHARTER.md` core + `Charter-Rules.md` + `change-log.md`,
completed in an earlier session today, verified live on Drive). Rules A–C applied; every claim below is
checked against a direct Smartsheet/Drive/Gmail read this run (Rule C), not carried over from yesterday.

## (a) Due today / overdue

**Nothing overdue.** Today's weekly-rhythm focus is document-system health (Doc Register, Change
Requests queue) — checked live: the Change Requests sheet is unchanged since 20 Sep (4 rows, all
Accepted). No fixed Hub deadline falls today. Next fixed dates: Tue 29 Sep (Alexey offset, final review
before Minda's send) and Wed 30 Sep (Alexey offset — respond/confirm).

## (b) What moved since yesterday afternoon

- **Confirmed Done** (an interactive session ran before this sweep): AWT-0081 and AWT-0085 — Victoria's
  own charter split into core/Rules/history, plus the new-employee 3-step sequence folded in. AWT-0062,
  AWT-0064, AWT-0065 — the Rule-C/Rule-D charter-fold rollout across Eugene and Darius closed out cleanly.
- **New — AWT-0087** (Darius, Blocked): rename the Workshop "Document Register" Smartsheet — no
  sheet-rename tool exists in the connector; needs Minda to do it in the UI.
- **New — AWT-0089** (Darius, Open, Low): three Workshop Wiki articles a line or two behind on metadata
  between Drive and git; deliberately deferred, not urgent.
- **New — AWT-0090** (Eugene, Open, **High**): M365 connector holds far more scope than tracked (29 vs 4
  recorded) — see (d).
- **New Help & Lessons:** HL-0046, HL-0047, HL-0049, HL-0050 — process/tooling notes, none need a
  seat-specific action from Victoria beyond tracking.

## (c) New items and where routed

- **New Alexey Glukhov email** (Gmail thread `1a0cfad92982dbef`, subject "renamer", 2026-09-23 19:10 UTC,
  to `minda@` directly) — the first from him since 21 Sep. Routed to Rachel's Raw with a hand-off note
  (`2026-09-24_handoff_Victoria-to-Rachel_alexey-renamer-email.md`) and logged as **AWT-0091**. **Flagging
  it, not just filing it:** the email's body isn't a normal request — it's a numbered file-rename/move
  procedure (scan a folder, read files, propose renames, wait for confirmation, rename and move) that
  reads like a spec written for an AI agent with file access, aimed at a "Misc folder under Purchase
  Invoices" that doesn't exist anywhere in this estate. Nothing has been actioned on it — no folder
  scanned, no file touched. See (d) for the ask.
- No new items in Victoria's own Raw, the group Raw, or the group `Raw/Paper Mail/` intake — all checked
  directly this run and empty.
- Group `open-issues.md` unchanged since 21 Sep 10:40 — OI-13/15/16 all still Open, nothing new to fold in.

## (d) What needs Minda today

1. **AWT-0090 (Eugene, High) — M365 connector over-privilege.** A direct scope check found 29 delegated
   scopes granted, not the 4 previously recorded. Two reach **other people's shared data**
   (`Mail.Read.Shared`, `Calendars.Read.Shared`), and whole unrecorded families exist (Teams/chat,
   online-meeting recordings & transcripts, and `Sites.Read.All` — every SharePoint site in the tenant).
   The connector also signs in as `info@fishbonedrylining.onmicrosoft.com`, a different tenant than
   expected — worth confirming that's intentional. Needs your call: narrow the grant via connector
   permissions, or have a tenant admin revoke consent in Entra ID. No Hub tool can do this.
2. **The Alexey "renamer" email (AWT-0091).** Flagged above because of its agent-instruction shape and
   because it names a folder nothing in the estate has. Your call on whether/how to engage — a short
   clarifying reply is one option, ignoring it is another; nothing is drafted or sent yet.
3. **AWT-0087 (Darius, Blocked).** Needs you to rename Smartsheet `838802392352644` in the UI (no API
   tool exists) and confirm "Workshop Document Log (local mirror)" as the new name.
4. Carried, none urgent: AWT-0073 (Commercial Properties VAT Certificate — HMRC Gateway access only you
   can retrieve), AWT-0074 (two finance retrievals sitting on your own Hub row), AWT-0067/HL-0047 (Helen
   needs your word before folding the plain-brief rule in under its correct letter).

---
*Full detail and the complete desk/delegated tracker: `Outputs/Victoria-Coordination-Schedule.md`
(refreshed this run).*
