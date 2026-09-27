# Fishbone Group — Document numbering & filing: update to v1.3 (all companies)

**From:** Fishbone Group (group knowledge database) · **Date:** 2026-09-10 · **Policy version:** v1.3 · **Status:** locked
**To adopt in:** Fishbone Properties, Fishbone Commercial Properties, Fishbone Holdings, Fishbone Construction, Fishbone Waste, Amfa Furniture, Fishbone SSAS knowledge bases / automations
**Canonical rules:** `Wiki/Process-Document-Numbering-and-Filing.md` (v1.3) in the Fishbone Group database — this note is a summary of what changed; the article is the source of truth.
**Supersedes:** the v1.2 adoption note (`2026-09-09_Note_Document-Policy-Adoption-v1.2.md`). Everything in v1.0–v1.2 still stands. v1.3 only **adds two clarifications** — nothing is withdrawn.
**Distribution:** delivered 2026-09-10 into the `/Raw` inbox of each sister KB that has one (Properties, Commercial, Construction, Holdings, SSAS) as `2026-09-10_group-policy_document-numbering-and-filing-v1.3.md`, with a leading "for adoption, not for registration" banner. This file is the group's own dated snapshot of that note.

---

## Why v1.3

v1.3 resolves the **second and third Change Requests** through the feedback queue — **FM-CR-0001** (Fishbone Commercial Properties) and **FP-CR-0001** (Fishbone Properties), both **Accepted** by the group on 2026-09-10.

## What changed (two clarifications)

1. **Property codes are 4 digits, self-assigned (§3, §7).** A property code is `<PREFIX>` + **4 digits = 2-digit acquisition year + 2-digit sequence** (e.g. `FP1601` = acquired 2016, seq 01; Commercial Properties' 145 High Street East, acquired 2023, is `FM2301`). **Each company assigns its own** property codes on this pattern and records them in its **own property register** — there is no central index and the group does not issue codes. Property-tied documents file in Collaboration Space under **`<PROPERTY CODE> - <Address>/Documents/`** using that code; the uncoded `Company/Project/Documents` folder is only for projects that are **not** a property (e.g. a loanback). If a company has no property, it has no property codes.

2. **Email-attachment source capture (§5).** When the record **is** an email attachment but its bytes cannot be captured into Drive (a known limitation — attachment binaries often fail Drive's upload validation, and no attachment-download tool is exposed), register the row with the **Gmail thread id as the Source key** and a **plain-text transcription** of the attachment as the stored record, and **flag it as a transcription** (in Description and the change-log). Dedup still works on the stable thread id; if the binary is captured later, attach it and update File link **without changing the ID**.

## Nothing else changes

The ID scheme, the anti-duplication invariant, what gets a number (incl. tasks-are-not-documents, §6), dedup-on-entry, the §7a inter-KB `/Raw` hand-off, and per-KB self-migration (§11) are all **unchanged from v1.2**. If you have not yet adopted v1.2, adopt straight to v1.3 — the canonical article carries the full ruleset.

## How to adopt

1. Update your CLAUDE.md / automation to reference the policy **at v1.3**.
2. If you own property, **self-assign a 4-digit code** (acquisition-year + sequence) per property, record it in your own property register, and file property-tied documents into `<CODE> - <Address>/Documents/` (§3/§7).
3. For email-only records whose attachment bytes won't capture, use the **Gmail thread id + flagged transcription** pattern (§5).

## One feedback channel (unchanged)

Don't fork the rules — raise a row in the Smartsheet **"Document System - Change Requests"** in the "Fishbone Group - Documents" workspace (sheet id `8918834172004228`). The group reviews the queue and, if warranted, versions the policy and notifies everyone — exactly the loop that produced this v1.3.

_Questions or anything that doesn't fit → the Change Requests sheet, or reply to Minda. — Fishbone Group_

---
_Source: `Wiki/Process-Document-Numbering-and-Filing.md` (v1.3), Fishbone Group knowledge database._
