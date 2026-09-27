# Workflow — Processing new items from Raw

**Database:** Fishbone Group
**Applies to:** every file or folder placed in `Raw/`
**Related:** `README.md` (structure), `Wiki/WIKI_GUIDELINES.md` (article rules), `CHANGELOG.md` (record of work)

The workflow moves an item through four states:

```
Raw (new) → Triaged → Extracted into Wiki → Archived + Logged
```

An item is "processed" only when all steps below are complete and a CHANGELOG ledger row exists for it.

---

## Step 0 — Orient (once per session)

1. Read `CHANGELOG.md` → **Current State** and **Processed Items Ledger**.
2. List `Raw/`. Compare each file's name and Drive file ID against the ledger.
   - Already in ledger with status `done` → skip.
   - In ledger with status `partial` or `blocked` → resume from the recorded step.
   - Not in ledger → new item, continue below.
3. Note the session start time; it goes into the Session Log at the end.

## Step 1 — Register

For each new item, add a ledger row to `CHANGELOG.md` immediately, before reading the content:

```
| <Drive file ID> | <original filename> | <detected date> | <today> | in-progress | — | — |
```

Registering first means that if the session is cut off, the next session knows the item was seen and where to resume.

## Step 2 — Triage

Open the item and decide, in under a minute:

| Question                         | Outcome                                                        |
|----------------------------------|----------------------------------------------------------------|
| Is it a duplicate of an archived item? | Mark ledger `duplicate-of <archived filename>`, move to Archive, stop. |
| Is it relevant to Fishbone Group?     | If not: mark `irrelevant`, move to Archive, stop.               |
| Is it readable?                       | If not (corrupt, scan needing OCR, password): mark `blocked: <reason>`, leave in Raw, add to Open Issues, stop. |
| What type is it?                      | Record one of: `contract`, `correspondence`, `financial`, `policy`, `project`, `people`, `supplier`, `site-record`, `meeting`, `other`. |

## Step 3 — Extract knowledge

Read the item fully. For each distinct fact, decision, entity, date or figure:

1. **Find the home article.** Search `Wiki/00_INDEX.md` for the topic. Prefer updating an existing article over creating a new one.
2. **Create if needed.** If no article fits, create one from the template in `WIKI_GUIDELINES.md` and add it to `00_INDEX.md` in the same step.
3. **Write the fact into the article** in the appropriate section, in your own words, concisely.
4. **Cite it.** Add the source to the article's **Sources** section using the citation format in the guidelines (archived filename + Drive link + date + page/sheet/section locator).
5. **Link it.** Wherever the fact mentions another entity that has (or should have) its own article — a person, project, supplier, site, policy — link to that article. If the target article does not exist yet, create a stub (title, one-line summary, Sources) so the link resolves.
6. **Resolve conflicts.** If the new item contradicts an existing Wiki statement:
   - The newer dated source normally wins; update the article and move the old statement to the article's **History** section with both citations.
   - If dates are unclear or the conflict is material (money, legal, safety), do **not** overwrite. Record both statements under a `⚠ Conflict` heading in the article and add to CHANGELOG **Open Issues** for a human decision.
7. **Record the edit** in each touched article's **History** section: date, what changed, source.

What *not* to extract: transient chatter, pleasantries, anything already captured, personal data beyond business role and contact details, and content that the item itself marks as draft or superseded unless the draft status is itself the useful fact.

## Step 4 — Archive

1. Rename the item to `YYYY-MM-DD_<original filename>` (processing date).
2. Move it from `Raw/` to `Archive/`.
3. Confirm the Drive file ID is unchanged (moves and renames preserve the ID) — this is what the ledger and Wiki citations point to.

For a Raw subfolder processed as a batch: rename the folder with the date prefix and move it whole.

## Step 5 — Log

Update the ledger row from Step 1:

```
| <Drive file ID> | <original filename> | <detected date> | <today> | done | <articles created/updated, comma-separated> | <notes> |
```

Then, at the end of the session, append a **Session Log** entry and refresh **Current State** in `CHANGELOG.md` (see the format in that file).

---

## Producing Outputs

Outputs are built only from Wiki content, never directly from Raw.

1. Identify the Wiki articles needed. If knowledge is missing, that is a Raw-processing task first, not an Output task.
2. Draft the Output in the required format (Doc, Sheet, PDF, deck).
3. Name it `YYYY-MM-DD_<Type>_<Subject>_v<N>.<ext>` and save it in `Outputs/`.
4. Inside the Output (footer, final slide, or a `Sources` sheet), list the Wiki articles used.
5. Log it in the CHANGELOG **Session Log**: filename, purpose, articles used.
6. Never edit a released Output. Corrections produce `_v<N+1>`.

---

## Rules that keep the system healthy

- **One item at a time, fully.** Do not half-process several items; a partial item must be marked `partial` with the step reached.
- **Ledger before content.** Register first, read second.
- **Never edit Raw or Archive files.** Extract, cite, move.
- **Every new article goes into `00_INDEX.md` in the same session.** An unindexed article is invisible.
- **Every session ends with a CHANGELOG update**, even if nothing was processed (log "no new items").
- **When in doubt, log it as an Open Issue** rather than guessing.

---

## Checklist (copy into your notes per item)

```
[ ] Registered in ledger (in-progress)
[ ] Triaged: type = ______
[ ] Facts written into Wiki article(s): ______
[ ] Each fact cited (Sources section)
[ ] Cross-links added; stubs created for missing targets
[ ] Conflicts resolved or raised as Open Issue
[ ] Article History sections updated
[ ] New articles added to 00_INDEX.md
[ ] Renamed YYYY-MM-DD_ and moved to Archive
[ ] Ledger row set to done with article list
```
