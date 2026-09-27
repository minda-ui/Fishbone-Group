# Change log — 2026-09-10 — Group incoming paper-mail (post) handling process

_Session by Claude (AI assistant) on behalf of minda@fishboneconstruction.co.uk. Newest note at the top. Append-only: never edited after the session; corrections go in a later dated file. See `CLAUDE.md` §4._

---

## 2026-09-10 (later) — New group process: incoming paper-mail handling

**Trigger.** Owner (Minda) reported that paper post for **all seven group companies** arrives at
the shared office (6 Beverley Place, Wallsend NE28 7BH) and asked whether any system was in place
to process it. A read-only check found **none group-wide**: the Document Register (policy v1.3)
handles documents once they are digital, but nothing defined the front end — who opens the post,
how it is scanned, and how each letter is routed to the right company before it is registered. In
practice post was scanned ad hoc and fed into whichever KB when someone got to it (e.g. a
Kensington letter stamped "RECEIVED 07 SEP 2026" → Properties `FP0000038`; an unprocessed
"Xerox Scan 20260910" cabinet-software offer sitting in Construction). Fishbone Construction had an
intake process, but it was **email-only** (info@ mailbox) and Construction-only.

**Owner decisions (via AskUserQuestion, 2026-09-10):**
- Design a **group-wide paper-mail process** (all seven companies), reusing the existing Document
  Register — no new numbering scheme.
- Routing model: **group intake → triage → register → route.** One mixed pile is opened/scanned
  into a single group intake point; the group determines the owning company, registers each letter,
  files it, then routes it to that company's KB.
- Home: a **standalone group Wiki process article**, cross-referenced from the control files and
  distributed to the companies (not folded into the locked numbering policy).

**What was created / changed** (all archive-then-recreate + byte-verified: uploaded `fileSize` ==
local byte count, 0 U+FFFD, `£`/Cyrillic preserved; superseded versions archived, never trashed):

1. **New Wiki article `Wiki/Process-Post-Handling.md` (v1.0, Active, 7649 B).** The group acts as
   the shared **post room**. Steps: (1) open & scan — one physical item = one PDF, capture the
   received date; (2) intake — drop each scan into the single group `Raw/Post/YYYY-MM-DD/` landing
   for all companies; (3) triage — determine the owning company **from the letter's content, not
   the envelope**, and whether it qualifies (policy §6); **personal/credential post is never
   registered** (policy §10); (4) register + file — dedup-on-entry (§5) against the group Document
   Register, assign the owning entity's next 7-digit ID (Direction = `Incoming`, Source key = the
   scan's Drive id), file the canonical copy into Collaboration Space (§7); (5) route — hand the
   registered scan to the owning company's KB `/Raw` via the §7a hand-off (covering note included);
   Fishbone Waste (no KB) and group-level `FG` items are kept and processed by the group; (6)
   archive the intake scan; (7) seen-but-not-registered junk/marketing/personal post gets a
   one-line change-log note and is discarded/parked — no register row. Reuses the v1.3 numbering
   policy, §5 dedup, §6 what-gets-a-number, §7 filing, §7a hand-off and the §10 personal-data bar;
   improvements go through the Change Requests queue (same governance loop). **No new numbering.**
2. **`Wiki/00_INDEX.md`** — Articles **8 → 9**; added `Process-Post-Handling.md` to the Processes
   list and a "Recently changed" bullet; `Last updated` 2026-09-10.
3. **`WORKFLOW.md`** — added an "Incoming paper post" paragraph to Step 3b noting that physical mail
   is captured via `Process-Post-Handling.md` through the group `Raw/Post/` intake.
4. **`CLAUDE.md`** — §0 document-filing paragraph gained an "Incoming paper post" pointer sentence;
   added the top revision line (2026-09-10 later) and a closing revision-history clause. (Download-
   diff verified IDENTICAL to source.)
5. **`README.md`** — appended a sentence to §3 "Document numbering & filing" pointing to the
   post-handling process.
6. **`current-state.md`** — Wiki articles now 9; recorded the new process in Last session and Next
   action.

**The locked numbering policy stays at v1.3** — the post article references it one-directionally, so
no policy version bump.

**Distribution.** A short group notice was placed into the six KB `/Raw` inboxes (Properties,
Commercial, Construction, Holdings, SSAS, Amfa) explaining that inbound paper post for their company
is now captured centrally and routed to their `/Raw` as an already-registered document (process it
as a §7a receipt), and a dated snapshot was filed in `Outputs/`.

**Optional, deferred** (only if owner asks): a one-letter dry run using the unprocessed "Xerox Scan
20260910" cabinet-software offer sitting in the Construction KB — confirm the process identifies the
owning company, dedups, assigns the next ID with Direction = Incoming, files into Collaboration
Space, and routes via §7a.

Owner-authorised (Minda).
