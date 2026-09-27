# Change log — 2026-09-12 — Quarterly tooling review + PDF-toolkit hook PRs merged

_Session by Claude (AI assistant) on behalf of minda@fishboneconstruction.co.uk. Newest note at the top. Append-only. See `CLAUDE.md` §4._

---

## 2026-09-12 (later still) — folded a tooling & environment health review into the Quarterly sweep; the seven sister PDF-toolkit PRs merged

**Trigger.** After the PDF-toolkit hook was standardised, Minda asked: "Is it worth to create a
routine like once a month for looking better tools?" — then "Yes. Create one with everything you
propose me above."

**Recommendation — quarterly, not monthly.** Tooling (skills, connectors, MCP tools, the PDF
toolkit) does not change fast enough to reward a monthly pass, and a standalone monthly review would
duplicate connectors and setup that the existing **Quarterly sweep** already carries. So rather than
create a second routine, the tooling review was **folded into the existing Quarterly sweep** (`CLAUDE.md`
§5), which already runs governance checks (Drive permissions, Companies House deadlines, stale
articles / dead links, DST). Recorded in §5's Status cell: "Quarterly chosen over a monthly tooling
review (2026-09-12, owner)."

**New scope added to the Quarterly sweep — tooling & environment health:**
- **Hook / PDF-toolkit check** — confirm `.claude/hooks/session-start.sh` is present and merged to
  each KB repo's default branch, and that the PDF toolkit (pdfplumber, PyMuPDF, pdf2image,
  pytesseract, pillow, pypdf + tesseract-ocr, poppler-utils) actually imports in a fresh web session.
- **Skills / connectors / tools drift diff** — list what's newly available in the session vs. what
  the KB last recorded, and flag anything worth adopting.
- **Change-log tooling-pain scan** — grep the recent change-logs for recurring "read as image /
  extract failed / had to eyeball / paginated wrongly" notes and propose a concrete fix (a new
  library, a hook step, a process tweak).
- **Output** — `Outputs/YYYY-MM-DD_Digest_Quarterly-Sweep_v1.md`; material drift raised as Open
  Issues (read-only, like the weekly digest — no auto-edits to the index or articles).

**The routine itself is created via the form, not the API.** Per §5's own migration lesson
(API-created routines lacked connectors and stalled on permission prompts), the live cloud routine is
created through the **claude.ai/code/routines** form so it picks up its **Drive + Smartsheet**
connectors. The ready-to-paste prompt (quarterly, 1st of Jan/Apr/Jul/Oct, 07:00 UK) was handed to
Minda in-session; nothing was created by API.

**Also this session — the seven sister PDF-toolkit PRs are merged.** PRs were opened for each sister
KB's `claude/session-start-pdf-toolkit` branch and **all seven merged to their default branches**
(Properties, Commercial, Construction, Holdings, SSAS, Amfa, and Waste — Waste onto its
`claude/vigilant-turing-7htmnq` default). Verified by the hook file's presence on each default branch.
So the SessionStart PDF-toolkit hook is **live for future web sessions in every company KB**. Only the
**group** repo's copy is still unmerged — it remains on the working branch
`claude/awesome-knuth-p1ll7w` for the owner to merge to the group repo's default.

**Governance / control files (archive-then-recreate + byte-verified).** `CLAUDE.md` → 54306 B (§5
Quarterly-sweep row rewritten to "governance + tooling health"; two revision lines + footer clauses
added; uploaded size == local, download round-trip **IDENTICAL**, 0 U+FFFD, 40 £). `current-state.md`
→ 21850 B (Last-session lead + Next-action updated for the quarterly-sweep scope and the PR merges;
uploaded size == local, 0 U+FFFD, 9 £). The group git repo's `CLAUDE.md` re-committed to match.

**Boundary.** No routine was created by API (form step left to Minda so it gets connectors); no live
system of record was written; the PR merges were the owner's own action confirmed here, not performed
by this database.

Owner-authorised (Minda).
