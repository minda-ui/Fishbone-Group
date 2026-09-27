# Wiki Guidelines — Fishbone Group

**Scope:** every file in `Fishbone Group/Wiki/`
**Related:** `../README.md`, `../WORKFLOW.md`, `00_INDEX.md`

The Wiki is the single source of truth for the database. It is a flat set of Markdown articles, one per topic, densely cross-linked, with every statement traceable to a source in `Archive/`.

---

## 1. What deserves an article

An article is created for any **durable entity or topic** that is referred to more than once or is likely to be:

| Category      | Examples                                                        | Filename prefix (optional) |
|---------------|-----------------------------------------------------------------|----------------------------|
| Organisation  | Fishbone Group itself, subsidiaries, divisions                  | `Org-`                     |
| People        | Directors, key staff, key client/supplier contacts (business role only) | `Person-`            |
| Projects      | Sites, contracts, tenders, jobs                                 | `Project-`                 |
| Clients       | Customers and their key facts                                   | `Client-`                  |
| Suppliers     | Subcontractors, suppliers, consultants                          | `Supplier-`                |
| Policies      | H&S, quality, environmental, HR procedures                      | `Policy-`                  |
| Finance       | Accounts structure, banking, insurance, key figures by period   | `Finance-`                 |
| Assets        | Plant, vehicles, property, licences, certifications             | `Asset-`                   |
| Processes     | How things are done internally                                  | `Process-`                 |
| Topics        | Anything else recurring (e.g. `Topic-Planning-Permissions`)     | `Topic-`                   |

Prefixes are recommended because they group related articles in the flat folder and in `00_INDEX.md`. They are not mandatory for existing articles, but be consistent once one is chosen.

Do **not** create an article for a single transient event; record it inside the relevant entity's article (e.g. a meeting goes into the project's Timeline).

## 2. Filenames and titles

- Filename: `Prefix-Title-Case-With-Hyphens.md`. ASCII letters, digits and hyphens only. No spaces, dates, or version numbers.
- The `# H1` title inside the file is the human title and may contain spaces and punctuation: `# Riverside Development — Phase 2`.
- Filenames are permanent. Renaming breaks links; if a rename is unavoidable, leave the old file as a one-line redirect (`Moved to [New Title](New-Title.md)`) and log it.

## 3. Article template

Every article uses this skeleton. Sections with no content yet are kept with the placeholder `_None recorded._` so the structure is predictable.

```markdown
# <Human Title>

**Type:** <Organisation | Person | Project | Client | Supplier | Policy | Finance | Asset | Process | Topic>
**Status:** <Active | Completed | Dormant | Superseded>
**Last reviewed:** YYYY-MM-DD
**Related:** [Article A](Article-A.md) · [Article B](Article-B.md)

## Summary
Two to five sentences. What this is and why it matters to Fishbone Group. A reader should be able to stop here.

## Key facts
- Fact one. [S1]
- Fact two. [S2]
- Figures, dates, identifiers, contacts (business only). [S1][S3]

## Details
Free-form sections as needed (e.g. ## Timeline, ## Scope, ## Commercial terms, ## Contacts, ## Risks).
Each paragraph or bullet ends with a source tag [Sn].

## Open questions
- Anything unresolved, contradictory, or awaiting a document. Mirror material ones in CHANGELOG Open Issues.

## Sources
[S1] `2026-09-03_Original filename.pdf` — Archive, https://drive.google.com/file/d/<ID>/view — doc dated 2026-08-28 — p. 3, §2.1
[S2] `2026-09-03_Email Re Riverside.eml` — Archive, https://drive.google.com/file/d/<ID>/view — sent 2026-08-30 — para 2
[S3] External: Companies House, https://find-and-update.company-information.service.gov.uk/company/<no> — accessed 2026-09-03

## History
- 2026-09-03 — Created from [S1]. (session 2026-09-03)
- 2026-09-10 — Updated contract value after [S4]; previous value £X recorded here. (session 2026-09-10)
```

## 4. Linking between articles

Links are what make the Wiki more than a pile of notes. The rules:

