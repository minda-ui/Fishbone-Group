# Fishbone Group — Housekeeping & Updates Improvement Plan (for implementation) · v1

**Type:** Plan / Output (dated snapshot; supersede with v2, never edit in place).
**Status:** Drafted 2026-09-14 for owner decision. Nothing in it changes any live system, any sister
KB, or any governance boundary **until you (Minda) authorise a rung of §5**. Author: Claude, for
minda@fishboneconstruction.co.uk.
**Related:** `CLAUDE.md` §0/§2/§4/§5/§6a; `WORKFLOW.md`; the AI Workforce Plan v3
(`Outputs/2026-09-14_Plan_AI-Workforce_v3.md`, employee #9); the Group master-index sync routine (§5);
the SessionStart PDF-toolkit hook standard (2026-09-12).

You said it plainly: *"Often sessions not documented, .md not updated, folders in a mess … we only
started creating the team, I don't even know how the whole system will look if we keep the same
housekeeping."* This plan takes that seriously. It (1) says **why** housekeeping is slipping, (2)
proposes a fix in **four layers** — cheapest and safest first — (3) reframes the planned employee #9
from a triage-only role into a **Housekeeping & Operations Steward** that can actually *sort and fix*,
and (4) gives you a **control-release ladder**: exactly what permission each capability needs, in
order, so you can see where to start letting go — and stop at any rung.

---

## 1. Why housekeeping is slipping (the honest diagnosis)

The discipline isn't failing because anyone is careless. It's failing because of how the work is
shaped:

1. **Housekeeping happens last, when the tank is empty.** A session spends its budget on the real
   task; documenting it, refreshing `current-state.md`, archiving predecessors and tidying folders all
   fall at the *end*, exactly when context and attention are lowest. Anything that depends on
   end-of-session willpower will be skipped some of the time — and "some of the time" compounds.

2. **It relies on memory, not on the tooling.** "Every session writes a change-log file and refreshes
   `current-state.md`" (`CLAUDE.md` §4) is a *rule a human/agent has to remember*. Nothing checks it.
   The one thing that IS enforced by tooling — the SessionStart PDF hook — works every time precisely
   because it doesn't depend on anyone remembering.

3. **The estate grew faster than the routine.** We now have **twelve knowledge systems** (the group +
   seven company KBs + Peter + Eugene + Helen) each carrying the *same* four control files and the
   *same* archive-then-recreate rule. That's ~48 control files and a dozen `change-log/` folders that
   must each stay current. The housekeeping burden scaled with the estate; the *mechanism* for
   housekeeping (manual, per session) did not.

4. **Archive-then-recreate is easy to half-do.** Because Drive files can't be edited in place, every
   update means rename-old -> move-to-`Archive/` -> upload-new. Skip the archive step and you get **two
   live copies in the folder root** — exactly the "folders in a mess" symptom. It has already bitten
   this database (the 2026-09-03 trash-instead-of-archive slip; the current-state duplicate-row slip).

5. **No single owner.** Every session is *supposed* to tidy up after itself, which means **no one**
   owns tidiness across the estate. Shared responsibility with no backstop is how drift accumulates
   unseen — the same reason the Properties KB carried a phantom "known bug" for 17 days.

**Conclusion.** Housekeeping is not a chore to be squeezed into the end of each session. It is a
**standing function** — like data collection or content — and it needs the same treatment: make the
right thing the easy thing (templates), catch drift automatically (hooks + a routine), and give it a
**named owner** with **enough rights to actually fix**, not just flag.

---

## 2. The design principle

Mirror what already works for the workforce: **one group-level function, applied across the whole
estate, most of it automatic, with a human holding the release valve.** Concretely, four layers,
each cheaper and safer than a human doing it by hand, deployed in order:

> **Convention → Hook → Routine → Steward.**
> Make it easy (templates), make it checked (a session-end hook), make it swept (a detection routine),
> and give it an owner who fixes (the Steward). The first three cost **no new permission** and can
> start now. Only the Steward's *fixing* reach into other KBs needs you to release control — and that
> is laid out rung by rung in §5.

---

## 3. The four layers

### Layer 1 — Conventions & templates (make the right thing the easy thing). *No permission needed.*

- **A "Definition of Done" for every session**, one short block added to each KB's `CLAUDE.md`/charter
  §0: *a session is not finished until (a) `current-state.md` reflects it, (b) a dated `change-log/`
  entry is written, (c) every file it superseded is in `Archive/` (never trashed, never left beside
  its replacement), and (d) any new Open Issue is logged.* Naming the finish line is half the fix.
- **Fill-in templates** for the four control files and the dated change-log, stored once per KB (e.g.
  `change-log/_TEMPLATE.md`). Copying a template beats composing from memory and keeps every KB's files
  the same shape — which is what makes an automated sweep possible.
- **A byte-verify habit line** in the archive-then-recreate rule: after every recreate, confirm
  uploaded `fileSize` == local, zero U+FFFD, `£` preserved. (Already learned; make it standing.)

### Layer 2 — A SessionStart/SessionEnd hook (make it checked). *No permission needed — code we own.*

We already ship a SessionStart hook in all eight KB repos (the PDF toolkit). Add a **housekeeping
check** to the same mechanism:
- **On session start:** print the last `change-log/` date and the `current-state.md` "last session"
  line, so the agent *sees* immediately whether the previous session closed itself out.
- **On session end (Stop hook):** a non-blocking reminder — *"Did this session write a `change-log/`
  entry and refresh `current-state.md`? Are there two copies of any control file in the root?"* — plus
  a one-line **drift check** (does any control-file basename appear more than once outside `Archive/`?).
- **Idempotent, best-effort, remote-only**, exactly like the PDF hook, so it never blocks a session.

Eugene owns writing and testing this (it's code); it ships on a branch per repo and goes live when
merged, same as the PDF-toolkit hook. **This is the highest-leverage, lowest-risk item and should go
first.**

### Layer 3 — A Housekeeping sweep routine (make it swept). *No new permission — read-only, like today's digest.*

Extend the pattern of the existing **Group master-index sync** (weekly, read-only, writes a digest and
raises Open Issues). Either fold this into that routine or run a dedicated **weekly Housekeeping sweep**
that, read-only across the estate, reports:
- KBs whose newest `change-log/` entry is older than their newest Drive activity (**undocumented
  sessions**);
- `current-state.md` files that haven't moved though their KB has (**stale state**);
- **duplicate control files** in a root (archive-step skipped);
- **orphans / dead links / stub articles**, un-migrated back-catalogues, Sources URLs that no longer
  resolve;
- a short **drift table** per KB (green = clean, red = needs a tidy pass).

It **writes `Outputs/YYYY-MM-DD_Digest_Housekeeping_v1.md` and raises Open Issues** — it does **not**
auto-fix. That keeps it inside today's rules (read-only to sister KBs). It is the eyes; the Steward
(or a human) is the hands.

### Layer 4 — The Housekeeping & Operations Steward (make it owned). *Needs permission — see §5.*

A named AI employee whose whole job is the tidiness and currency of the estate — the "librarian".
Detail in §4. Layers 1–3 make its job small and safe; without Layer 4 there is still no one who
actually *does the fixing* across twelve systems, so drift still accrues between human sessions.

---

## 4. Employee #9, reframed: the Housekeeping & Operations Steward

You're right that a **triage-only** employee makes little sense — routing a problem without being able
to resolve it just moves the sticky note. So merge the two needs you raised (someone to **sort things**
+ someone for **housekeeping and updates**) into **one operations employee**:

**Function.** Keep every Fishbone knowledge system **documented, current and tidy**, and **own the Help
& Lessons desk** — the two are the same instinct (notice what's out of place, put it right or route it).

**What it does (its beats):**
1. **Housekeeping sweep + fix.** Consume the Layer-3 drift digest and *act on it* within its permitted
   reach (see §5): write the missing change-log stub from a session's actual Drive changes, refresh a
   stale `current-state.md`, archive a predecessor left in a root, fix a dead link, de-duplicate a
   folder. Mechanical, reversible tidying — never changing the *substance* of anyone's facts.
2. **Help & Lessons triage/sort.** Watch new `Open` rows on the Help & Lessons sheet; answer or route
   the common ones (which company, which KB, which policy — e.g. Peter's FlexiLoan email), escalate the
   genuinely ambiguous to you, and bake durable answers into the right charter.
3. **New-employee & convention conformance.** Check each KB still matches the standard shape (four
   control files, templates, hook installed); flag or fix drift from the pattern.

**Governance tier — Inward, but the first with a *cross-KB janitorial* reach.** This is the important
part: every other employee writes only to *its own* KB (plus the narrow §7a `Raw/` hand-off). The
Steward is the first that legitimately needs to *reach into other KBs to tidy them*. That is a genuine
widening of control, which is exactly why it goes out **rung by rung** (§5) and never all at once. It
still **never** sends outward, files with a registrar/HMRC, writes to a system of record beyond its own
Hub rows, holds a secret, or edits the *substance* of anyone's Wiki facts — it proposes those; a human
or the owning employee commits them.

**Placement.** This replaces the "Triage / Problem-sorting" candidate (#9) in AI Workforce Plan v3 with
a broader **Housekeeping & Operations Steward (includes triage)**. Given your "serious issues" framing,
its **build priority should rise** — I'd argue it comes *before* Quantity Surveying, because it makes
every subsequent hire cheaper to keep tidy. Your call; noted as an open decision in §7.

---

## 5. The control-release ladder — where you start releasing control

This is the part you asked for: *"tell me where permission is needed, so I can see where we can start
releasing control."* Each rung says **what it unlocks**, **what it risks**, **the guardrail**, and
**how to undo it**. You can authorise them one at a time and **stop at any rung**. Nothing past Rung 0
happens without your explicit yes.

| Rung | Capability unlocked | Whose rule it touches | Risk | Guardrail | Rollback |
|---|---|---|---|---|---|
| **0 — Detect & propose** *(no permission; do now)* | Layers 1–3: templates, the session hook, and the read-only sweep that **reports** drift and raises Open Issues. Steward (if built) runs **read-only**, proposing fixes a human applies. | None — inside today's `CLAUDE.md` §6a (read Drive; write only this group KB's own files; raise Open Issues). | Effectively none. | It's read-only + advisory. | n/a |
| **1 — Fix the group KB itself** *(low)* | Steward may perform the mechanical fixes **within this group database** unattended: write a missing change-log stub, refresh `current-state.md`, archive a predecessor left in the root, fix a dead link here. | Already permitted for this DB by §6a; the release is just *doing it unattended on a schedule*. | Low — same edits an ordinary group session already makes. | Archive-never-trash; every action logged in `change-log/`; weekly review. | Restore from `Archive/` (nothing is ever deleted). |
| **2 — Janitorial write into sister KBs** *(the first real release)* | Steward may make **mechanical, reversible, non-content** fixes in the *other* KBs: archive-then-recreate a superseded control file, move a processed `Raw/` item to `Archive/`, de-duplicate a folder, fix a dead link — **never** editing the substance of a Wiki article or a fact. | **New.** Crosses the §6a line *"never edit, move, copy or delete anything in a sister KB except the §7a `Raw/` hand-off."* | Medium — writing into KBs the group doesn't own. | Whitelist of allowed *mechanical* actions only; archive-never-trash; a per-action log the owning employee can see; **dry-run digest first, apply only what you tick.** | Every change is an archive-then-recreate, so the prior file is recoverable; revert = restore from that KB's `Archive/`. |
| **3 — Normalise content shape in sister KBs** *(higher)* | Steward may **format/standardise** — fix headers to the template, repair cross-links, update an index entry — still **not changing any fact or figure.** | New; a wider version of Rung 2 (touches article *body*, not just files). | Higher — edits inside articles, even if only structural. | Same log + dry-run; a hard **"facts are read-only"** rule; owning employee/KB notified of each edit. | Restore from `Archive/`. |
| **4 — Substantive edits** *(not proposed)* | Changing facts, figures, or conclusions in another KB. | Would break "one fact, one home" and the owning employee's authorship. | High. | **Stays with the owning employee/human. The Steward proposes; it never commits.** | — |

**Recommended path.** Authorise **Rung 0 now** (it needs nothing from you and fixes most of the pain by
making drift *visible* and the right thing *easy*). Build the Steward to run at **Rung 1** (its own-KB
and group-KB fixes) so it proves safe on our own house first. Then, once a few weeks of its logs look
clean, release **Rung 2** — the first real hand-over of control — and keep **Rung 3** for later and
**Rung 4** never. The dry-run-then-tick guardrail on Rungs 2–3 means you always see the list of intended
janitorial edits before any of them touch a sister KB.

---

## 6. What we do this week (Rung 0 — no permission required)

1. **Add the "Definition of Done" block and templates** to this group KB (and circulate the block to
   the sister KBs' `/Raw` as a convention note, the way policy notes are distributed).
2. **Have Eugene write the housekeeping session hook** (Layer 2) and ship it on a branch across the KB
   repos, exactly like the PDF-toolkit hook — highest leverage, zero governance cost.
3. **Stand up the read-only Housekeeping sweep** (Layer 3): either extend the existing weekly digest
   routine or add a sibling, writing `Outputs/…_Digest_Housekeeping_v1.md` and raising Open Issues.
   (Created via the routines form — you click create; I supply the exact prompt + IDs, per §6a.)
4. **Draft the Steward charter at read-only (Rung 0/1)** so it's ready to switch on when you decide —
   built from Peter's template, with §5's ladder written into its boundary section.

None of these edits anyone else's KB. They make the mess *visible* and the fix *cheap*, which is most
of the battle, and they let you judge the Steward on a week of read-only logs before releasing any
control.

---

## 7. Decisions I need from you

1. **Rung 0 — go?** Shall I start on §6 this week (Definition-of-Done + templates here now; Eugene's
   hook and the sweep routine prompt drafted for you to create)? *(My recommendation: yes — it's
   zero-risk.)*
2. **Steward priority.** Build the Housekeeping & Operations Steward **before Quantity Surveying**
   (my recommendation, given the "serious issues" framing), or keep QS as #4 and slot the Steward after?
3. **How far up the ladder, and when.** Are you comfortable with the intended path *Rung 1 now → Rung 2
   after a clean fortnight → Rung 3 later → Rung 4 never*? Or do you want the Steward to stay **read-only
   (Rung 0)** until you've seen it work?
4. **Confirm #9's reshape.** Agree that employee #9 becomes the **Housekeeping & Operations Steward
   (includes the Help & Lessons triage)** rather than a triage-only role, and I'll fold that into AI
   Workforce Plan v4.

---

*Housekeeping & Updates Improvement Plan v1, Fishbone Group. Drafted 2026-09-14 for owner decision;
nothing beyond Rung 0 acts until authorised. Supersede as v2 when the ladder rung or the Steward's scope
changes. See the group `change-log/`.*
