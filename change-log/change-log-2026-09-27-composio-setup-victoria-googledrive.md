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

## In-place edit test (same session, Minda's request)
- This section was added by overwriting this file in place with `GOOGLEDRIVE_EDIT_FILE`
  (`victoria-googledrive`), same Drive file id `1H9fxvpahRe6FJuvF9cTcN5M12PoA9pRl` — no new file, no
  archive copy. The tool replaces the whole body (no partial edits), so the full text is sent each time.
- Scope note: an in-place overwrite skips archive-then-recreate, so it is used here only on this
  session's own new file. Governed files (`CLAUDE*.md`, the four control files, Wiki articles, past
  change-logs) stay on archive-then-recreate (`CLAUDE.md` §1).

## Full archive-then-recreate through Composio (Minda's request) — both passed
Old file renamed + moved to `Archive/` in one call (`GOOGLEDRIVE_UPDATE_FILE_PUT`: name, add/remove
parents), new file uploaded to the root (`GOOGLEDRIVE_UPLOAD_FILE`). Before: live Drive copy checked
identical to git. After: parents checked; both copies downloaded and hashed; one live copy each in root.

| File | Old id → Archive (bytes unchanged) | New live id | New size / sha256 (first 16) |
|---|---|---|---|
| `current-state.md` | `1MlIZSV6QND8vBeg5DW1IcWNjbpUOM7-L`, 20,875 B | `16elFcyMu5QwKurPZsaZ8uQm0woIo7OKk` | 21,529 B / `ecdad54528413b63` |
| `open-issues.md` | `19eKiZ5sh-QundSbvKhQxlMzTK1DPWHws`, 38,077 B | `1rEGAz7HZzzlB2v6OUD61A4uBEjgUu7Bn` | 39,837 B / `d31ceca3f3fbfbd7` |

Changes carried: `open-issues.md` gained **OI-18** (six `Raw/` items with no ledger row); `current-state.md`
records this rollout, OI-18, and marks "Raw items pending" unverified.
Gotcha: `GOOGLEDRIVE_FIND_FILE` on `Archive/` (hundreds of files) returned no `data` at pageSize 200 —
check an archived file's parent by id instead.
