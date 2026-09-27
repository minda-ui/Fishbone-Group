# Victoria — Afternoon Coordination Digest — 2026-09-26

**Routine:** Victoria — Afternoon Coordination Sweep (15:00 UK) · **Governance:** group `CLAUDE.md` §6a
Charter re-read fresh this run (`CHARTER.md` core + `Charter-Rules.md` Rules A–C). Every claim below is
checked against a direct read of the Hub sheets, Drive and Gmail this run (Rule C), not carried over from
this morning's digest or a Hub row's own account of itself.

---

## (a) What moved this afternoon

- **AWT-0104 (Eugene) — Done.** Nadia (Amfa Sales & Ops Assistant) converted from "adopts the Amfa KB" to a
  **standalone employee KB**, per Minda's decision. Verified directly: her new Drive home holds live
  `CHARTER.md`, `Charter-Rules.md` and `Charter-History.md`, all dated today; her old identity files at the
  Amfa Furniture Ltd KB root are archived (not deleted); the Amfa company KB itself is untouched.
- **AWT-0105 (Eugene) — Done.** Outbound-mailbox provisioning resolved for the three companies that needed
  it: `enquiries@amfa.uk` is now live (forwarding to `ops@fishboneconstruction.co.uk`, matching Nadia's
  intake design), and Construction's and Commercial Properties' addresses were already live/accepted.
- **AWT-0106 (Peter) — Done.** Routine same-day filing: a Stripe/Anthropic receipt (FP0000165) registered
  and filed. Low-risk, not independently re-verified beyond the row's own detail.
- **New pipeline stood up and run twice — AWT-0107 and AWT-0108 (Minda, Open).** An **Estate Mail-Triage
  Index** dry-run pipeline (new group Raw folders `Inbox-Reports/`, `Routine-State/`, `Request-Inbox/`,
  created 13:05–14:00 UTC today) ran its first two attended passes. Nothing was dispatched to anyone's Raw;
  both runs are awaiting Minda's tick to leave dry-run. See (c) for what the second pass surfaced.
- **A finance/adviser thread was handled but never logged (now fixed) — AWT-0109.** Alexey Glukhov sent
  Fishbone Waste FY2026 draft accounts to `minda@` Friday evening; Rachel replied in detail from `ops@`
  (five costed/disclosure points, a Word-doc rebuild list) and Alexey confirmed this morning it was what he
  needed. The exchange carried a live commitment with no Hub row — registered now, see (c).

## (b) What's still open / at risk from today's list

- **HL-0051 — unresolved for a FOURTH consecutive sweep.** AWT-0098 (Alex) still reads Done, still claims
  the group's `open-issues.md` gained OI-18; re-checked directly again this run — that file (id
  `19eKiZ5sh-QundSbvKhQxlMzTK1DPWHws`) is still 38,077 bytes, unchanged since 2026-09-21T10:40Z. This has now
  sat wrong across the whole of yesterday and today. See (d) — needs Minda directly, not another sweep.
- **AWT-0099 / AWT-0100 (Minda)** — the two Properties-routine steps on `ops@fishboneproperties.co.uk` are
  still unmoved, now three days since AWT-0099 was raised.
- **AWT-0090 (Eugene, High)** — M365 Entra scope revoke still In Progress, due Tue 29 Sep, unchanged.
- **AWT-0101 (Eugene/Alex)** — still Blocked, parked pending Minda's own tests, unchanged.
- **AWT-0091 / AWT-0097 (Alexey emails) and AWT-0102 (Alexey, FB Waste QuickBooks access)** — all still
  waiting on a human step (AWT-0102 specifically needs someone with QuickBooks admin rights to send the
  actual invite, now that Minda has ruled to grant it).
