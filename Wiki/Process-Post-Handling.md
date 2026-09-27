# Incoming Post (paper mail) handling — Fishbone Group process (v1.2)

**Type:** Process
**Status:** Active — group-wide
**Version:** v1.2
**Last updated:** 2026-09-10
**Applies to:** physical post received at the shared office (6 Beverley Place, Wallsend NE28 7BH) for every Fishbone Group company (Construction, Properties, Holdings, Waste, Amfa Furniture, Commercial Properties, Fishbone SSAS) and the group itself
**Related:** `Wiki/Process-Document-Numbering-and-Filing.md` (the locked numbering/filing policy this feeds — the source of truth for numbering, dedup, filing and the §7a hand-off) · `CLAUDE.md` §0/§3 · `WORKFLOW.md`

## 1. Purpose
One office receives the paper post for all seven companies in a single mixed pile. This process is the
**front end** that turns a physical letter into a registered document: **open → scan → triage → register
→ route**. It does **not** introduce any new numbering — once a letter is scanned it is an ordinary
business document and follows `Process-Document-Numbering-and-Filing.md` (the register, the per-entity
7-digit IDs, dedup-on-entry, project-co-located filing). The group acts as the **shared post room**: it
captures and registers each item centrally, then routes it to the owning company's KB for knowledge
extraction.

## 2. Open & scan
- Open the day's post. **Handle every item**, even if only to note it as junk (§7).
- **One physical item = one PDF scan**, at a readable resolution. A multi-page letter with its enclosures
  is one item.
- **Capture the received date.** Use the incoming date stamp ("RECEIVED dd MON yyyy") if the office
  applies one, or write the received date on the first page before scanning. The letter's own date and
  the received date are usually different; both matter (§4).
- Keep the **envelope** only when it carries evidence you need (postmark date for a deadline, the only
  address proof). Otherwise recycle it.
- **Do not scan personal/credential post into the KB** (passports, driving licences, payslips/P60s,
  personal bank correspondence, anything in §10 of the numbering policy). Set it aside for Minda; it is
  never registered and never routed.

## 3. Intake landing — one point for all companies
Drop each scan into the **group intake folder** `Raw/Paper Mail/` (id
`16FD9ZBEyseWht3KYl_AbxpRrORfLGYLd`, inside the group `Raw/` folder `1AskWaogQoyQH7COKZq85jL00QUtcx---`;
a dated subfolder `Raw/Paper Mail/YYYY-MM-DD/` is optional for busy days). Name the raw scan as a placeholder — **no document ID yet** — e.g.
`YYYY-MM-DD_post_<seq>_<short-hint>.pdf` (`2026-09-10_post_03_kosmosoft-cabinet-offer.pdf`). The register
assigns the real ID at step 4. This single point is used for **all** companies; do not pre-sort into the
sister KBs at scanning time.

## 4. Triage (group session)
For each scan in `Raw/Paper Mail/`:
1. **Determine the owning company from the letter itself** — the addressee, the account/reference, the
   subject — **not** from the envelope or who happened to open it. A letter for Fishbone Properties that
   arrived in a shared envelope is a Properties (`FP`) item. When a letter genuinely concerns the group or
   crosses entities, use `FG` (group-level) or the owning entity with the others in **Entities involved**.
2. **Decide whether it qualifies** (numbering policy §6): register meaningful correspondence — lender /
   solicitor / insurer / HMRC / Companies House letters, certificates, statements, notices, contracts.
   Do **not** register marketing, circulars, duplicates or routine junk (§7).
3. **Unclear owner or unclear whether it qualifies → do not guess.** Raise it in the **Change Requests**
   queue (sheet `8918834172004228`) or flag to Minda.

## 5. Register + file (per the numbering policy)
For each qualifying item:
1. **Dedup-on-entry** (policy §5): search the group Document Register (sheet `7352854736144260`) by the
   scan's **Drive file ID** and by title + date + counterparty. If it is already registered (e.g. the same
   letter also arrived by email), **reuse that ID** and record the paper scan against that existing row
   rather than minting a new number.
2. If new, assign the **owning entity's next 7-digit ID**, and append the register row immediately:
   Direction = **`Incoming`**; Date = the **letter's** date; **received date** noted in Description
   ("received DD/MM/YYYY by post"); **Source key = the scan's Drive file ID**; Status usually `Issued`.
