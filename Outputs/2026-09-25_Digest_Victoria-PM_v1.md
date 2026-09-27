# Victoria — Afternoon Coordination Digest, 2026-09-25

**Sweep:** Afternoon Coordination Sweep, 15:00 UK. Charter re-read fresh this run (`CHARTER.md` core +
`Charter-Rules.md` Rules A–C). Every claim below checked against a direct read of the Hub sheets, Drive and
Gmail this run, not against this morning's digest or a Hub row's own account of itself (Rule C) — confirmed
live this run that **HL-0051 remains unresolved** (see 2c).

## 1. What moved this afternoon

- **AWT-0096 (Eugene) — Done, verified real.** The Amfa KB git-mirror sync gap is fixed: 29 live files
  (CLAUDE.md, README.md, Raw/, every Wiki article, every Outputs/ file incl. binaries) synced from Drive to
  `minda-ui/Amfa-Furniture-Ltd` main, byte-verified against Drive's own fileSize; the stale git-mirror line in
  CLAUDE.md §1 corrected and re-verified.
- **AWT-0101 (Eugene) — moved to Blocked.** Before building Alex a second, cross-login environment, Eugene
  checked first and found it isn't buildable from this account: `ops@fishboneproperties.co.uk` is a genuinely
  separate claude.ai account (19 environments / 16 triggers on this one, none Properties'/John's), and no tool
  here can create a session or read a routine list on a different account. Proposed a periodic manual-login
  audit instead. Put to Minda, who asked to hold while she runs her own tests — nothing built.

## 2. Still open / at risk from today's list

- **AWT-0099 (Minda)** — unmoved since 2026-09-24: John's new intake routine still needs pasting into the
  routines form on `ops@fishboneproperties.co.uk`. At risk of drifting.
- **AWT-0100 loose end (Minda)** — John's two live routine prompts still say "wait for the human tick"; only
  Minda can edit a routine prompt. Unchanged.
- **AWT-0090 (Eugene, High)** — still In Progress, due Tue 29 Sep. Tools are blocked but the underlying Entra
  grant (29 scopes, two reaching other people's shared data) is unrevoked. Needs a tenant admin, or your
  confirmation the tool block is enough for now.
- **HL-0051 (Alex) — re-verified this run, still not fixed.** AWT-0098 reads Done, but the group's own
  `open-issues.md` (id `19eKiZ5sh-QundSbvKhQxlMzTK1DPWHws`) is confirmed unchanged — still 38,077 bytes, still
  timestamped 2026-09-21T10:40Z. OI-18 is still missing from the group master index, more than half a working
  day after the row was closed on a write that landed in a different KB's file. Worth a direct nudge to Alex
  if it hasn't moved by tomorrow.
- Three open Alexey Glukhov emails (AWT-0091 "renamer", AWT-0097 "bank statement skill", AWT-0102 "FB Waste QB
  access") — all unchanged, all awaiting your call.
- Unchanged, lower urgency: AWT-0060 (Eugene, Blocked on an empty repo), AWT-0070 (Rachel, bulk financial
  intake, parked), AWT-0073/AWT-0074 (Rachel/Minda finance retrievals), AWT-0077 (Anna), AWT-0089 (Darius,
  Low), AWT-0094 (Rachel, Amfa umbrella finance draft), OI-13/15/16.

## 3. New items and where routed

- **AWT-0103 (John, High, Open) — new, self-raised, needs your decision.** Two live, differently-worded
  `CHARTER.md` files now sit in the Properties KB root, created 3 minutes apart this morning — verified
  directly: id `1R_1xucHOv6tvVjoOTpsUgw-bQWyNAV0T` (18,418 B, 06:22:50Z) and id
  `13NI6cTbxzqWn0LXDHSlDlHd4xTN0GvRC` (18,655 B, 06:25:42Z, the later one — an independently-worded rewrite
  covering the same AWT-0100 content, not referenced by any change-log). John flagged it and made no edit to
  either copy, correctly. **Needs you to pick the authoritative one so John can archive the other** before the
  next write to that file builds on the wrong base.
- **HL-0053 (Victoria, Low, Open) — logged this run, routed to Alex.** Help & Lessons has no duplicate-Ref
  guard (unlike Tasks & Requests' "⚠ Duplicate Task ID?" formula): two live rows both carry Ref "HL-0051"
  (Peter's, Resolved, from 2026-09-24; Victoria's, Open, from this morning). Not renumbered by this run — left
  for Alex, who owns that sheet.
- **No new adviser email or Raw hand-off.** Checked Gmail `ops@` and both Raw folders (Victoria's own and the
  group's) directly this run — nothing new beyond what's already tracked. One active third-party thread today
  (Watkins Solicitors, 38 Glebe Road remortgage completion) is Irina's own correspondence, already actioned by
  her directly — nothing for this desk.

## 4. Tomorrow's deadlines + what needs Minda

- **Nothing lands tomorrow (Sat 26 Sep) or Sunday (27 Sep)** — both are weekends and the fixed-deadline
  calendar is clear for both; no nudge required today.
- Next fixed dates: **Tue 29 Sep** (AWT-0090 Entra revoke due; Alexey-offset final review) and **Wed 30 Sep**
  (Alexey-offset respond/confirm) — both still several days out.
- **What needs you today, in priority order:**
  1. **AWT-0103** — pick the authoritative Properties `CHARTER.md` (new, High).
  2. **HL-0051** — the group open-issues.md write still hasn't landed; a nudge to Alex may be needed if it
     doesn't move by tomorrow.
  3. Two Properties-routine steps only you can do (AWT-0099 paste-in; AWT-0100 tick-gate edit) — both unmoved
     since yesterday.
  4. AWT-0090 tenant-admin action (due 29 Sep).
  5. Three open Alexey emails — your call on each.
  6. Amfa/Nadia go-live — two human steps (mailbox connection; umbrella finance confirm).

---
Full detail and the complete desk/delegated tracker: `Outputs/Victoria-Coordination-Schedule.md` (refreshed
this run).
