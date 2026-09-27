# Change log — 2026-09-09 (later) — Inter-KB document hand-off (policy v1.1)

_Session by Claude (AI assistant) on behalf of minda@fishboneconstruction.co.uk. Newest notes at the top. Append-only; never edited after the session. See `CLAUDE.md` §4 and `current-state.md` for the present snapshot. Follows the same-day `change-log-2026-09-09-document-register.md` (the v1.0 stand-up)._

## Summary

Amended the group document policy from **v1.0 to v1.1** to let the group KBs **hand documents to each other**. On Minda's instruction, a group KB may now place a document that is **already on the Document Register** into another group KB's **`/Raw` inbox**, so the receiving company can process it into its own knowledge. Scope was set by the owner: **`/Raw` only, add-new only**, with a **covering note + a register annotation** for the audit trail.

## Was it against the rules?

Yes as written — `CLAUDE.md` §6a barred the KB from editing/moving/copying anything inside a sister KB. But `/Raw` is the sanctioned inbox and the rules already contemplated documents being copied into it (by Minda, manually). So this is a narrow, owner-authorised relaxation — authorising KBs to do the `/Raw` hand-off themselves — not a break of the model. It exercises the policy's own feedback→upgrade loop, done by the group (the only party that edits the policy).

## The rule (policy §7a, new)

- **Permitted:** a group KB (automation or assisted session) may add a **copy of an already-registered document** to another group KB's **`/Raw`** (**add a new file only**), named with its **existing ID** `<ID> - <Category> - <Short Title>.<ext>`, plus a covering note `YYYY-MM-DD_handoff_<fromEntity>-to-<toEntity>_<ID>.md` (why sent, what is expected), and annotate that document's existing register row (Direction = `Internal`, "sent to `<receiving KB>` `YYYY-MM-DD`").
- **Invariant preserved:** `one owning entity → one row → one ID → one canonical filed copy`. No new number, no second register row, no second Collaboration-Space copy — the `/Raw` copy is a transient working copy.
- **On receipt:** the `/Raw` filename carries an existing ID → already registered; the receiver reuses that ID, extracts knowledge into its own Wiki citing it, logs it in its own ledger with the ID, and archives the working copy (and the covering note). A genuinely new document created in response is ordinary new work with its own new ID.
- **Still barred:** writing anywhere in a sister KB other than its `/Raw`; editing/moving/deleting/overwriting anything already there (including existing `/Raw` items); sending an unregistered document; every other §6a bar unchanged.
- **Safety property:** only registered documents may be sent, and personal/credential documents are never registered — so passports, NINOs, payslips, personal bank details, etc. cannot travel by this route.
- **Access prerequisite:** the sending KB's automation account needs Drive **Contributor** access to the receiving KB's `/Raw`. Until a given share is in place, the hand-off falls back to a human copying the file in; log any missing access as an Open Issue.

## Files changed (archive-then-recreate, byte-verified: uploaded `fileSize` == local `wc -c`, 0 U+FFFD, `£` preserved)

- **`Wiki/Process-Document-Numbering-and-Filing.md`** — **v1.0 → v1.1**: added §7a (inter-KB hand-off); extended §5 (dedup recognises an ID in a `/Raw` filename) and §10 (governance permitted/not-permitted); §9 version and §11 change history updated. 9489 → 13252 B.
- **`CLAUDE.md`** — §0 document-policy paragraph (v1.1 + the `/Raw` hand-off); §6a permitted list (add the hand-off) and barred list (carve the `/Raw` add-only exception); two top revision lines and the closing note. 42036 → 43239 B (live == local verified by download-diff).
- **`README.md`** — header date, §3 subsection and §5 note now cite v1.1 and the `/Raw` hand-off. 12551 → 12777 B.
- **`WORKFLOW.md`** — Step 3b gained "Sending a registered document to another group KB" and "Receiving one" paragraphs; Related line → v1.1. 8736 → 9784 B.
- **`Wiki/00_INDEX.md`** — master-index register row, a new "recently changed" bullet, and the Processes listing now cite v1.1 and §7a. 13291 → 13917 B.
- **`current-state.md`** — refreshed for the v1.1 amendment (policy version, the hand-off, the new cross-KB `/Raw` share prerequisite, Outputs count). 6753 → 7693 B.
- **`Outputs/2026-09-09_Note_Document-Policy-Adoption-v1.1.md`** — new v1.1 adoption note for the sister KBs (the v1.0 note stays as its dated snapshot, superseded pre-distribution).

## Pending (owner-driven — the group DB cannot do these itself)

1. **Cross-KB `/Raw` Drive shares:** grant each sending KB's automation account **Contributor** access to the other group KBs' `/Raw` folders so the §7a hand-off works without a human copy. Until then, hand-offs fall back to Minda copying the file into `/Raw`.
2. **Distribute the v1.1 adoption note** to the sister KBs (carries the §7a rule). The v1.0 note is superseded before distribution.
3. Prior pending items still stand: share the "Fishbone Group - Documents" Smartsheet workspace (Editor) to the `info@` accounts + `irina@`; Phase-2 back-catalogue migration.

## Open issues

No change: **OI-12** and **OI-13** remain open (both with Minda). A future document-policy change-request would arrive via the Change Requests queue (SRC-39) and be promoted into `open-issues.md` by the weekly digest routine.
