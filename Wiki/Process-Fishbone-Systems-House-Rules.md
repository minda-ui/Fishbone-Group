# Process — Fishbone Systems House Rules (v1.3)

**Type:** Process
**Status:** Active — shared across all seven company Knowledge Bases and the Fishbone Group database
**Version:** v1.3
**Created:** 2026-09-11
**Related:** `Wiki/Process-Document-Numbering-and-Filing.md` (the canonical numbering & filing policy, referenced not duplicated below) · each company's own `CLAUDE.md`

## 0. What this document is, and isn't

Every one of the seven company Knowledge Bases (Construction, Properties, Commercial Properties, Holdings, Waste, Amfa Furniture, SSAS) and the Group database itself runs on the same underlying conventions — the same folder pattern, the same way of replacing a control file, the same numbering scheme, the same Wiki article discipline, the same change-log mechanics, and a shared governance baseline. Until now each `CLAUDE.md` carried its own full copy of these rules, repeated seven-plus times, in wording that had already started to drift apart between companies in small ways. That repetition is itself a risk: Amfa Furniture's KB independently invented its own document-numbering prefix because nothing forced it to check the real one first, a direct symptom of each KB holding its own copy of a rule that should be common.

This document is the **one place** these shared rules live. It does not replace any company's `CLAUDE.md` — each company's file stays the place for what's actually specific to that company (its directors, its accounts, its open questions, its own Raw/Wiki/Outputs/Archive contents, its own automation, and anywhere its practice genuinely and deliberately differs from the pattern below — see the note on Holdings' `Raw/` in §1). The intention is that each company's `CLAUDE.md` comes to hold only that company-specific material plus a link back here for everything general. That shrinking is a separate, gradual piece of work (tracked below in §13) — creating and extending this document does not itself change any of the seven `CLAUDE.md` files until a given company's file is actually rewritten to link here.

This document is maintained from the Fishbone Group database, the same way the numbering policy (§3) is. If something here needs to change, raise it the same way — flag it to the Group database's own session, or to Minda directly — rather than editing a local copy in a company KB.

This document was drafted by Minda's independent analyst engagement (Stage 2, Part A2 — see the `Minda` project folder for the audit and proposal it comes from). Minda authorised Part A's execution as a whole on 2026-09-11, and separately directed shrinking two companies' `CLAUDE.md` at once — Construction and Holdings — with a before/after report. The v1.1 additions below (§4–§7) were judgment calls made in service of that instruction: doing the shrink faithfully surfaced rules that were genuinely shared between the two companies' files but not yet captured here, so they were added here first rather than silently dropped from the shrunk files. This text has not been separately reviewed line-by-line by Minda and should be treated as a working draft until she has.

## 1. Folder structure (Raw / Wiki / Outputs / Archive)

Every KB — the Group database and each of the seven companies' own — follows the same four-folder pattern:

```
<KB root>/
├── CLAUDE.md      <- standing context an AI session reads first; company-specific content only, per §0
├── Raw/           <- source material exactly as received; never edited
├── Wiki/          <- one Markdown article per entity or topic
├── Outputs/       <- deliverables built from the Wiki
└── Archive/       <- processed Raw items and superseded control files
```

