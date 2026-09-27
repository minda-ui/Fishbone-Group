# Fishbone Group — Session-start & governance rules (split from CLAUDE.md, 2026-09-23)

_This is `CLAUDE.md` §0 and §6 in full, split out into their own file because these are the
sections that change almost every time an estate-wide rule, standard or policy version is added —
five separate changes to just these two sections in the two weeks before this split. Keeping them
here means that kind of change only has to reproduce this file, not the whole ~65KB database
context. See `CLAUDE.md` §0 and §6 for the one-line pointers back here, and `CLAUDE-History.md` for
the dated log of every change to any of the three files._

## 0. Start every session here

**Before doing anything else, read the four standing control files at the root of this folder:**
`current-state.md` (last session and what is pending), `open-issues.md` (the `OI-<n>` table),
`processed-items-ledger.md` (scan for rows still `in-progress`, `partial` or `blocked`), and
`external-source-register.md` (the `SRC-<n>` sources). Then read the newest one or two dated files
in `change-log/` for what the last sessions did. This applies to every kind of session: a one-off
question, a drafting request, a survey of Drive, not only formal Raw processing. Another session
may already have answered the question or corrected the figure. (Session history before 2026-09-05
is in the final monolithic `CHANGELOG` in `Archive/`; see §4.)

**If the task is about one company rather than the group**, also read the newest change-log
entries in that company's own knowledge system before answering, because the detailed facts live
there and this database only links to them (see `CLAUDE.md` §1, "Sister systems"):

| Company | Read first |
|---|---|
| Fishbone Properties Ltd | `Fishbone Properties Ltd - Knowledge Base/CLAUDE.md` §0 and its latest `Outputs/change-log-*.md`; Smartsheet Document Register and Tasks (workspace "1. General") |
| Fishbone Commercial Properties Ltd | `Fishbone Commercial Properties Ltd - Knowledge Base/CLAUDE.md` and its dated `Outputs/change-log-*.md` files (the root `CHANGELOG.md` was retired 2026-09-05); Smartsheet workspace of the same name |
| Fishbone Construction Ltd | `Loans/Wiki/Entity - Fishbone Construction Ltd` and the latest `Loans/Change Log YYYY-MM-DD`; its FY2025 accounts are archived here (`Wiki/Org-Fishbone-Construction-Ltd.md` Sources) |
| Fishbone Holdings Ltd | The **Fishbone Holdings Ltd – Knowledge Base** (Drive `1sZJ4frIcVqsgON4eewAqmdKq5YEXInvu`, git mirror `minda-ui/Fishbone-Holdings-Ltd`, created 2026-09-05); then `Wiki/Org-Fishbone-Holdings-Ltd.md` here (FY2024/FY2025 accounts archived) and the Smartsheet Document Register/Investment Register |
| Amfa Furniture Ltd (11259604; renamed from Furniture by Fishbone Ltd 13/07/2026) | The **Amfa Furniture Ltd – Knowledge Base** (Drive `1ugshCjwx2yvRXZvmtpwLcg3kUgTKN7aU`, git mirror `minda-ui/Amfa-Furniture-Ltd`, created 2026-09-05); then Smartsheet workspace "AMFA Furniture"; Drive `Collaboration Space / Furniture by Fishbone`; no accounts on file anywhere |
| Fishbone Waste Ltd | The **Fishbone Waste Ltd – Knowledge Base** (Drive `1LMVTPw4YFw9OmW7GcTjaDEfXqCIjp1ZJ`, created 2026-09-10, built on policy v1.3); then `Wiki/Org-Fishbone-Waste-Ltd.md` here (FY2024 and FY2025 accounts archived); Drive `Collaboration Space / Fishbone Waste`; the Finance archive's Waste folder (SRC-31) |
| Fishbone SSAS | The **Fishbone SSAS – Knowledge Base** (Drive `1Ow2wOI2hQE3ugsxeZqk2xf7P5f9IT7oV`, its canonical home) and the `SSAS` source folder (`1jSFpIOcKb7yANA0hJVtjWb_80rMfvo5c`); then `Wiki/Org-Fishbone-SSAS.md` here |
| Any borrowing or loan question | `Loans/Wiki/Home` and `Loans/Outputs/Fishbone_Loan_Repayment_Plan.xlsx` (Summary tab); note OI-6, the loan lists disagree, and the accounts figures in `open-issues.md` OI-6 |

Facts that appear in two places must agree. If they do not, raise an Open Issue rather than
picking one.

