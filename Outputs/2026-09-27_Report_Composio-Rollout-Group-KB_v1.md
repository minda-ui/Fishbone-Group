# Report — Composio rollout on the group KB (2026-09-27)

_To Alex, via your `Raw/` (Raw/-only cross-KB channel). From the interactive group-repo session run for
Minda, 2026-09-27. Report, not an instruction — act on it in your own session. Copy kept in the group
KB `Outputs/`._

## Answer first
Composio works as a Drive write path for the group KB. **9 writes, 0 failures, every one byte-verified**,
including full archive-then-recreate of `CLAUDE.md` (45,878 B). Your proposal's steps 1–6 are done for
`victoria-googledrive`. One decision is open for Minda: write the proven procedure into
`CLAUDE-Rules.md` §6a as a standing rule.

## What was set up
| Item | State |
|---|---|
| Permission rule, `.claude/settings.json` | On `main` (Minda, `2b8ed60`) |
| Governance | `CLAUDE-Rules.md` §6a Composio rule adopted — transport not grant; per-seat aliases; Minda authorises login/link, runs removals; no secrets |
| CLI | `@composio/cli@0.4.1`, checksum verified. Optional Claude Code skill failed (HTTP 403) — not needed |
| Login | minda@fishboneconstruction.co.uk, org `minda_workspace` |
| Connection | `victoria-googledrive`, ACTIVE; account check returned minda@ |

## Write tests
| # | Test | File | Result |
|---|---|---|---|
| 1 | New file upload | session change-log | identical, 1,570 B |
| 2 | In-place overwrite (same id) | same | identical, 2,182 B |
| 3 | Archive-then-recreate | `current-state.md` | old archived unchanged; new identical, 21,529 B |
| 4 | Archive-then-recreate | `open-issues.md` (OI-18 raised) | both identical, 39,837 B |
| 5 | Archive-then-recreate | `CLAUDE.md` (§1 John/Nadia restored) | both identical, 45,878 B |
| 6 | Archive-then-recreate | `CLAUDE-History.md` | both identical, 15,235 B |
| 7 | Archive-then-recreate | `current-state.md` | both identical, 21,729 B |
| 8–9 | In-place overwrite | session change-log | identical, 3,295 B then 4,024 B |

Full record: group `change-log/change-log-2026-09-27-composio-setup-victoria-googledrive.md`.

## Proven procedure (archive-then-recreate)
1. **Pre-check:** `GOOGLEDRIVE_DOWNLOAD_FILE` (`fileId`) the live file; must equal the pre-edit text. Differs → stop, merge.
2. **Archive:** `GOOGLEDRIVE_UPDATE_FILE_PUT` — `name` (archive title), `add_parents` Archive, `remove_parents` root. One call.
3. **Recreate:** `GOOGLEDRIVE_UPLOAD_FILE` — `--file` whose basename is the live title, `folder_to_upload_to` root.
4. **Verify:** both parents by id; both copies downloaded and hashed (archived = pre-edit, new = local); exactly one live copy of the title.

In-place overwrite (`GOOGLEDRIVE_EDIT_FILE`): whole body each call, same id, no archive copy. Used only on
the session's own new file. Governed files and past change-logs stayed on archive-then-recreate.

## Gotchas
| Issue | Handling |
|---|---|
| `UPLOAD_FILE` silently drops to My Drive root on a bad folder id | Always check the parent after upload |
| `FIND_FILE` on `Archive/` (hundreds of files) returns no `data` | Check archived files by id |
| `DOWNLOAD_FILE` wants `fileId` (camelCase); returns a short-lived URL | Fetch at once |
| Install + login live in the container | Reinstall/login each new session; the connection persists in the org |
| First `CLAUDE.md` attempt blocked by the session's safety classifier ("Modify Shared Resources") | Ran only after Minda's explicit approval |

## Findings for you
1. **Sync direction hazard.** The `5f7838a` "sync git mirror to Drive" (2026-09-27) copied Drive over git
   and erased two git-only `CLAUDE.md` changes: John's unattended grant (`384129e`) and Nadia's standalone
   KB (`38bde73`). Now restored on Drive and in git. Suggest the mirror step diffs before overwriting, either way.
2. **OI-18.** Six `Raw/` items have no ledger row; the ledger stops at row 27 (2026-09-07), while
   `current-state.md` said 0 pending. Now marked unverified. Needs a reviewed session.
3. **`AWT-0118` remainder.** John/Nadia part done. Still to check: `00_INDEX.md`, the v1.4/Anna/Rule-C items.
4. **Proposal file.** `2026-09-27_Proposal_Composio-Rollout.md` is still in group `Raw/`. Its steps are
   done for `victoria-googledrive`; archive it when Victoria confirms.
5. **Not linked yet** for `victoria-*`: Gmail, Smartsheet, QuickBooks.
6. **Existing aliases** in the shared org not following `<seat>-<toolkit>`: `fishbone-*` (Drive, Gmail,
   QuickBooks ×6). Per §6a they stand until Minda renames them.

## Asks
- Minda: adopt the procedure above into `CLAUDE-Rules.md` §6a (yes/no).
- Alex: fold the procedure and gotchas into the rollout checklist for the other seats; decide Finding 1.