3. **File the canonical copy** into the shared **Collaboration Space**, co-located with the owning
   company/project (a property-tied letter under `<PROPERTY CODE> - <Address>/Documents/` per policy §3/§7;
   otherwise the company's "Company Documents" folder), named `<ID> - <Category> - <Short Title>.pdf`.

## 6. Route to the owning company
- **Company with its own KB** — Properties, Commercial, Construction, Holdings, SSAS, Amfa Furniture, Fishbone Waste —
  hand the registered scan to that KB's `/Raw` via the **inter-KB hand-off (policy §7a)**: place a copy
  named by its ID (`<ID> - <Category> - <Short Title>.pdf`) into the KB's `/Raw`, plus a covering note
  `YYYY-MM-DD_handoff_group-to-<entity>_<ID>.md` saying it arrived by post and what (if anything) is
  needed. That KB then extracts the knowledge into its own Wiki, citing the ID, and archives the working
  copy — it does **not** re-number it (the filename already carries the ID).
  KB `/Raw` folders: Properties `1y98qCA9GUVi77g4qUVpuNGlmPd13215r` · Commercial
  `1t8X6ew8sPVFrn1Cg_nsMVBYhVKfA7Ack` · Construction `17yPHMXGWUtskM2GPSbTOc2kgLPLe9RCn` · Holdings
  `1IoNsMf7YkgivAQBXPNQr1WwBKqFRGXjZ` · SSAS `1ntYVPRv8xacjjIYqrMi9EVBVv_0PUzuj` · Amfa
  `1PrwBx2ubsd8Wr9bbzwXitc1hZfNkldo8` · Fishbone Waste `1TlNINqtx8JU1Qe6152uqhEPZEvt7JN_C`.
- **Group-level (`FG`)** items (and any company that has no KB) — the group keeps them: the register row
  and the Collaboration Space copy are the record, and the group extracts any group-level knowledge itself.
  No hand-off. **(All seven companies now have a KB as of 2026-09-10, so in practice every company item is
  routed; only `FG` group-level items are kept.)**

## 7. Archive the intake scan, and record what was seen
- Once an item is registered, filed and routed, **move the `Raw/Paper Mail/` placeholder scan to the group
  `Archive/`** (renamed with the processing date). The canonical copy now lives in Collaboration Space and
  the register row points to it; the intake scan is just the inbox copy.
- **Seen-but-not-registered.** Junk, marketing, duplicates and personal/credential post get a **one-line
  note in the session's dated `change-log/` entry** (so there is a record the item was seen and why it was
  not registered) and are then discarded or set aside for Minda. They never get a register row. There is
  no separate mail-tracker sheet: the Document Register's `Incoming` rows plus the change-log are the audit
  trail.

## 8. What this process does not change
Numbering, dedup, filing, supersession, the §7a hand-off and the §10 personal-data bar are all exactly as
in `Process-Document-Numbering-and-Filing.md` (currently v1.3). This article only adds the paper front
end. It is group-wide guidance; **improvements go through the same Change Requests queue** (sheet
`8918834172004228`) — do not fork it locally.

## 9. Change history
- **v1.2 — 2026-09-10** — Fishbone Waste gained its own Knowledge Base (created 2026-09-10, Drive `1LMVTPw4YFw9OmW7GcTjaDEfXqCIjp1ZJ`), so §6 now routes Waste post to that KB's `/Raw` via §7a like every other company; the old "Fishbone Waste (no KB) — kept by the group" special-case is removed, leaving only group-level `FG` items kept by the group. The day's two Waste items `FW0000001`/`FW0000002` were routed to the new KB retrospectively. No numbering change. Owner-authorised (Minda).
- **v1.1 — 2026-09-10** — Intake folder set to `Raw/Paper Mail/` (id `16FD9ZBEyseWht3KYl_AbxpRrORfLGYLd`), replacing the `Raw/Post/YYYY-MM-DD/` path, to match the folder in use (owner decision). First live run the same day processed a four-item mixed scan: registered `FW0000001`, `FW0000002` (Waste) and `FC0000010`, `FC0000011` (Construction) as Incoming; scan filed in Collaboration Space / Other / Group Post; Construction items routed via §7a; Waste items kept by the group. No numbering change. Owner-authorised (Minda).
- **v1.0 — 2026-09-10** — Created. Group "post room" procedure for incoming paper mail received at the
  shared office for all seven companies: open → scan (one PDF per item, capture received date) → single
  group `Raw/Paper Mail/` intake → triage (owning company from the letter; junk/personal excluded) → register &
  file in the group Document Register (Direction = Incoming) → route to the owning company's KB `/Raw` via
  §7a (Waste/`FG` kept by the group). Reuses the v1.3 numbering policy; no new numbering. Owner-authorised
  (Minda).
