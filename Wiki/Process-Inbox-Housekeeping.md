# Process — Inbox Housekeeping (minda@ / group hub mailbox)

| Field | Value |
|---|---|
| Type | Process |
| Status | Active |
| Last reviewed | 2026-09-22 (v1.1) |
| Related | `Org-Fishbone-*` (senders), Peter — AI Data Assistant (shares this mailbox as `ops@`), `Outputs/Victoria-Coordination-Schedule.md` |

## Summary
How the group's shared Gmail mailbox is kept tidy: a fixed **label taxonomy** and a set of
**archive / keep / star rules**, run as a twice-daily **Victoria "minda@ housekeeping" routine**.
It sits alongside Peter's `ops@` triage on the **same mailbox and the same labels**, so the two
must not collide. Owner-authorised (Minda, 2026-09-21).

## Key facts
- **One mailbox, two send identities.** The account this connector reads sends as
  `ops@fishboneconstruction.co.uk` and also carries all mail addressed to
  `minda@fishboneconstruction.co.uk` (and the other group aliases: `info@`/`invoice@`/`irina@`/
  `commercial@`, per-company `info@…`). Minda confirmed 2026-09-21 it is her `minda@` inbox. Gmail
  labels are **per-mailbox**, so every label below is shared by both Peter and Victoria — the
  "shared label space."
- **Division of labour (owner ruling, Minda 2026-09-21):** **Victoria = `minda@` housekeeping**
  (the type/archive/star layer below); **Peter = `ops@` triage** (company tags + Action-Needed,
  6×/working day). Peter keeps his lane; Victoria adds the housekeeping layer; the two **compose**
  (a message can carry both a Peter company tag and a Victoria type tag).

## Details

### Label taxonomy (live in the mailbox 2026-09-21)
| Label | ID | Colour | Owner | Meaning |
|---|---|---|---|---|
| `Peter/FC` | `Label_2` | blue | Peter | Fishbone Construction / Drylining |
| `Peter/FP` | `Label_3` | green | Peter | Fishbone Properties |
| `Peter/FM` | `Label_4` | teal | Peter | Commercial Properties |
| `Peter/FA` | `Label_5` | purple | Peter | Amfa Furniture |
| `Peter/FH` | `Label_6` | orange | Peter | Fishbone Holdings |
| `Peter/FW` | `Label_7` | brown | Peter | Fishbone Waste |
| `Peter/Action-Needed` | `Label_8` | red | shared | Needs a human action / has a deadline |
| `Regulator` | `Label_9` | dark blue | Victoria | HMRC / Gov Gateway / council / Home Office |
| `Finance-Alexey` | `Label_10` | yellow | Victoria | Alexey Glukhov (AGGA) / RMT finance — also route to Rachel |
| `Marketing` | `Label_11` | grey | Victoria | Newsletters, sales, promotions, surveys |
| `Notifications` | `Label_12` | light grey | Victoria | Parcels, renewals, DD/payment confirmations, security/sign-in alerts, dashboards |
| `Personal` | `Label_13` | pink | Victoria | Personal shopping / rewards |

(Label IDs are informative; a routine resolves names→IDs via `list_labels` each run.)

### Rules (the Victoria routine)
1. **Promotions & Social** (`in:inbox category:promotions` OR `category:social` — newsletters, sales,
   surveys, and social-network mail: LinkedIn invitations / "someone you may know", etc.) →
   add `Marketing`, remove `INBOX`+`UNREAD`. *(Social added v1.1, 2026-09-22 — LinkedIn was slipping through.)*
2. **Routine Updates** (`category:updates` — parcel/delivery, subscription renewals, **account-setup /
   email-verification / security / sign-in / new-device notices**, order confirmations, Direct-Debit /
   payment-**sent** confirmations, telematics/dashboard/expenses summaries) → add `Notifications`,
   remove `INBOX`+`UNREAD`. **These are Notifications — do NOT star them** (v1.1).
3. **Regulatory acknowledgements** (HMRC / Gov Gateway / council / Home Office receipts) →
   add `Regulator`, remove `INBOX`+`UNREAD`.
