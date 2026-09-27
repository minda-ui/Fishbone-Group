# Change log — 2026-09-10 — First live run of the incoming paper-mail process

_Session by Claude (AI assistant) on behalf of minda@fishboneconstruction.co.uk. Newest note at the top. Append-only. See `CLAUDE.md` §4._

---

## 2026-09-10 (latest) — Today's office post processed end-to-end (post-room process, first real run)

**Trigger.** Minda asked to check the `Raw/Paper Mail/` folder for today's mail. It held one scanned
PDF, `2026-09-10 Post batch ...` (Drive id `1qL9QTg2R-isK01tyF3i6Q1GXlruNsgjT`, 5 pages, 4.36 MB) —
a **single mixed scan of four separate letters for two companies**. This is the first real run of the
group post-room process (`Wiki/Process-Post-Handling.md`).

**Owner decisions (AskUserQuestion):** register all four items (including the two DVLA reminders);
adopt `Raw/Paper Mail/` as the standing intake folder (and update the process article to name it).

**What was done.** Split the combined scan into four per-item PDFs (pypdf) for reference; then, because
this Drive connector can only upload files via inline content (megabyte image PDFs can't be pushed),
kept the **single scan as the filed image** — moved it into `Collaboration Space / Other / Group Post /`
and registered four rows against it by page. Each item deduped first (no existing rows matched; register
read live: max was FC0000009, no FW rows).

| Doc ID | Owner | Item | Page | Key facts |
|---|---|---|---|---|
| `FW0000001` | Waste | North Tyneside Council business rates (NNDR) | p.1 | £3,042.33 outstanding; liability order 21/08/26; 7-day contact window; Unit 31 Point Pleasant Ind Estate; letter 4 Sep 2026 |
| `FW0000002` | Waste | DVLA vehicle tax reminder (V11) | p.5 | HK21 DFJ (Ford LGV); tax expires 30/09/2026 |
| `FC0000010` | Construction | HSE Fee-for-Intervention invoice 5000146628 | p.2–3 | £1,428.80; due 03/10/2026; re Notification of Contravention / material breaches, incident 10/07/2025 The Burlington, Birmingham |
| `FC0000011` | Construction | DVLA vehicle tax reminder (V11) | p.4 | NJ17 CWK (Ford LGV); addressed to Fishbone Drylining (Construction's former name); tax expires 30/09/2026 |

All four registered with Direction = `Incoming`, Source key = the scan's Drive id + a page anchor,
File link = the filed scan, Status `Issued`.

**Routing.**
- **Construction (has a KB):** dropped a covering note `2026-09-10_handoff_group-to-construction_FC0000010-FC0000011.md` into Construction KB `/Raw` (§7a hand-off), transcribing both items and linking the filed scan by page.
- **Waste (no KB):** kept by the group; extracted into `Wiki/Org-Fishbone-Waste-Ltd.md` (business-rates liability FW0000001 + vehicle FW0000002; new Key-fact block, Open question, source [S16], History line), and raised **OI-14** for the live rates liability.

**Governance / control files (all archive-then-recreate + byte-verified):**
- `Wiki/Org-Fishbone-Waste-Ltd.md` → 17541 B (added the two post items; also fixed a pre-existing "¡"→"£" OCR typo in a History line).
- `Wiki/Process-Post-Handling.md` → **v1.1** (8240 B): intake folder set to `Raw/Paper Mail/` (id `16FD9ZBEyseWht3KYl_AbxpRrORfLGYLd`), replacing `Raw/Post/YYYY-MM-DD/`; §9 change-history line added (owner decision).
- `current-state.md` → 16614 B (first-run summary; register-row count corrected to the live figure — 88 rows, was a stale "40"; OI count 2→3; intake path).
- `open-issues.md` → OI-14 added.
- `CLAUDE.md`, `README.md`, `Wiki/00_INDEX.md` → the `Raw/Post/` intake phrase updated to `Raw/Paper Mail/`.

**Register-count correction.** Reading the live Document Register showed **84 pre-existing numbered rows**
(FA×1, FC×9, FH×19, FM×8, FP×47 — Properties' back-catalogue has been migrated in; no FS rows in this
sheet), not the "40" the previous `current-state` snapshot claimed. Corrected in `current-state.md`.

**Boundary respected.** Registered / filed / routed / extracted only. **No payment, reply or contact**
with the council, HSE or DVLA — those are Minda's. Three time-sensitive items flagged to Minda: the
Waste business-rates enforcement (OI-14), the HSE invoice due **3 Oct 2026**, and both vehicle taxes
expiring **30 Sep 2026**.

**Seen-but-not-registered:** none — all four items qualified and were registered (owner chose to register
the DVLA reminders too).

Owner-authorised (Minda).
