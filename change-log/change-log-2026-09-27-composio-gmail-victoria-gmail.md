# Change log — 2026-09-27 — Composio Gmail: `victoria-gmail` linked and tested

**Owner instruction:** Minda, 2026-09-27 — connect minda@ Gmail; test a draft with an attachment, then
find and download a received attachment; log it and update Alex's report.

## Done
- `composio link gmail --alias victoria-gmail`, authorised by Minda. ACTIVE. Account check
  (`GMAIL_GET_PROFILE`): minda@fishboneconstruction.co.uk. No message opened for the check.
- **Draft test:** `GMAIL_CREATE_EMAIL_DRAFT` → draft `r-6082335035987557994` to minda@, subject
  "[TEST - do not send] Composio Gmail draft + attachment test", attachment = the Composio report v1
  (4,614 B). Read back (`GMAIL_GET_DRAFT`): DRAFT label, recipient/subject/attachment correct.
  Attachment downloaded (`GMAIL_GET_ATTACHMENT`): byte-identical (`ba70019fc37c58d5`). **Nothing sent.**
- **Received-attachment test:** `GMAIL_FETCH_EMAILS` (`has:attachment -in:drafts -in:sent filename:pdf`,
  last 14 days) → newest: supplier order confirmation, 2026-09-26, invoice PDF. Downloaded: 44,593 B,
  valid PDF markers. Financial document (§7b): not read out, not filed; local copy deleted after the check.
- Report **v2** (`Outputs/2026-09-27_Report_Composio-Rollout-Group-KB_v2.md`, adds Gmail) uploaded through
  Composio to Alex's `Raw/` and group `Outputs/`, add-only; v1 left in place in both.
- `current-state.md` refreshed by archive-then-recreate through Composio.

## Open
- Test draft still in minda@ Drafts — Minda to delete.
- `pypdf` fails to import in this container (`_cffi_backend` missing) — environment fault; affects PDF work.
- `victoria-*` not linked for Smartsheet or QuickBooks.