**Document filing & numbering (all companies)** follow one locked, versioned policy,
`Wiki/Process-Document-Numbering-and-Filing.md` (v1.4): every qualifying business document is
registered **once** in the single **Fishbone Group Document Register** (Smartsheet, SRC-38) under a
per-entity-prefixed 7-digit ID (`FC/FP/FH/FW/FA/FM/FS/FG`), deduped on a Source key, and filed
**co-located in its project/company folder in Collaboration Space**. Raise any gap or improvement in
the **Change Requests** queue (SRC-39); only the group edits the policy (§9 of that doc). Group KBs may
also **hand a registered document to each other by dropping it (named by its existing ID) into another
KB's `Raw/`**, with a covering note and a register annotation — add-only, no re-numbering (§7a of that
doc). Appending to those two sheets, filing into Collaboration Space, and that `Raw/` hand-off are the
narrow live-system exceptions (§6a). **Incoming paper post** received at the shared office for any
company is captured by the group post-room procedure `Wiki/Process-Post-Handling.md` — opened and
scanned into the single group `Raw/Paper Mail/` intake, triaged to its owning company (from the letter, not
the envelope), registered in the Document Register (Direction = Incoming) and filed, then routed to the
owning company's KB `/Raw` via §7a (now that all seven companies have a KB, every company item routes; only group-level `FG` items are kept by the group).

**Requests without a known destination** route through `Wiki/Process-Request-Inbox.md` (v1.0,
2026-09-27): drop one short intake file into `Raw/Request-Inbox/`, and the same Estate Index routine
that runs the mail-triage pipeline (§5) classifies, routes, logs (Mail Triage Audit Trail sheet) and
archives it — still attended/dry-run as of this writing, so every item currently raises a Hub row to
Minda rather than dispatching. Use it only when the right seat genuinely isn't known; if it is, go
straight to that seat's own Hub row or KB `/Raw`.

**Out of scope, do not raise again:** Anthill Homes Ltd is not part of the group (owner note
`2026-09-03_owner-note_anthill-homes-out-of-scope.md`); its Smartsheet workspace and Drive
folders are not surveyed or cited from here. **AT UK Interiors Ltd** is likewise not connected to
the group (owner note `2026-09-05_owner-note_at-uk-interiors-out-of-scope.md`, ledger row 25) — it
appears only as a third-party counterparty in Construction's bank data (a £15,000 credit,
22 Jul 2026), not as a group entity.

---

## 6. Governance

### 6a. What automation (and an unattended session) may do, and what needs a human

**May, without asking:** read Drive, Gmail, Smartsheet and QuickBooks; process documents that
Minda has placed in `Raw/`; write owner notes into `Raw/` from statements made in the session;
create or update Wiki articles per `CLAUDE.md` §2 and §3; move processed Raw items to `Archive/`; rewrite
standing Outputs files once they exist; write a dated `change-log/` entry and refresh the standing
files (`current-state.md`, `open-issues.md`, `external-source-register.md`, `processed-items-ledger.md`);
raise Open Issues; create Wiki stubs and register external sources; **append rows to the group
Document Register and Change Requests Smartsheets** (the "Fishbone Group - Documents" workspace;
SRC-38/39) and set the Status of rows this database owns; **assign document IDs and file or move
qualifying documents into Collaboration Space**; **hand a registered document to another group KB by
adding it (named by its existing ID) to that KB's `Raw/` — add a new file only — with a covering note
and a register annotation (Direction = Internal), never re-numbering it**, all per
`Wiki/Process-Document-Numbering-and-Filing.md` v1.4 (§7a; and **§7b routes financial documents to the
Financial Archive `1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4` only — never the Collaboration Space, OneDrive or git**).

