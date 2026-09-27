# Change Log — 2026-09-12 — Related-party facts cross-linking requirement adopted (house rules v1.3)

Independent analyst work product (Minda's Routines, Stage 2 rollout). This entry records the action
taken following Minda's decision on Part B item 3 of the Stage 2 Simplification & Centralization
Proposal: **"keep the three KBs separate but require cross-linking of related-party facts"** — deciding
against merging Fishbone Holdings Ltd, Fishbone Waste Ltd and Fishbone Construction Ltd, and choosing
Option 1 of the analyst's findings-and-options document filed to Minda's Outputs folder on 2026-09-12.

## What happened

1. Downloaded the live `Process-Fishbone-Systems-House-Rules.md` (v1.2, 22,751 bytes) from the Group
   database's Wiki folder and confirmed the decoded byte count matched Drive's reported `fileSize`
   exactly before editing.
2. Inserted a new §11, "Related-party facts — cross-linking requirement," between the existing §10
   (Collaboration Space & Smartsheet boundary) and what was §11 (Personal data). The new section states
   the rule Minda approved: before a KB states a fact about a related party (an intercompany balance, a
   loan's terms, a shareholding or PSC relationship, a subsidiary's trading, dormant or wound-up status),
   check whether that company has its own KB and, if so, read it and cite it alongside the filing
   company's own accounts or statements; a stub built from only one side says so explicitly rather than
   reading as settled; and disagreement between two KBs' figures is itself the finding to record, not
   something to resolve by guessing. It also requires that adopting or retiring a shared system that more
   than one KB's live-data-sources table names (the Loans database's 2026-09-11 retirement is cited as
   the worked example) trigger a check of every other KB's table that names it, not only the retiring
   system's own outbound references.
3. Renumbered the three sections after the insertion point: Personal data §11 → §12, Rollout §12 → §13,
   Change history §13 → §14.
4. Per house rules §7 rule 1, audited every section heading and every `§<n>` cross-reference in the
   document after the edit. Two internal cross-references needed updating for the renumbering (§0's
   "tracked below in §12" → §13; the new §11's own references to §7, §8, §6, §9 and §10 were all already
   correct as written). All other cross-references — to §1 through §10, and the historical section
   numbers recorded in the pre-existing v1.1 and v1.2 change-history entries, which correctly describe
   what a section was numbered *at that version* and are left as period-accurate history rather than
   updated — were confirmed to still resolve correctly.
5. Added the v1.3 change-history entry at the top of §14 (now the newest).
6. Archived the old v1.2 file (renamed with a dated, specific reason, moved to the Group database's
   `Archive/` folder) and uploaded the new v1.3 file under the original title, per the archive-then-recreate
   convention (§2). The new file's byte count (26,844) was confirmed to match Drive's reported `fileSize`
   exactly.
7. Wrote this change-log entry.

## What did NOT happen

No company's own `CLAUDE.md` was opened or edited. The new §11 takes effect for all seven companies and
the Group database immediately without any company file needing to change, the same way §8, §9 and §10
already work (per the document's own §0 and §8 logic). No Wiki article, Smartsheet sheet, or live KB
content in Fishbone Holdings Ltd, Fishbone Waste Ltd or Fishbone Construction Ltd was touched — the four
specific gaps the analyst's review surfaced (Holdings' one-sided subsidiary stubs on Construction and
Waste; the unresolved dormancy question behind Waste's ~£157,570 loan write-off; Construction's stale
pointer to the retired Loans database; Waste's own open question about its intercompany relationship,
already substantially answered inside Holdings' KB) remain exactly as the review found them. The new
section governs how the *next* session that touches any of them proceeds; it does not itself resolve any
of them. Option 3 (merging all three KBs) and the unresolved dormancy question were both explicitly
declined/deferred by Minda's own framing of her decision and are not acted on here.

## Files

- New `Process-Fishbone-Systems-House-Rules.md` (v1.3): [view](https://drive.google.com/file/d/1ktx9JkB-wCp0X2VVJCaJNhbvlBeIvR6j/view)
- Archived predecessor (v1.2): [`Process-Fishbone-Systems-House-Rules.md (archived 2026-09-12 0645, …)`](https://drive.google.com/file/d/1L1LiHrCc2wzJZXOOz_gGIEuJd6vI-foT/view)
- The analyst's findings-and-options document this decision responds to: [`2026-09-12_Holdings-Waste-Construction-restructuring-analysis.md`](https://drive.google.com/file/d/1RuG4W8neO--3qg-7gHaAbf3rGM97Vty0/view) (Minda's Outputs folder)

## What's next

This completes Part B item 3 and, with it, all of Part B and all of Stage 2 as proposed (Parts A and B).
The four specific gaps the analyst's review found remain open for whichever session next touches
Holdings, Waste or Construction to close under the new §11 rule; nothing here schedules that work. No
further stage of the Stage 2 Simplification & Centralization rollout has been requested yet.
