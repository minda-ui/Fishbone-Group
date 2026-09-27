# Victoria — Morning Coordination Digest, 2026-09-25

**Sweep:** Morning Coordination Sweep, 08:00 UK. Charter re-read fresh this run (§0 requirement: CHARTER.md core + Charter-Rules.md Rules A–C). Every claim below checked against a direct read of the Hub sheets, Drive and Gmail this run, not against yesterday's schedule text or any Hub row's own account of itself (Rule C) — one live discrepancy was caught doing exactly that (see 2c below).

## 1. Due today / overdue
- **Nothing fixed-deadline falls today.** Checked the schedule's fixed-deadline calendar (§3) and today's Hub activity directly. Today is the **weekly-rhythm Friday**: strategic/backlog review + this short weekly digest.
- Standing watch, no urgency: **OI-13** (Amfa workshop reorg, research only).
- **AWT-0090 (Eugene, M365 over-privilege, High)** — not due until **2026-09-29**, but flagging early because it's the largest open ask: the connector's outbound/mail tools were blocked within an hour of the flag, but the underlying Entra grant (29 delegated scopes, including two reaching other people's shared mail/calendar) is unrevoked. Needs either a tenant admin to revoke consent in Entra ID, or Minda's confirmation that the tool-level block is sufficient for now.

## 2. What moved since the last sweep (2026-09-24 afternoon → now)
It was an unusually active overnight window — mostly Alex working through Minda's 2026-09-23 Estate Authority rulings and Eugene/Victoria closing out the Amfa/Nadia build.

**a. Closed:**
- **AWT-0083 to AWT-0088** (Alex, six Estate Authority rulings) — all Done: Victoria's routines removed from `ops@fishboneconstruction.co.uk` (it's Peter's alone now); new-employee 3-step sequence (propose→approve→build) folded into Eugene's and Victoria's charters; same-day Hub-trail rule and sole ops@ ownership folded into Peter's charter; Darius's Workshop sheet renamed to "Workshop Document Log (local mirror)" (same ID, so nothing broke); Anna's charter wording tightened.
- **AWT-0092/0093** — Amfa Sales & Ops department: Nadia (Amfa Sales & Ops Assistant) built and registered. **AWT-0092 itself stays In Progress** until Nadia actually trades — still pending: `enquiries@amfa.uk` mailbox connection (human step) and the umbrella finance treatment (AWT-0094, Rachel, still Open).
- **AWT-0099/0100** did NOT both close — see 2b.

**b. Still open / in progress, needing Minda's action:**
- **AWT-0099 (Open)** — John's new daily-intake routine still needs Minda to paste it into the routines form on the **`ops@fishboneproperties.co.uk`** login (the Properties routines run on a different login from the group's, so nobody else can do this step — see OI-18 below).
- **AWT-0100 (Done, but with a loose end)** — Minda's ruling giving John unattended Smartsheet+Drive authority is now folded into his charter, but the **live routine prompts on `ops@fishboneproperties.co.uk` still say "wait for the human tick"** — no session can edit a routine prompt, so John's routines keep stopping for ticks until Minda edits them (removing the tick for Smartsheet/Drive writes only; keep it for the outward-email step).
- **AWT-0096 (Eugene, Open)** — git-sync gap on the *existing* Amfa Furniture Ltd KB mirror, found during the Nadia build. Not yet fixed.
- **AWT-0101 (Eugene, Open)** — building Alex a second, attended, read-only Claude Code environment on the Properties login so the OI-18 blind spot (below) can at least be audited periodically. In progress, Minda already approved the approach 2026-09-25.

**c. A discrepancy caught by direct verification (Rule C), not carried at face value:**
- **AWT-0098** reads **Done** ("Added AX-15 to open-issues.md... 25,452 B → 27,459 B"), closing the task to add **OI-18** (Fishbone Properties' cloud routines run under `ops@fishboneproperties.co.uk`, invisible to a group-login session — confirmed 2026-09-24, account-wide routine list = 16, none of them Properties'/John's) to the **group's** `open-issues.md`.
- A direct read this run shows the **group's own** `open-issues.md` (Drive id `19eKiZ5sh-QundSbvKhQxlMzTK1DPWHws`, in the group KB root) is **unchanged since 2026-09-21, still 38,077 bytes** — no OI-18, no AX-15.
- A file named `open-issues.md` of exactly 27,459 bytes *was* created today (06:23 UTC) — but in a **different folder** (`1QGc0EqThFDAIP7QYvGY1DEhliSbMTGNe`), which reads as **Alex's own KB's** open-issues.md, not the group's. The byte-count matches his claim; the destination doesn't.
- **Net effect: the group master index still does not carry OI-18.** Logged as **HL-0051** (Help & Lessons, High, owner Alex) so the write gets redirected to the right file rather than re-closed on trust. Not a big deal in itself, but it's the second report this week of a Hub row reading Done without the underlying write landing where asked (see also HL-0049, Peter's git-mirror drift) — worth Minda knowing the pattern exists.

## 3. New items and where routed
- **AWT-0102 / new Alexey Glukhov email ("Fishbone Waste FY2026", 2026-09-24 21:46 UTC)** — Alexey has asked, in one line, to be given **QuickBooks access to Fishbone Waste**. This is a request for an external adviser to get a login on a live system of record, which is squarely outside what any seat can grant on its own. Routed to Rachel's Raw (hand-off note filed, byte-verified) and logged as AWT-0102, High, Open. **Not actioned — nothing granted, nothing replied.**
- **HL-0051** — the OI-18 misfile above, routed to Alex.
- Checked and empty: Victoria's own Raw, the group Raw (aside from the already-logged 2026-09-24 owner note behind OI-18), and the group `Raw/Paper Mail/` intake.

## 4. What needs Minda today
1. **New — Alexey's QuickBooks-access request for Fishbone Waste (AWT-0102).** Fishbone Waste is Dormant; worth checking whether he already has what he needs from the FY2024/FY2025 accounts sent yesterday before any access is granted. Your call on whether/what to grant.
2. **AWT-0090 (Eugene, M365, due 29 Sep).** Tools are blocked; the Entra scope grant (29 scopes, two reaching other people's shared data) is not revoked. Needs a tenant admin in Entra ID, or your confirmation the tool block is enough for now.
3. **Two Properties-routine human steps on the `ops@fishboneproperties.co.uk` login**, both blocked on you specifically because that's a different login from this one: (a) paste in John's new intake routine (AWT-0099); (b) edit John's two live routine prompts to drop the tick-gate on Smartsheet/Drive writes only (AWT-0100).
4. **Amfa/Nadia go-live** — two human steps only: connect `enquiries@amfa.uk`, and confirm the umbrella finance approach once Rachel's AWT-0094 draft is ready.
5. **Three open Alexey threads awaiting your steer on engagement**, none actioned: AWT-0091 ("renamer" procedure), AWT-0097 ("Bank statement skill"), and the new AWT-0102 above.
6. For awareness only, no action needed: HL-0051 (open-issues.md misfile, Alex's to fix) and HL-0049 (Peter's git-mirror drift, Low) — a small pattern of "Done" rows not matching the underlying write, worth a word to the team if it keeps recurring.

---
*Standing coordination digest for Victoria, the Fishbone Group CEO's Assistant. Full detail and the "desk vs delegated" breakdown live in `Outputs/Victoria-Coordination-Schedule.md` (refreshed this run).*
