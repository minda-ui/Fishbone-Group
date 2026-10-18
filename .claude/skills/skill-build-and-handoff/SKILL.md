---
name: skill-build-and-handoff
description: Victoria's standing method for creating a skill. Use whenever Minda asks for a skill or a procedure needs one: write the SKILL.md, store it, zip it for Minda to upload, pass it to Eugene through his Raw folder and a Hub row, and log it on the Hub so there is an audit trail. Also covers the Build Register line and how a skill is retired.
---

# Skill build and hand-off (Victoria)

A skill carries mechanics only: exact tool calls, column and label names, ids, gotchas. The procedure holds the rules, owners and numbers and is approved by Minda. A skill never restates a rule; it points to the procedure by Drive id and reads it when it runs.

## 1. Decide it earns a skill
Build one when the same steps are repeated by several employees or runs, or when a procedure needs mechanics that would otherwise sit in eleven prompts. If a sentence in the procedure says it faster, no skill. Judge by value: what does it produce, who uses it, what goes wrong if it is missing.

## 2. Write SKILL.md (one page)
Frontmatter: `name` (lower-case, hyphens) and `description` (what it does and when to use it). Body in this order:
1. Works with: procedure name, version, register id.
2. First, every run: read the procedure by Drive id; check Approved (file header and the Procedure Register row, sheet 4244584085456772); if not Approved, or the procedure version is newer than the skill supports, stop and say so in one line (a newer version raises one Help and Lessons row, sheet 7780569054316420).
3. Mechanics, named tools and ids.
4. Never.
No secrets, no rules copied from the procedure, no email or Hub text pasted in.

## 3. Store it (two places, same text)
- Group repo: `Routine-Changes/skills/<name>/SKILL.md` (commit and push to the session branch).
- Drive: a copy in Eugene's Raw folder, named `YYYY-MM-DD_skill_<name>_SKILL.md`, because his runs cannot read the group repo. Use Drive create_file (text/markdown, no conversion) and check the byte size against the local file.
- For a skill Victoria herself uses in Claude Code sessions: also `.claude/skills/<name>/SKILL.md` in the group repo.

## 4. Package for Minda
Zip the folder so the zip contains `<name>/SKILL.md`; send the zip to Minda (SendUserFile, attach). Only Minda can upload to the account. Say which skills are new and which replace one. Never call a skill live until she says it is uploaded.

## 5. Pass it to Eugene (Raw note and Hub row, both)
Use the raw-handoff-to-employee skill. The note names: the skill, its version, the procedure it works with, what to test (real tool names and arguments, whether scheduled runs load it), what to send back, and the due date. The Hub row (sheet 8860839228606340) is assigned to Eugene, Requested by Victoria (for Minda), first line = what is wanted and done-when, Source = note and Drive ids. Probe the next Task IDs with an IN filter, add the row, read the duplicate cell, renumber if flagged.

## 6. Log it for the audit trail (all of these)
1. The Hub row to Eugene (above). That row is the record of who was asked, when, to do what.
2. One dated line on the parent row (the procedure's row or AWT-0831 if none) naming: skill, version, date, Drive ids, Hub row, status (built, uploaded, tested, live, retired). Mind the 4,000-character limit of the Response cell.
3. The Build Register line (AWT-0776): name, type = skill, owner, where it lives, date created, status, date last checked.
4. Rule F: if seats are affected, a Raw note in each affected seat's Raw folder when the skill goes live. Not before.

## 7. After Eugene tests
Version it (v0.1, v0.2, ...), update the repo and Drive copies, send the new zip to Minda, add a dated line to the Hub row, update the Build Register line. Retire a skill by saying so on the row and the register, telling Eugene, and asking Minda to remove it; never delete.

## Never
Upload a skill (only Minda). Edit a seat's prompt, charter or another employee's KB. Put rules in a skill that the procedure does not hold. Call a skill live before Minda confirms the upload and Eugene has tested it.