- **HL-0054 (Victoria's own stale routine-prompt checklist)** and **HL-0053 (Help & Lessons Ref collision)**
  — both unchanged, both still waiting on a Minda/Alex action respectively.
- Everything else tracked this morning (AWT-0060/0070/0073/0074/0077/0089/0094; HL-0042/0046/0049/0050) is
  unchanged, re-verified rather than assumed carried forward.

## (c) New items and where routed

- **Time-sensitive, surfaced by AWT-0108, not yet actioned by anyone: the "38 Glebe Road" remortgage.** A
  Fishbone Properties `info@` email ("Re: 38 Glebe road offer", sent 2026-09-25 10:12) confirmed the
  solicitor was told to go ahead and complete "today" — that was **Friday, two days before this sweep**.
  Nothing in any system checked this run confirms whether it actually completed. This is outside anything
  Victoria can check directly (no route to Irina or the solicitor) — routed straight to Minda as today's
  single most time-sensitive item, see (d).
- **AWT-0107/AWT-0108 (Minda) — the new Mail-Triage Index pipeline itself needs a decision to leave
  dry-run**, plus rulings on three points it raised: whether recurring known vendors (Stripe, utilities,
  banks) should be whitelisted so only genuinely unfamiliar senders escalate; how the 2 Ferndale Avenue
  dual-ownership item (Commercial Properties freehold / Properties leasehold) should be logged; and whether
  Smartsheet's own "Tasks changed" notifications belong in this pipeline at all.
- **AWT-0109 (Rachel) — registered this run under Rule B.** The Alexey/FBW-accounts thread above carries a
  real deadline Rachel already committed to: come back to Minda/RMT, then Alexey, on a £30,000
  intercompany-creditor classification question by **Monday 28 September**. Logged onto Tasks & Requests
  (Medium, due 2026-09-28) so it isn't sitting only in a mailbox thread; Minda/RMT's view is what Rachel is
  waiting on.
- No other new Raw hand-offs: Victoria's own Raw is empty; the group Raw only gained the three new
  scaffolding folders noted in (a), not a hand-off item.

## (d) Tomorrow's deadlines + what needs Minda

**Tomorrow (Sun 27 Sep) is a weekend — nothing fixed-deadline lands.** Next fixed dates: Mon 28 Sep (new,
below), Tue 29 Sep, Wed 30 Sep.

What needs Minda, in order:

1. **Check today whether 38 Glebe Road actually completed** — a direct word with Irina or the solicitor,
   rather than waiting for the next scheduled sweep. This is the day's most time-sensitive item.
2. **HL-0051 — nudge Alex directly, or write the OI-18 row into the group `open-issues.md` yourself.** Four
   sweeps of "still not landed" is long enough.
3. **Tick the new Mail-Triage Index pipeline out of dry-run** (or hold it), and rule on its three open
   points (whitelisting, Ferndale Avenue logging, Smartsheet-notification scope).
4. **New: give Rachel (and RMT's) view on the £30,000 FBW classification by Monday 28 Sep** (AWT-0109), so
   she can close the loop with Alexey on time.
5. **Two Properties-routine steps, unmoved three days**: paste in John's new intake routine (AWT-0099); drop
   the tick-gate on John's two live routine prompts for Smartsheet/Drive writes only (AWT-0100).
6. **Send the QuickBooks invite for Alexey (FB Waste)** — you've already ruled to grant it (AWT-0102); only
   a human with QBO admin rights can do the actual invite.
7. **AWT-0090 (Eugene, High)** — tenant-admin action on the Entra scope grant, due Tue 29 Sep.
8. **Two other open Alexey emails (AWT-0091, AWT-0097)** — still your call on each.
9. **AWT-0101 (Eugene/Alex)** — still parked pending the tests you said you'd run; no rush.
10. **HL-0054 (Low, no rush)** — the Sweep routine prompts need a refresh next time you're in the routines
    form.
11. **Amfa/Nadia go-live** — one human step left now `enquiries@amfa.uk` is connected: confirm the umbrella
    finance approach once Rachel's AWT-0094 draft is ready.

Full standing list: `Outputs/Victoria-Coordination-Schedule.md` (refreshed this run).