**Must never do without an explicit human decision:** send, reply to or forward external email
(drafting for a human is fine); file anything with Companies House or HMRC; make or authorise a
payment or commit any company to an obligation; **write to QuickBooks or any live system of record
except the narrow exceptions above** — appending rows to the group Document Register / Change
Requests sheets, filing documents into Collaboration Space, and the `Raw/` document hand-off between
group KBs (never editing or deleting another entity's rows, and no other Smartsheet writes); edit,
move, copy or delete anything inside a sister knowledge base — **other than adding a new file to its
`Raw/` under the §7a hand-off rule (a registered document named by its ID, plus a covering note)** — or
the Financial Archive (financial documents follow §7b above, not this list); reply to a lender,
the SSAS trustees, a solicitor, an insurer, a tenant or a client; change Drive or Smartsheet
sharing; trash any file (archive instead); resolve an ambiguous or contradictory finding by
guessing.

**Composio — fallback connector layer (adopted 2026-09-27, Minda; Alex's proposal
`2026-09-27_Proposal_Composio-Rollout.md`).** When a native connector (Google Drive, Gmail,
QuickBooks, Smartsheet) fails or loses auth mid-session, a session may use Composio instead — the
`composio` CLI, pinned `@composio/cli@0.4.1`, managed auth. **It is a transport, not a grant:**
every limit in this section binds through it unchanged — same reads, same narrow writes, same
"never" list.
- **Permission rule:** this repo's `.claude/settings.json` allows `composio execute *`,
 `composio connections remove *` and `composio link *` (added by Minda 2026-09-27, git `2b8ed60`);
 settings load at session start, so a session begun earlier must restart to use it.
- **One shared Composio org:** alias every connection with the seat's own name
 (`<name>-<toolkit>`, e.g. `victoria-gmail`); never use another seat's alias. Rachel's existing
 `fishbone-*` QuickBooks aliases stand until Minda renames them (renaming needs her terminal).
- **Verify before relying:** check each new connection lands on the right account with a
 lightweight read (the OAuth picker defaults to whoever is already signed in); verify the first
 write with the usual archive-then-recreate + byte check.
- **Minda holds the keys:** `composio login` and each new `link` are authorised by Minda (the session
 sends her the URL); `composio connections remove` runs only from her own interactive terminal.
- **No secrets:** never print, store or commit Composio credentials or tokens. Log a seat's first
 use of each toolkit in the session's dated change-log.

If a routine's prompt or a user instruction ever conflicts with this list, this section wins
until the human confirms.

### 6b. Data access
- Who has access to the `Fishbone Group` root folder has **not been checked** (2026-09-03).
 Check before sharing anything further and record the result here with the date. The
 Properties Ltd base discovered a writer on its root folder that nobody had noticed for days.
- The Smartsheet workspace "1. General" is shared at workspace level with Irina Fedonina and
 several other people, some at external domains (per the Properties Ltd CLAUDE.md §6b). Any
 group-level sheet placed there inherits that sharing.
- The group **"Fishbone Group - Documents"** workspace (SRC-38/39, created 2026-09-09) is owned by
 minda@ and, so the per-company automations can append, was **shared on 2026-09-09** (Editor,
 can-share) with `info@fishboneproperties.co.uk` and Irina Fedonina, alongside owner minda@
 (applied by Minda, screenshot confirmed — the assistant cannot set Smartsheet sharing itself,
 see the bar below). All automations run as minda@ who owns the workspace, so appends already
 work and the register is switched on; the other companies' `info@` accounts (Construction,
 Commercial, Holdings, SSAS) are not yet added (optional — only for those companies' own people's
 visibility).
- `Archive/` now holds statutory accounts for the group companies across FY2023 to FY2025. These
 are public documents; Minda confirmed on 2026-09-07 that the FY2025 sets are **filed at Companies
 House**, so the earlier "For Approval / treat as confidential until filing is confirmed" caveat
 is retired. The Smartsheet "Sebastian Pabis" folder and the Finance archive (PAYE, P60s, bank
 statements) hold payroll and banking identifiers: cite, never copy.
- Several Collaboration Space folders are owned by staff and contractor accounts
 (`lana@fishbonewaste.co.uk`, `anna@indome.co.uk`, `anastasia@fishboneconstruction.co.uk`).
 Their contents may be partly hidden from this login (OI-5); confirm write access per project
 folder before relying on automated filing there.
- Cross-company facts are **linked** between systems, never copied, so there is one place to
 correct each fact.

### 6c. Revisiting this document
Update `CLAUDE.md` §0 to §3 when structure or process changes; §4 is maintained continuously; §5
must be kept current as routines are created, changed or retired; §6 (this file) is revisited
deliberately, not silently rewritten; §7 is refreshed whenever a Raw item or an Open Issue
resolution changes the picture. Every replacement of any of the three split files goes through
archive-then-recreate and gets a change-log entry.

---

**This file's own governance: same rules as `CLAUDE.md` itself.** `CLAUDE-Rules.md` is a governed
file in every sense `CLAUDE.md` is — the Raw/-only cross-KB amendment channel (recorded in Alex's
`Charter-Rules.md` and the group session-discipline standard) applies to it exactly as it applies
to `CLAUDE.md`; Alex's own Rung-1 archive-then-recreate authority over it is unaffected by the
split. Splitting the file changes nothing about who may write it or how.