1. **Link on first mention.** The first time another Wiki entity is mentioned in an article, link it: `[Riverside Development](Project-Riverside-Development.md)`. Later mentions in the same article need not be linked.
2. **Link by filename, relative, within `Wiki/`.** Format is always `[Display text](Filename.md)`. No Drive URLs for internal links; Drive IDs change if files are recreated, filenames do not.
3. **No dangling links.** If the target does not exist, create a stub in the same session: H1, Type, Status, one-line Summary, Sources pointing to the item that prompted it, and an entry in `00_INDEX.md`.
4. **Link both ways where the relationship is meaningful.** If Project X links to Supplier Y, Supplier Y's article should list Project X under a `## Projects` or `## Related` heading. Use the `**Related:**` line in the header for the most important two to six links.
5. **Do not restate, link.** If a fact belongs to another article (a supplier's registration number, a director's role), link to that article rather than copying the fact. One fact, one home.
6. **Section links** are allowed when pointing to a specific heading: `[commercial terms](Project-Riverside-Development.md#commercial-terms)`. Heading anchors are lowercase, hyphenated.
7. **Index is the map.** `00_INDEX.md` lists every article with a one-line description. It is the only place where completeness is guaranteed, so it is updated in the same edit that creates an article.

## 5. Linking to sources (citations)

Every factual statement carries a source tag `[Sn]` that resolves in the article's **Sources** section.

Citation line format:

```
[Sn] `<archived filename>` — Archive, <Drive URL> — <document's own date or "undated"> — <locator>
```

- **Archived filename** is the `YYYY-MM-DD_` prefixed name as it appears in `Archive/`. This is the canonical key shared with the CHANGELOG ledger.
- **Drive URL** is the file's view link. Moving or renaming in Drive keeps the same ID, so this link survives archiving.
- **Document date** is the date the source itself bears (letter date, email sent date, report date), not the processing date.
- **Locator** is as precise as the format allows: page and section for PDFs and docs, sheet and cell range for spreadsheets, timestamp for recordings, message position for email threads.
- **External sources** (websites, registries, standards) use `External:` in place of the filename, with URL and access date. Prefer to also save a copy into Raw so it is archived.
- Source tags are numbered in order of first appearance and never renumbered; a removed source keeps its number with the note `(withdrawn: <reason>)`.
- A statement supported by multiple sources lists all tags: `[S1][S4]`.
- A statement with **no** source is not allowed in Key facts or Details. Unsourced material goes under **Open questions** with a note on where it came from (e.g. "verbal, per M. — needs document").

## 6. Writing style

- Plain English, short sentences, present tense for current facts, past tense for events.
- Neutral and factual. No opinions unless attributed and sourced.
- Figures with units and dates: `£1.25m (ex VAT), contract sum as at 2026-08-28 [S1]`.
- UK spelling and date format `YYYY-MM-DD` in metadata; prose may say "28 August 2026".
- Abbreviations are expanded on first use in each article.
- Personal data: business name, role, work contact details only. No home addresses, personal phone numbers, health, or financial details of individuals unless a documented business need exists.

## 7. Maintaining articles

- **Update in place.** New information goes into the existing article; the History section records what changed and from which source.
- **Superseded facts are not deleted.** They move into History with their citation, so the article shows how knowledge evolved.
- **Conflicts** (two sources disagree materially) are kept visible under a `## ⚠ Conflict` heading with both citations until resolved, and mirrored in CHANGELOG Open Issues.
- **Status field** is kept current: mark Completed projects, Dormant suppliers, Superseded policies.
- **Last reviewed** is updated whenever an article is read end-to-end and confirmed correct, even if nothing changed.
- **Periodic review:** at least quarterly, walk `00_INDEX.md`, open each article, check links resolve, check Sources point to files that exist in Archive, and update Last reviewed. Log the review in CHANGELOG.
- **Merging:** if two articles turn out to cover the same entity, keep the older filename, merge content and Sources (renumbering is not needed; keep both sets, prefixing the merged ones `[M-Sn]`), leave the other file as a redirect, update the Index, log it.
- **Deleting:** articles are not deleted. Set Status to Superseded and explain in Summary.

## 8. The index (`00_INDEX.md`)

Format, one line per article, grouped by Type, alphabetical within group:

```
- [Human Title](Filename.md) — one-line description. (Status)
```

The index also carries a short **Recently changed** list (last ten article edits, newest first) so a reader can see activity without opening CHANGELOG.

## 9. Quality checklist before saving an article

```
[ ] Filename follows convention and matches Index entry
[ ] Header: Type, Status, Last reviewed, Related
[ ] Summary readable on its own
[ ] Every fact has an [Sn] tag
[ ] Every [Sn] tag has a Sources line with archived filename, Drive URL, date, locator
[ ] Every other entity mentioned is linked on first mention
[ ] Every link target exists (or a stub was created)
[ ] History updated with today's date and session
[ ] 00_INDEX.md updated (new article or description change)
```
