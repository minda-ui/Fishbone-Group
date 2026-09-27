# Fishbone Group — Document numbering & filing: adopt v1.1 (all companies)

**From:** Fishbone Group (group knowledge database) · **Date:** 2026-09-09 · **Policy version:** v1.1 · **Status:** locked
**To adopt in:** Fishbone Properties, Fishbone Commercial Properties, Fishbone Holdings, Fishbone Construction, Fishbone Waste, Amfa Furniture, Fishbone SSAS knowledge bases / automations
**Canonical rules:** `Wiki/Process-Document-Numbering-and-Filing.md` (v1.1) in the Fishbone Group database — this note is a summary; the article is the source of truth.
**New in v1.1:** §7a, inter-KB document hand-off — see "Handing a document to another company" below.

---

## Why

From now on, every business document across the group is registered **once**, numbered consistently, and filed with the project it belongs to — so **documents don't duplicate each other** and there is one place to find any of them. Please adopt the rules below verbatim; they are **locked** and versioned, and are not to be edited or forked locally. If something doesn't fit, raise it (see "Feedback" below) rather than inventing a local variation.

## The one register

There is **one register for the whole group** — the Smartsheet **"Document Register"** in the new **"Fishbone Group - Documents"** workspace:
`https://app.smartsheet.eu/sheets/4W2xwP9c2gfCpvWPGJmPHg2P2QwJfxPmWXpCvC21` (sheet id `7352854736144260`).
Your KB/automation **reads it** (to check whether a document is already registered) and **appends your own rows**. Never edit or delete another entity's rows.

Columns: `Document No. | Entity (owner) | Direction | Date | Category | Title | Entities involved | Description | Status | Source key | File link | Location`.

## The ID scheme

- Format: `<PREFIX>` + **7 zero-padded digits**, e.g. `FP0000001`. One continuous sequence per entity (incoming and outgoing share the counter; Direction/Category filter instead). Numbers are never reused — a killed/replaced document is marked `Superseded`/`Void`.
- **Per-entity prefixes:** `FC` Construction · `FP` Properties · `FH` Holdings · `FW` Waste · `FA` Amfa Furniture · `FM` Commercial Properties · `FS` SSAS · `FG` group-level.
- A **document number is 7 digits; a property code is 4 digits** (e.g. `FP1601`). If unsure which, count the digits.

## The anti-duplication rule (the point of the system)

`one owning entity → one row → one ID → one stored file`. A document that touches more than one company is recorded **once** under its owning entity, with the others named in **Entities involved** — never a second row or number.

**Dedup-on-entry (before minting any number):** search the register by **Source key** (the document's Google Drive file ID, or Gmail thread id) and by the same title + date + counterparty. If a matching row exists, **reuse that ID**. Record the Source key on the row so the same source can never be numbered twice.

## What gets a number

Register anything meaningful to the record or audit trail: statutory accounts and CT600s; certificates; title registers/plans, leases and tenancies; loan/mortgage documents; board and intercompany letters/minutes; legal, lender, insurer and Companies House / HMRC correspondence; valuations; completion/redemption statements; property- or project-tied invoices and receipts.
Do **not** register: marketing/newsletters; generic recurring bills with no property/entity tie; duplicates; routine automated notifications. Unclear → raise it, don't guess.

## Filing — with the project, in Collaboration Space

Keep the file in the shared **Collaboration Space** library, **co-located in the folder of the thing it belongs to** (that project/property's `Documents/` folder; company-level items in the company's "Company Documents" folder; group-level `FG` in the group documents folder). Name every file `<ID> - <Category> - <Short Title>.<ext>`. The register row's File link + Location point back to it. Use Drive **move** (preserves the file id) so existing links keep resolving. Keep superseded files — never overwrite; set the old row to `Superseded`/`Void` and register the new version under a new number that references the old one.

## Handing a document to another company (new in v1.1, §7a)

You may pass a document to another group KB so they can process it into their own knowledge — **only** like this:
- The document must **already be on the Document Register**. Drop a copy into the **other KB's `/Raw` inbox** (add a new file — never touch anything already there, and nothing outside `/Raw`), named with its **existing ID**: `<ID> - <Category> - <Short Title>.<ext>`.
- Add a short **covering note** to that `/Raw`, named `YYYY-MM-DD_handoff_<fromEntity>-to-<toEntity>_<ID>.md`, saying why you're sending it and what (if anything) you need.
- Annotate the document's **existing register row**: Direction = `Internal`, and "sent to `<receiving KB>` `YYYY-MM-DD`". **Do not** create a new number, a second register row, or a second stored copy.
- **Receiving one:** a `/Raw` file whose name already carries a document ID is already registered — reuse that ID, extract what you need into your own Wiki citing it, and archive the working copy. Never re-number it.
- This is the **only** write permitted into another KB. It needs Drive write access to that KB's `/Raw`; until that's granted, ask for the file to be copied in. Personal/credential documents are never registered, so they can't be sent this way.

## Locked rules + one feedback channel

The rules are locked and versioned (v1.1). If a document doesn't fit, a rule is ambiguous, or you have an improvement, **do not fork the rules** — raise a row in the Smartsheet **"Document System - Change Requests"** in the same workspace:
`https://app.smartsheet.eu/sheets/hrx6rP255gm8qVVQgX47GjQmqHGWRf576Vmm5hF1` (sheet id `8918834172004228`).
The group reviews the queue, and if a change is warranted it upgrades the policy (new version), records it, and notifies everyone to adopt the new version. **Only the group edits the policy.**

## How to adopt

1. Confirm your automation account has **Editor** access to the "Fishbone Group - Documents" workspace (Minda is arranging the shares).
2. Reference this policy **at v1.1** in your own CLAUDE.md / automation, and route new qualifying documents to the one register + Collaboration Space from now on.
3. Your existing local register (Properties `FP…`, Holdings `FH…`) keeps working for now; the back-catalogue will be migrated into the group register and the old sheets retired as a follow-on (dedup-on-entry throughout), so nothing is lost and nothing is double-numbered.

_Questions or anything that doesn't fit → the Change Requests sheet, or reply to Minda. — Fishbone Group_

---
_Source: `Wiki/Process-Document-Numbering-and-Filing.md` (v1.1), Fishbone Group knowledge database._
