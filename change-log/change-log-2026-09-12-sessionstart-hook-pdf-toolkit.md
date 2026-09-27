# Change log — 2026-09-12 — Group SessionStart-hook standard: PDF toolkit for all KBs

_Session by Claude (AI assistant) on behalf of minda@fishboneconstruction.co.uk. Newest note at the top. Append-only. See `CLAUDE.md` §4._

---

## 2026-09-12 (later) — PDF toolkit installed via a SessionStart hook, standardised across all eight KB repos

**Trigger.** After building the file-format tool reference, Minda asked for a tool to speed up PDF
work, then: "set it up ... as a centralised rule for all KBs."

**Why.** PDF was the slow, error-prone format (side-by-side tables read as images; scanned docs not
searchable; a £11,000 payment once missed this way). The environment shipped only `pypdf` — no table
extractor, no OCR.

**What was built.** A `.claude/hooks/session-start.sh` (registered in `.claude/settings.json`,
invoked as `bash <script>`) that, on Claude Code **web** sessions only, installs:
- **Python:** pdfplumber (tables), PyMuPDF, pdf2image, pytesseract, pillow, pypdf.
- **System (best-effort, sudo):** tesseract-ocr + poppler-utils.
Idempotent, non-interactive, remote-only; never aborts the session (system-package install is
best-effort, the Python libraries are the guaranteed part). Tested end-to-end this session — an OCR
round-trip read back rendered text exactly.

**Deployed to all eight KB repos** on branch **`claude/session-start-pdf-toolkit`** via the GitHub
API (files pushed, no cloning):
- Group (`Fishbone-Group`) — on its working branch `claude/awesome-knuth-p1ll7w` (hook committed
  `309015a`; CLAUDE.md §5 + settings alignment `3d5f75e`).
- Holdings, SSAS, Construction, Amfa, Commercial Properties, Properties, Waste — each on
  `claude/session-start-pdf-toolkit`. None had a pre-existing `.claude/settings.json` (clean add).
- **Fishbone-Waste-Ltd** has no `main`; its only/default branch is `claude/vigilant-turing-7htmnq`,
  so the hook branch was cut from and should be merged back into that branch.

**To go live:** each repo's `claude/session-start-pdf-toolkit` branch must be **merged to that repo's
default branch** (owner action). No PRs were opened. Until merged, nothing changes; the tools are
already present in *this* session (installed manually).

**Recorded as a group standard** in `CLAUDE.md` §5 ("Session environment — PDF toolkit"), with a
2026-09-12 (later) header revision + footer line. `current-state.md` Last-session and Next-action
updated (the Next-action carries the merge to-do).

**Governance / control files (archive-then-recreate + byte-verified).** `CLAUDE.md` → 52719 B
(uploaded size matched local; download round-trip **IDENTICAL**); `current-state.md` → 19886 B; the
group repo's CLAUDE.md re-committed to match.

**Boundary.** Adding files to the sister KB repos was done only on the owner's explicit "for all KBs"
instruction; it is additive (new `.claude/` files on a side branch), opens no PRs, and changes no
default branch until the owner merges.

Owner-authorised (Minda).