4. **Personal** (John Lewis etc.) → add `Personal`, remove `INBOX`+`UNREAD`.
5. **NEVER archive — keep in inbox, add `Action-Needed` (`Label_8`) + `STARRED` — but ONLY for genuine
   action:** unpaid supplier invoices/bills (Xero/QuickBooks "invoice due", any amount to pay); a
   **failed/declined payment or a cancelled Direct-Debit mandate**; Alexey/AGGA/RMT (also add
   `Finance-Alexey` and drop a hand-off into Rachel's `/Raw`); solicitors, lenders, insurers,
   HMRC/council **demands**, tenant/right-to-rent actions, anything with a real deadline or decision.
   **Do NOT star** routine account-setup/verification, marketing, security/sign-in/new-device notices,
   or delivery notices — those take their type label and archive (Rules 1–2), no star. *(v1.1 — Peter's
   Action-Needed was over-flagging account/security notices.)*
6. **Do not duplicate Peter's company tags** — only if a thread is untagged, tag by recipient
   domain (…properties → `Peter/FP`, …construction/drylining → `Peter/FC`, …waste → `Peter/FW`).
7. Goal each run: inbox holds only real, actionable/business mail; noise archived; **zero unread**
   except brand-new arrivals; every action item starred. **Archive, never delete** (remove `INBOX`,
   never trash — §6a). Victoria **never sends, replies or forwards.**

### The routine
Created by Minda via the routines form (Victoria cannot create routines — §6a). Connectors: **Gmail**
(+ Drive, to drop Alexey hand-offs into Rachel's `/Raw`). Suggested cadence twice daily
(08:30 / 16:00 UK) or folded into the Victoria morning/afternoon coordination sweeps
(`Outputs/Victoria-Coordination-Schedule.md`). The paste-ready prompt was given to Minda 2026-09-21.

### First cleanup (2026-09-21, Victoria, one-off)
Inbox **290 → ~215 threads**; ~78 noise threads archived (labelled, none deleted). Left starred in
the inbox: the **Watkins solicitor completion (25/09)** and the two **Forth England supplier
invoices due 1 Oct — £1,900 (Construction), £1,800 (Amfa)**. The routine finishes the remaining
backlog and maintains the inbox thereafter.

### First live routine run (reviewed 2026-09-22)
The routine ran overnight and worked: inbox **~215 → 131 threads**; Victoria's labels all in active use
(Notifications 106, Marketing 64, Regulator 8, Personal 7, Finance-Alexey 6 threads); the two **Forth
England invoices (£1,900 / £1,800, due 1 Oct) stayed in the inbox, starred** — the payables test passed;
no collision with Peter's tags. Two misses fixed in **v1.1**: LinkedIn/social mail was not swept (Rule 1
now includes `category:social`), and account-setup/security notices were being over-starred (Rule 5
tightened). Real items surfaced for Minda that day: a declined Microsoft-365 card payment, a cancelled
Funding Circle Direct-Debit mandate, a Right-to-Rent request, and a TDS deposit bank-detail-change notice.

## Open questions
- Cadence and connector set are Minda's to confirm when she creates the routine.
- If Peter's `ops@` triage and this routine ever contend on read/unread or re-inbox a message,
  revisit the division here.

## Sources
- Owner instructions, Minda, 2026-09-21 (this session): "housekeeping on minda@, Peter will take
  care of ops@"; connection confirmed as `minda@`.
- Live mailbox (Gmail connector), label + rule state as at 2026-09-21.
- Peter — AI Data Assistant charter (`ops@` hub triage, 6×/day).

## History
- 2026-09-22 — **v1.1** (Victoria). After the first live routine run: Rule 1 now also sweeps
  `category:social` (LinkedIn etc.); Rule 5 tightened so routine account-setup/security notices are not
  starred; added the first-live-run review note. Owner-authorised (Minda).
- 2026-09-21 — created (Victoria). Records the label taxonomy, housekeeping rules, the Victoria
  `minda@` routine, and the shared-label coordination with Peter. Owner-authorised (Minda).
