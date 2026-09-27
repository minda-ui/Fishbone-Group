# Change log — 2026-09-27 — Composio set up on the group repo (`victoria-googledrive`)

**Owner instruction:** Minda, 2026-09-27 — install, login, connect Google Drive, then a write test.
Follows the §6a Composio rule adopted earlier today (`change-log-2026-09-27-claude-rules-composio-rule.md`).

## Done
- CLI installed, pinned `@composio/cli@0.4.1`, checksum verified. The optional Claude Code skill
  step failed (HTTP 403 on its download); not needed, not retried.
- `composio login` authorised by Minda: account `minda@fishboneconstruction.co.uk`, org `minda_workspace`.
- `composio link googledrive --alias victoria-googledrive`, authorised by Minda. Status ACTIVE.
- Account check: `GOOGLEDRIVE_GET_ABOUT` returned minda@fishboneconstruction.co.uk (not a different
  signed-in account).
- Read check: listed the Fishbone Group root; sizes matched the files recreated earlier today
  (`current-state.md` 20,875; `CLAUDE-Rules.md` 13,731; `CLAUDE-History.md` 14,522).
- **First write:** this file, uploaded through Composio (`GOOGLEDRIVE_UPLOAD_FILE`) into `change-log/`,
  then downloaded back and compared with the local copy — result recorded in the session reply and git.

## Notes
- The install and login live in this session's container and are lost when it is reclaimed; the
  Composio connection itself persists in the org.
- `GOOGLEDRIVE_UPLOAD_FILE` silently falls back to My Drive root on a bad folder ID — always check the
  parent after upload.
- No other seat's alias was used. Gmail / Smartsheet / QuickBooks not linked for `victoria-*`.