- **Raw/** is immutable — nothing already in it is ever edited. Corrections arrive as new files. Verbal information (from Minda or a director) is written up as `Raw/YYYY-MM-DD_owner-note_<subject>.md`, with the statement separated from commentary, so the Wiki can cite it precisely. **Whether a processed item stays in `Raw/` or leaves it once filed elsewhere is a company-specific choice, not a shared rule** — most KBs keep everything in `Raw/` permanently (an archive); Fishbone Holdings Ltd deliberately runs `Raw/` as an inbox instead, where a processed item moves out to its filed home and nothing lingers. Either is fine; state which one a KB follows in its own `CLAUDE.md`, since the two are genuinely different operating models, not just wording.
- **Wiki/** is flat — one article per entity or topic. Filenames use a prefix identifying the kind of article (`Org-`, `Person-`, `Project-`, `Client-`, `Supplier-`, `Policy-`, `Finance-`, `Asset-`, `Process-`, `Topic-` — a KB adds its own category names as its subject matter needs, per §4). See §4 for what every article must carry.
- **Outputs/** holds dated, versioned snapshots (`YYYY-MM-DD_<Type>_<Subject>_v<N>.<ext>`, or a KB's own `change-log-YYYY-MM-DD-<slug>.md` naming per §5), never edited after release. A standing always-current file is a deliberate, named exception, not the default.
- **Archive/** is never edited or deleted.

## 2. Archive-then-recreate (replacing a control file)

Drive files can't reliably be edited in place by the tooling these sessions use, so replacing any standing control file — `CLAUDE.md`, `README.md`, `WORKFLOW.md`, `open-issues.md`, `current-state.md`, `Outputs/kb-registers.md`, a Wiki article, or any other standing file that gets overwritten wholesale rather than appended to — follows one convention everywhere:

1. Rename the old file to `<title> (archived YYYY-MM-DD HHMM, superseded by <specific reason>)`, keeping the original file extension at the end.
2. Move it into that KB's own `Archive/` folder.
3. Upload the new file under the original title.
4. Never trash a superseded control file.

Two points of hygiene, learned the hard way in more than one KB: the archive suffix must name a **specific** reason, not the word "superseded" — done consistently, the `Archive/` listing becomes that file's own changelog, readable without opening anything; and if a KB mirrors to git, the Drive title and the git filename must match character for character, or the two `Archive/` listings can't be compared by name.

Because a control file's Drive id changes on every replacement, **reference control files by filename, never by Drive id**, in links from other articles or other KBs. **Dated change-log entry files (§5) are the one standing exception — they are never replaced at all, so they never enter this cycle.**

## 3. Document numbering & filing

The full scheme — one group Document Register (Smartsheet, sheet id `7352854736144260`), the `<PREFIX>` + 7-digit ID format, the per-entity prefixes (`FC` Construction, `FP` Properties, `FH` Holdings, `FW` Waste, `FA` Amfa Furniture, `FM` Commercial Properties, `FS` SSAS, `FG` Group), the 4-digit property-code sub-scheme, dedup-on-entry, filing, supersession, and the Change Requests feedback queue — is **not repeated here**. It lives in exactly one place: `Wiki/Process-Document-Numbering-and-Filing.md` in the Fishbone Group folder, currently **v1.3** (last updated 2026-09-10). That document is itself locked and versioned, with its own governance (§9 of that document) — deliberately kept separate from this one, because it changes on its own review cycle via the Change Requests queue, not by editing a company `CLAUDE.md`.

**Every company KB's `CLAUDE.md` should link to that document rather than restate any part of the scheme.** Restating it — even a short summary of the prefixes — is exactly the pattern that let Amfa's KB drift from the real scheme unnoticed. If a KB needs to explain the scheme to a reader, it links; it does not copy. A KB's own `CLAUDE.md` may still state its own prefix, its own adoption/version history in one line, and anything genuinely local (an old pre-existing local numbering scheme it is reconciling against, a local register it has retired) — that is company history, not a restatement of the rules.

## 4. Wiki article conventions

Every article, in every KB, carries the same discipline:

- One subject per article. Front matter mandatory: `title, category, status, sensitive, created, updated, sources, related`. Status is one of `draft | active | superseded | archived`.
- Every fact from a source is cited with a relative link to wherever that KB files its processed records (its `Raw/`, or its `Outputs/Correspondence/`, or equivalent — see §1's note on Holdings) and a location inside it, or the live source URL for a live dataset. Unsupported statements are marked `(unverified)`.
- Links between articles are relative, kebab-case, and bidirectional (`related:` on both ends). Link the first mention. Never link to `Outputs/`, and never link to a dated change-log entry as a source of fact — link to the document it cites instead.
- If a linked article doesn't exist yet, create a stub in `draft` status with an "Open questions" section, rather than leaving a dead link.
- Sensitive personal data (bank details, ID numbers, home addresses, anything that identifies an individual's personal finances) is never quoted into the Wiki — point to the underlying filed document and set `sensitive: true`.
- Keep a "Changes" section at the foot of every article naming the change-log entry that drove each edit. Bump `updated` on every edit.
- An article that records an unresolved question honestly is worth more than one that guesses: write it `draft`, state what turns on the answer, and say how to close it.
- **Claims are re-verified, not repeated.** A number or fact carried forward from an earlier session is not evidence on its own — before acting on it, recount or recheck it against the live source or the filed document if that's cheap to do. More than one KB has propagated a wrong figure for days because a later session trusted an earlier one instead of rechecking.

Each KB's own `Wiki/_templates/article.md` (and, where one exists, a longer `Wiki/Processes/` article on Wiki operations) gives the mechanical detail; this section is the rule every one of those must agree with.

## 5. Change-log file convention

**One file per session or run**, in `Outputs/`, named `change-log-YYYY-MM-DD-<slug>.md`. A second run the same day takes its own slug; a follow-up to an entry already written takes `-addendum`, then `-addendum-2`.

**An entry is written once and never edited.** That is the whole point of the design: no archive-then-recreate, no timestamped snapshots, no rewriting a large file to add a paragraph. If something in a past entry turns out to be wrong, write a **new** entry that references it — never go back and change the old one. The reader must be able to see what was believed at the time.

What does *not* go in a dated entry lives in `Outputs/kb-registers.md`, a standing file replaced by archive-then-recreate (§2) whenever a row is added:

| Table | Answers |
|---|---|
| `Change-log entries` | Every entry file, newest first. The chronology; filename sort does not give it, because same-day entries sort by slug, not time of day |
| `Processed items` | What has come through `Raw/`, where it went, and its status (`pending` / `partial` / `done` / `skipped`) |
| `Wiki structure changes` | When articles, categories or folders were created, renamed or repointed, and why |
| `Outputs produced` | Deliverables built from the Wiki, and who asked for them |

A Raw item counts as `done` only once its findings are in a Wiki article, not merely mentioned in a change-log entry — entries are write-once, so a fact that will keep changing is in the wrong place if it lives only there.

## 6. Shared governance baseline

Every KB — company or Group — draws the same floor under what a session may do unattended and what needs an explicit human decision. A company's own `CLAUDE.md` adds to this list (its own sensitive sheets, its own no-contact list); it never removes from it.

**May, without asking:** read Drive, Smartsheet, QuickBooks and other connected live sources; file documents into `Raw/`; create or update Wiki articles per the conventions above; rewrite standing `Outputs/` files; write new change-log entries; flag anomalies and risks inside Drive files.

**Must never do without an explicit human decision:** send, reply to, or forward external email (drafting for a human to send is fine); file anything with Companies House or HMRC; make or authorise a payment, or otherwise commit the company to an obligation; change Drive or Smartsheet sharing; delete anything from `Raw/`; resolve an ambiguous or contradictory finding by guessing.

If a routine's own prompt ever conflicts with this list, this section wins.

## 7. Maintaining any standing control file

Three rules that apply to `CLAUDE.md`, this document, and any other standing control file, each with a real failure behind it in more than one KB:

1. **Check the section list survives a replacement, and check outbound references too.** Before writing a new version, list the file's current headings; after writing it, confirm every heading is still present and every cross-reference resolves — then open every file the document points at and confirm it still contains what's claimed. A reference out of a control file is exactly as breakable as one inside it.
2. **Retract in place; never delete a claim that was believed.** A statement that turns out to be wrong gets struck through, dated and corrected — not silently removed. More than one KB has carried a fabricated or stale claim for over a week because nobody re-checked it and a later editor simply deleted it rather than showing the correction.
3. **Detailed rule sets live in the Wiki, not in the control file.** When a rule needs more than a short paragraph, it belongs in a `Wiki/Processes/` article, linked from the control file — the control file states the boundary, not the mechanism.

## 8. The propagate rule (both directions)

Adopted 2026-09-11, following two gaps the independent Stage-1 system audit found: a Group-level title resolution (open-issues.md OI-7) that took four days to reach the two source KBs whose own articles still read as open, and a live council liability (OI-14) that a source KB believed it had escalated to the Group but which had no actual tracked record for a day.

**Downward — Group resolves, source KB is told.** Whenever a Group-level session marks an issue Resolved in `open-issues.md`, and the underlying question also lives in a source KB's own Wiki article, that same session writes a short note into the source KB before finishing — not a full rewrite of that KB's article, just enough (a dated line, citing the Group resolution) that a reader of the source KB is not looking at a stale answer. If writing into a sister KB, this is done the narrow, sanctioned way: a new file into that KB's own `Raw/` inbox (per the numbering policy's §7a hand-off mechanism, where the item is itself a registrable document) or, for a plain propagation note that isn't a document in its own right, the same `Raw/` add-only channel with a covering note — never an edit to anything already in the sister KB.

**Upward — a KB escalates, and gets a number back.** Whenever a source KB's session believes it has escalated something to the Group as an Open Issue, it gets an actual `OI-<n>` row created in the Group's `open-issues.md` in that same session — not just a citation of a number it expects to exist. If the session can't confirm the row was actually created (for example, because the Group database wasn't reachable from that session), the item stays flagged locally as **"escalation unconfirmed"** rather than being treated as tracked. An unconfirmed escalation is followed up, not assumed to have landed.

This rule applies to every company KB and the Group database alike. It does not require any of the seven `CLAUDE.md` files to be rewritten to take effect — it is a rule about what a session does at the moment of resolving or escalating something, wherever that session runs.

## 9. Sandbox mode boundary

Adopted 2026-09-11, documenting a rule that already governs practice, following OI-12: a Sandbox financial-modelling "what if" exploration (a proposed dividend/loan-assignment transaction that was never actually booked) leaked into the live Loans Wiki records rather than staying separate, because at the time there was no structurally separate space for that kind of exploration. Minda has since created a dedicated **Sandbox mode** for financial-model exploration.

**The rule:** Sandbox artifacts — draft transactions, "what if" models, exploratory documents not yet decided or actioned — never enter the `Raw/` or `Wiki/` of a live KB. If a Sandbox artifact is found inside a live KB's `Raw/` or `Wiki/`, that is treated as a boundary breach to flag and correct (move it out, note what happened), not as a live finding to act on. Conversely, once something in Sandbox is actually decided and actioned, it enters the live KB the normal way — through `Raw/` as a genuine source item, registered and processed like anything else.

This applies group-wide: any company KB, or the Group database, that encounters a document that reads as exploratory or hypothetical rather than as a record of something that actually happened should treat it the same way OI-12 was ultimately treated — flag it, don't backdate or act on it, and check whether it belongs in Sandbox rather than in the live record.

## 10. Collaboration Space & Smartsheet boundary

Adopted 2026-09-12, per Stage 2 Part B (Minda confirmed: "As described"). Collaboration Space and Smartsheet are not knowledge bases — they hold live operational reality, not a KB's own record of it. Both are already treated this way in practice; this section is where that boundary gets written down once, so it doesn't drift as new companies or new document types get added.

**Collaboration Space** is the source of operational documents — invoices, correspondence, day-to-day paperwork, per company. A KB cites specific documents from it (by relative link or filename, never by Drive id, per §2) but never re-files, copies, or duplicates the whole folder into its own `Raw/` or `Outputs/`. A KB's job is to make sense of what's in Collaboration Space plus the statutory accounts — narrating and citing — not to become a second, slower copy of Collaboration Space itself.

**Smartsheet** holds live working data — property registers, order trackers, loan schedules, task lists. A KB never copies a Smartsheet figure into prose without (a) a citation to the specific sheet the figure came from, and (b) a "read live, don't trust a stale figure" reminder next to it — Smartsheet data changes daily, and a KB's snapshot goes stale the moment it's written. This is the same discipline as §4's "claims are re-verified, not repeated," applied specifically to Smartsheet's live figures.

This applies to every company KB and the Group database alike, the same way §8 and §9 do — it does not require any `CLAUDE.md` to be rewritten to take effect.

## 11. Related-party facts — cross-linking requirement

Adopted 2026-09-12, per Stage 2 Part B item 3 (Minda confirmed: "keep the three KBs separate but require cross-linking of related-party facts"), following the independent analyst's read-only review of Fishbone Holdings Ltd, Fishbone Waste Ltd and Fishbone Construction Ltd. That review found the group's KBs recording facts about each other — an intercompany loan balance, a PSC/shareholding relationship, a company's trading or dormancy status — built from one side's own accounts and bank statements alone, with the counterpart's own KB, where one exists, never opened to check it. One instance sat behind a real money decision (a loan balance written off as unrecoverable on a dormancy claim the borrower's own KB didn't support), and a second was a stale pointer to a shared system that had been retired the same day another KB was still citing it as authoritative. Neither gap would be caught by a KB checking only its own outbound references (§7 rule 1) or by the propagate rule (§8), because both of those work within one KB's own document at a time; a fact that is really about two companies needs a rule of its own.

**The rule:** before a KB states a fact about a related party — an intercompany balance, a loan's terms, a shareholding or PSC relationship, a subsidiary's trading, dormant or wound-up status, or anything else that is really a fact about a different company — check whether that company has its own KB. If it does, read it (or the specific Wiki article on point) before writing the fact, and cite it alongside whatever the filing company's own accounts or bank statements show. A stub or subsidiary-entity article that is knowingly built only from one side (a lender's own bank statements, say, without having opened the borrower's own KB) says so plainly in the article itself — `(unverified against <company>'s own knowledge base)` — rather than reading as settled. If the two sides disagree, that disagreement is the finding, not something to average away or resolve by guessing (§6 already forbids the latter); record both figures, cite both sources, and flag it as open.

The same check runs the other way when a shared system is adopted or retired, not just when a company KB is first written: whoever adopts or retires a system that more than one KB's live-data-sources table names (the Loans database's 2026-09-11 retirement, for instance) checks every other KB's live-data-sources table for a reference to it, not only the retiring system's own outbound references — otherwise a KB can end up citing something as "authoritative" the day after it stopped being maintained, with nothing in that KB's own maintenance cycle able to catch it.

This applies to every company KB and the Group database alike, the same way §8, §9 and §10 do — it does not require any `CLAUDE.md` to be rewritten to take effect. It does not, by itself, resolve any specific fact already in dispute between two KBs (the dormancy question above, for instance, still needs someone to open the borrower's own accounts and bank records) — it only says that the next session to touch a related-party fact checks the other side first, rather than after.

## 12. Personal data (shared minimum)

Every KB and the Group database record business name, role and work contact only, plus company/scheme-level identifiers (company numbers, UTRs, VAT, EORI, PSR/PSTR, title numbers, directors' names and, where disclosed in statutory accounts, directors' loan balances — public company information). None of them copy passports, driving licences, NINOs, personal UTRs, credit reports, payslips/P60s, personal bank-account numbers, or directors' personal circumstances into a register or a Wiki article. This matches the numbering policy's own §10 and is restated here because it applies beyond just registered documents — to any Wiki article or note, in any KB.

## 13. Rollout

Two companies' `CLAUDE.md` files have been shrunk to link here, as a paired first pass so Minda can compare before and after on two different KBs at once: **Fishbone Construction Ltd** (chosen as the cleaner template — conformant, actively maintained) and **Fishbone Holdings Ltd** (uhosen as the company that needed it most — the A4 conformance check found stale process-doc references there). Both were done 2026-09-11; see the before/after report filed alongside this document's change for the detail of what moved and what stayed.

The remaining five companies' `CLAUDE.md` files (Properties, Commercial Properties, Waste, Amfa Furniture, SSAS) still carry their own full copy of the rules this document now holds. Shrinking each is intentionally gradual — agreed with Minda as part of the Stage 2 proposal — and happens one (or, as with this pair, a small deliberate batch) at a time, not as a single pass across all seven. Which company or companies go next, and when, is a decision for Minda; nothing here pre-empts it.

Until a given company's `CLAUDE.md` is updated to link here, this document's rules already apply to that company in practice (per §0 and §8) even though that company's own file hasn't yet been shortened to say so.

## 14. Change history

- **v1.3 — 2026-09-12.** Added the related-party facts cross-linking requirement (§11), per Stage 2 Part B item 3 — Minda confirmed "keep the three KBs separate but require cross-linking of related-party facts," deciding against merging Fishbone Holdings Ltd, Fishbone Waste Ltd and Fishbone Construction Ltd following the independent analyst's read-only review of those three KBs. The new section requires a KB to check a related party's own KB before stating a fact about it (an intercompany balance, a PSC relationship, a trading or dormancy status), and requires that adopting or retiring a shared system trigger a check of every other KB's live-data-sources table that names it. Personal data (previously §11) renumbered to §12, Rollout (previously §12) to §13, Change history (previously §13) to §14. No other section's content changed.
- **v1.2 — 2026-09-12.** Added the Collaboration Space & Smartsheet boundary (§10), per Stage 2 Part B — Minda confirmed "As described." Carries the two rules from the Stage 2 proposal essentially verbatim: a KB cites Collaboration Space documents but never re-files or duplicates the whole folder, and a KB never copies a Smartsheet figure into prose without a citation and a "read live, don't trust a stale figure" reminder. Personal data (previously §10) renumbered to §11, Rollout (previously §11) to §12, Change history (previously §12) to §13. No other section's content changed.
- **v1.1 — 2026-09-11.** Added, in service of Minda's instruction to shrink two companies' `CLAUDE.md` files at once with a before/after report: Wiki article conventions (§4), the change-log file convention (§5), a shared governance baseline (§6), and the three rules for maintaining any standing control file (§7) — all three previously repeated near-identically in each company's own file. §1 gained an explicit note on Holdings' deliberately different `Raw/`-as-inbox model, so the shrink doesn't silently flatten a genuine operational difference into a false uniformity. §11 (Rollout) records the first two companies shrunk.
- **v1.0 — 2026-09-11.** Created. Folder structure, archive-then-recreate, a link (not a copy) to the numbering & filing policy, the propagate rule, the Sandbox boundary, and the shared personal-data minimum. Drafted under Minda's independent analyst engagement, Stage 2 Part A2, under her authorisation to execute Part A; first draft, not yet line-by-line reviewed by her.
