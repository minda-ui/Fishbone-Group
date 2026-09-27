# Afternoon Digest — Victoria — 2026-09-24

**Charter re-read fresh this run** (`CHARTER.md` + `Charter-Rules.md` + `change-log.md`, verified live on
Drive). Rules A–C applied; every claim below is checked against a direct Smartsheet/Drive/Gmail read this
run (Rule C), not carried over from this morning's digest or schedule.

## (a) What moved this afternoon

- **Amfa Sales & Ops department stood up in full.** Victoria's proposal (AWT-0092, this morning) was
  approved by Minda and Eugene built the new AI employee **Nadia — Amfa Sales & Ops Assistant** (AWT-0093,
  confirmed **Done** by a direct read of her live `CHARTER.md` on Drive — authoritative from today).
  Registered on the Hub Roster, `minda-ui/Nadia` git repo live, Peter's Amfa-enquiry routing unblocked
  (AWT-0095). Four follow-on Hub rows now track the loose ends: AWT-0094 (Rachel, umbrella finance
  treatment for the test-run sales), AWT-0095 (Peter, routing, unblocked), AWT-0096 (Eugene, a git-sync gap
  on the *existing* Amfa Furniture Ltd KB mirror found during the build). **Not yet live**: needs
  `enquiries@amfa.uk` connected (human step) before any enquiry actually reaches Nadia.
- **AWT-0090 (Eugene, M365 over-privilege) — partial action.** Minda blocked six outbound/mail tools on the
  connector today within the hour of this morning's flag. **Not fully resolved**: the underlying Entra
  scope grant (29 delegated scopes, including two reaching other people's shared mail/calendar) is
  unchanged — a tool block doesn't revoke it. Still needs a tenant admin.

## (b) Still open / at risk from today's list

- **AWT-0091 (Alexey "renamer" email)** — unchanged, still Open, still awaiting Minda's call.
- **AWT-0087 (Darius, Blocked)** — unchanged, still needs Minda to rename a Smartsheet in the UI.
- OI-13, OI-15, OI-16 — all unchanged, still Open (group `open-issues.md` confirmed unchanged since 21 Sep
  10:40).
- Nothing on today's list is overdue; the M365 item (AWT-0090) is the one genuinely still at risk until a
  tenant admin acts.

## (c) New items and where routed

- **New Alexey Glukhov email, "Bank statement skill"** (Gmail thread `1a0d2b84b6f8c3cd`, 09:21 UTC today,
  to `minda@fishbonedrylining.co.uk`) — arrived after this morning's sweep. Describes a five-step
  bank-statement-to-Excel process/skill; the second unusual-shaped Alexey email in two days. Routed to
  Rachel's Raw with a hand-off note and logged as **AWT-0097**. Not actioned.
- Victoria's own Raw, the group Raw, and the group `Raw/Paper Mail/` intake all checked directly this run —
  empty.

## (d) Tomorrow's deadlines + what needs Minda

- **Fri 25 Sep (tomorrow)**: no fixed Hub deadline falls tomorrow (checked directly). It is the Friday
  weekly-rhythm slot — strategic/backlog review + short weekly digest. Next fixed dates: Tue 29 Sep
  (Alexey offset, final review) and Wed 30 Sep (Alexey offset, respond/confirm) — the Tue 29 nudge lands on
  the ordinary weekday Mon 28 Sep, not a weekend adjustment.
- **Needs Minda:**
  1. AWT-0090 — a tenant admin to revoke the M365 Entra consent (Enterprise applications > Permissions), or
     confirmation the tool-level block is enough for now.
  2. Amfa/Nadia go-live — connect `enquiries@amfa.uk`, and confirm the umbrella finance approach once
     Rachel's AWT-0094 draft is ready.
  3. Two open Alexey emails (AWT-0091, AWT-0097) — your call on whether/how to engage.
  4. AWT-0087 — rename Smartsheet `838802392352644` in the UI and confirm the proposed name.
  5. Carried, not urgent: AWT-0073, AWT-0074, AWT-0067/HL-0047.

---
*Full detail and the complete desk/delegated tracker: `Outputs/Victoria-Coordination-Schedule.md`
(refreshed this run).*
