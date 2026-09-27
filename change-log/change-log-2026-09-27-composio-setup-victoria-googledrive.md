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

## `CLAUDE.md` — same cycle, larger file (Minda approved after a first attempt was blocked)
- Genuine change: §1 lost John's unattended grant (`384129e`) and Nadia's standalone KB (`38bde73`) when
  the `5f7838a` Drive→git sync copied the older Drive text over git. Re-applied only those changes.
- Pre-check: live Drive copy identical to the pre-edit text (43,449 B, `d7ca3c54e8c27954`).
- Old `1auDbd5Mu7YaEfQb1bDlqYbkyHOFyvB6U` → `Archive/`, bytes unchanged. New live
  `1kdaqpR8oos0-QIhWDn6maHCJvCTg2d7V`, 45,878 B, `eb1d80b9f32a26ae`, identical to git. One live copy.
- Largest file proven through Composio so far: 45,878 B.
- Recorded in `CLAUDE-History.md` and `current-state.md`, both replaced by the same cycle.

## Report sent to Alex
- `2026-09-27_Report_Composio-Rollout-Group-KB_v1.md` (4,614 B) uploaded through Composio to Alex's `Raw/`
  (`1khvHcmK-x2IE9L7NAv-wWammuDQtvuq3`, file `1w3JnQ4L5jpO8IZ2HtCeuIa4IrmYV4BgC`) — add-only, new file — and to
  group `Outputs/` (`14_wCb-m9WXpf88o-lPATpqz6PcQuwfhB`). Both parents checked; both byte-identical.
- No Hub row raised from this session (this KB's §6a allows no Hub Smartsheet writes).
