# Change log — 2026-09-10 — FM-CR-0001 + FP-CR-0001 accepted; document policy → v1.3

_One dated file per session (Properties Ltd style). Append-only history; the live snapshot is `current-state.md`. See `CLAUDE.md` §4._

## Summary

Checked the **"Document System - Change Requests"** queue (SRC-39). Two **new** items had been raised since FC-CR-0001 — **FM-CR-0001** (Fishbone Commercial Properties) and **FP-CR-0001** (Fishbone Properties), both "gap". Both were **Accepted** by the owner and folded into policy **v1.3** (v1.2 → v1.3). The feedback→review→upgrade loop ran for the second time.

## The change requests

- **FM-CR-0001** · raised by Fishbone Commercial Properties · gap · against v1.2. §7 requires property-tied filing in "that property's folder" and §3 says property codes are 4 digits, but the policy gave no way to obtain a code and no group-level index. Commercial has one property (145 High Street East, freehold acquired 30/05/2023); local code `FCP 0001` predates the group scheme. Two property-tied docs (FM0000007 RICS valuation, FM0000008 Building Control letter) were parked at Location "not yet filed" pending a ruling.
- **FP-CR-0001** · raised by Fishbone Properties · gap · against v1.1. The daily inbox routine can't reliably capture an email attachment's raw bytes into Drive (only metadata is retrievable; base64 upload usually fails). Fallback is to transcribe the attachment and cite that. Asked whether transcription-as-fallback is the accepted group answer and whether the policy should say so.

## Owner decisions (2026-09-10)

- **FM-CR-0001 — property codes required, self-assigned.** A property code is 4 digits = **2-digit acquisition year + 2-digit sequence**, mirroring the Properties portfolio (FP1601..FP2401). **Each company self-assigns** its own codes on that pattern and records them in its **own property register** — no central index, no group-issued codes. 145 High Street East (acquired 2023) is therefore **`FM2301`**; property-tied documents file into `FM2301 - 145 High Street East/Documents/` (so FM0000007 and FM0000008 go there). The uncoded `Company/Property/Documents` folder is **not** the route for properties — it remains only for non-property projects (e.g. a loanback).
- **FP-CR-0001 — transcription-as-fallback blessed, and written into the policy.** When an email attachment IS the record but its bytes can't be captured, register with the **Gmail thread id as Source key** and a **flagged plain-text transcription** as the stored record; dedup still works on the thread id; if the binary is captured later, attach it and update File link **without changing the ID**.

## What changed

- **`Wiki/Process-Document-Numbering-and-Filing.md`** → **v1.3** (archive-then-recreate; new id `1-2_KJz4u3TvwENqnQSoz9JcJ_09g1UwC`, 17105 B, byte-verified). §3 gains a **self-assigned property-code** rule; §7 files property-tied documents into `<CODE> - <Address>/Documents/`; §5 gains the **email-attachment source-capture** note; v1.3 added to the §11 change history.
- **Change Requests sheet** — FM-CR-0001 (rowId `3065176654481284`) and FP-CR-0001 (rowId `6522393399527300`) both set **Status = Accepted**, **Reviewed = 2026-09-10**, with full resolutions. Raisers' Description content left intact (only the group's reviewer columns were set — policy §9).
- **Control files bumped v1.2 → v1.3** (archive-then-recreate + byte-verify each): `CLAUDE.md` (new id `1_g2ZM4wiBXUGHipDw5j_Kbit3Dr86s4J`, download-diff identical), `README.md`, `WORKFLOW.md`, `Wiki/00_INDEX.md`, and `current-state.md`. Historical revision lines / change-history bullets preserved; only current references bumped.
- **v1.3 note distributed** into the five sister `/Raw` inboxes (Properties, Commercial, Construction, Holdings, SSAS) as `2026-09-10_group-policy_document-numbering-and-filing-v1.3.md`, and a dated snapshot filed at `Outputs/2026-09-10_Note_Document-Policy-Adoption-v1.3.md`.

## Governance note

Owner-authorised amendment by the group (the only party that edits the policy). All §6a/§10 bars unchanged. Version bump v1.2 → v1.3 recorded in the policy's own change history, in this dated `change-log/` file, and on both Change Requests rows. No new external source; no Smartsheet schema change. Note for FM: the actual filing of FM0000007/FM0000008 into `FM2301 - 145 High Street East/Documents/` is Fishbone Commercial Properties' own KB action, following this ruling.

---
_Fishbone Group knowledge database · 2026-09-10._
