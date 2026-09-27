# Change log — 2026-09-19 (third run) — Rachel: consolidation Batch 3, two new archive folders, and the register rewriting the job

_Session run by **Rachel** (AI Finance Assistant) on Minda's instructions. **This is the third entry for 2026-09-19**,
after `change-log-2026-09-19-rachel-registrations-splits-and-governance-corrections.md` and
`change-log-2026-09-19-rachel-batch-2-and-corrections.md`. House Rules §5 allows **one file per session or run**, and an
entry is **written once and never edited**, so anything correcting an earlier entry is recorded here._

## What was asked
1. *"raise it now"* — raise the `contentSnippet` security finding on Help & Lessons
2. *"can we start batch 2?"*
3. *"run batch 3"*
4. *"yes, update and add Personal guarantees"*

## Correction to the second entry
The second entry said the `contentSnippet` leak was **"not yet raised"**. It is now `HL-0022`. More importantly, the
mitigation recorded there and on the first version of that row was **wrong in a way that mattered**: it said it was *not
yet established* whether `search_files` itself could suppress snippets, and pointed at `get_file_metadata` as the way
round. **`search_files` takes `excludeContentSnippets: true` too** — confirmed the same hour on six live folder
listings, including the Financial Archive root that leaked in the first place. None returned a snippet, and all still
carried title, id, mimeType, fileSize, parentId and timestamps. The rule is **pass the flag on every call**, not avoid
the tool. `HL-0022` has been corrected in place, with the old wording named rather than quietly replaced.

## `HL-0022` — the leak, raised
Drive's `search_files` returns a `contentSnippet` preview of each matching file's **actual text**, printed into the
session transcript whether or not it was asked for. **Listing a folder discloses the contents of the files in it.** Six
Government Gateway documents had been registered all session **without being opened** — a deliberate control, because
opening one puts a live login identifier into a transcript — and one routine folder listing printed the digits anyway.
The values have not been recorded, repeated or reproduced anywhere, including on the row. The lesson generalises past
finance: **deciding not to open a file is not a control unless snippets are suppressed at the call.** High, Open, with
Alex for estate practice and Eugene for the connector.

**`HL-0013` is part-actioned:** the Help & Lessons `Raised by` picklist now carries **Rachel**, **Alex** and **John**.
`HL-0022` is the first row Rachel has been able to sign. Whether `Assigned to` on Tasks & Requests got the same
treatment has not been checked.

## Batch 2 was already done
Asked whether we could start Batch 2; it had been run earlier the same day. Said so rather than re-running it.

## Batch 3 — blocked on arrival, and the block was the useful part
Batch 3 is the **loan packs**, and the Financial Archive had **nowhere to put a loan document**. Every company folder
holds `Annual Accounts` plus tax-year folders (`2017 - 18` … `2025 - 26`), with Construction adding `Machinery
invoices`, `Budget` and `CIS`. No loans folder anywhere, and **no Fishbone SSAS folder at all**, though the Document
Register has carried an `FS` prefix since its first rows. Creating a folder type is **reshaping the archive**, which
`RA-20` and `CHARTER.md` §3 reserve to Minda, so it went to her rather than being invented.

**Her rulings:** one **`Loans` folder at the archive root** (`1aAKayaQxQTzvWuB-DKhfzhlyOVdjHXUn`), subdivided by
lender or facility; and a **seventh top-level `Fishbone SSAS` folder** (`1xmngPPoM5bf1JkU6w_7vD_1Yiwvf7pEk`). The SSAS
folder is **deliberately empty for now** — only the Loanback papers were in Batch 3's scope; the scheme-side documents
(trust deed, scheme rules, TPR certificates, valuations) are a later pass. It exists so the next person does not have to
ask the same question.

**Moved: 21 files, 12,020,057 bytes. Every file id and byte size unchanged**, same-Drive moves, re-queried after.

| Facility | Files | Bytes |
|---|---|---|
| Landbay 70092357 — 131 Goathland Avenue (FP) | 11 | 2,039,361 |
| SSAS Loanback LA01801 £41.5k (SSAS → FM) | 8 | 3,207,630 |
| MotoNovo Finance HP (FC) | 1 | 6,435,869 |
| LendInvest Bridge Loan 60006183 (FP) | 1 | 337,197 |

**Five redundant copies retired** to `Archive/`, each labelled with a **specific** reason (House Rules §2), **none
deleted**. Four were `(1)`-suffixed download artefacts at identical byte counts — about as clear as duplicate evidence
gets, and recorded as byte-count-and-name evidence rather than dressed up as more. The fifth, the Commercial Properties
copy of the Loanback agreement, had no such tell and sat in a different knowledge base, so it was **sha256-verified**
before anything happened to it: `e545562b3a250142b4526c841a0e28b6a385abeddaaf9ecf35d17eba71f22da6`, 430,685 bytes, on
both copies.

## The personal guarantees
Index v2 scoped Batch 3's Landbay pack as **"10 files"** out of the folder's twelve, silently excluding the two
`PG_70092357` personal guarantees — company borrowing documents that record **personal liability of named
individuals**. They were left behind and put to Minda rather than decided by Rachel, one of them being Minda's own
guarantee. **Minda's instruction: add them.** Done; the facility pack is now whole at 11 files, and the source folder in
the Properties KB is empty.

## Rachel mis-filed one document, and caught it
`Complete_with_Docusign_60006183_-_Extension_.zip` was moved into the Landbay folder because it was sitting in the
Landbay source folder. **Envelope 60006183 is the LendInvest bridge loan**, not Landbay — it matches `FP0000016`
("LendInvest Bridge Loan 60006183 — Amendment Letter") and `FP0000070`. The source folder was **mixed**, and the
assumption that everything in a facility folder belongs to that facility was wrong. Moved out into its own facility
folder. The identification rests on the filename reference matching two register rows, **not** on opening the file, and
is recorded that way.

## The register rewrote the registration half completely
**All eight SSAS Loanback documents were already registered** — `FS0000001` to `FS0000008`, exact Source-key matches,
a clean one-to-one with nothing missing. So **no number was minted** (policy §4) and only **Location** was corrected on
all eight; Document No., Source key, File link and Title deliberately untouched. That the register had independently
grouped exactly those eight as one facility is what confirmed the grouping Rachel had chosen on document names alone.

**The Landbay pack is moved but deliberately NOT registered.** Reading **every** FP title — the `FP0000004` check —
found `FP0000017` (Board Resolution), `FP0000019` (Legal Mortgage executed), `FP0000020` (Loan Agreement executed) and
`FP0000032` (RICS Valuation) already registered against **different Drive ids**. The Source-key check saw none of them.
Minting new numbers would breach §4; repointing the existing rows would assert an identity Rachel has not proved. One of
the registered copies (`FP0000101`) sits in **Collaboration Space**, which Rachel may not write to (`RA-21`). Carried to
`RA-11` as a fifteenth-to-eighteenth duplicate set and to `RA-15` as the byte-comparison work it needs.

**Earlier in the run, the destination check found the same class of thing again:** the Financial Archive **already
held** FW's Members Accounts 2025 and Pages for Registrar 2025, at the same byte counts index v2 recorded for the group
KB copies. Index v2 §7 called those two-copy sets; they are **three**-copy sets, because §10 records that v2 never
re-verified the archive. Nothing needed moving. The archive primaries were simply **unregistered** — now `FW0000005`
and `FW0000006`. The two group-KB copies were left untouched: they sit in an `Archive/` folder, and tidying another
employee's knowledge base beyond taking a document out is outside `CHARTER.md` §3. Register now **210 rows**.

## Two process deviations, both recorded rather than smoothed over
**1. The fixed method ran out of order.** `CHARTER.md` §3 fixes it as copy in → byte-verify → **register** → retire.
In Batch 3 the duplicate retirements ran **before** the registration check. Nothing was lost, because a retirement
depends on the primary being *verified* rather than *numbered* — but it is a deviation, and had the registration check
come first it would have been obvious sooner that the Landbay pack could not be registered at all.

**2. Retirement evidence was not uniform.** Four copies were retired on byte-count-and-name evidence and one on sha256.
That is a defensible split — the four carried `(1)` download-artefact names, the one did not — but it is a weaker
standard than Batch 2's, where everything retired was hashed. Stated plainly on the rows and here rather than described
as "verified" across the board.

## Control files, and a second split of `current-state.md`
Adding the Batch 3 row took `current-state.md` to **31,188 bytes — 128 bytes short** of the measured **31,316** point
where `create_file` silently truncates (`HL-0005`). Two rows moved **verbatim** to `current-state-history.md`: the
duplicate-control-files row whose account of the cause was **superseded** by the row that corrects it, and Batch 1's
registration row, which **narrates finished work**. The sampling rule that row bought — read the whole sheet, pass
explicit `columns`, confirm `isSampled: false`, check the high-water mark **at the moment of assignment** — was
carried forward into the live file's header rather than left only in history. Same test as the earlier splits: a row
moves because it is superseded or finished, never because it is long.

One residue from the second entry is cleared. `open-issues.md` read "Live table **now** 25,743 bytes"; under the
byte-figure convention that number is **correct as a historical measurement** of the third split, and the fault was the
word "now" making a past fact read as a present claim. Fixed by rewording, not by changing the number.

## Deferred / for Minda
**Landbay registration** needs the four pairs compared byte-for-byte before any register row is touched (`RA-11`,
`RA-15`). **`FS0000009`–`FS0000013`** — the MR01 charge, three HM Land Registry TY59507 documents and the Metro Bank
transfer form — are the same facility by the register's own reckoning but were outside Batch 3's named scope, and are
still in the SSAS KB. **Batch 4** (certificates, credentials excluded) is clear to run; **Batch 5** still needs a folder
convention for the bank-statement series, though the root-level `Loans` precedent now suggests a shape. **`FG-CR-0001`**
still gates consistent filing across all seven KBs and only Minda can move it; **`AWT-0028`/`HL-0014`** still needs Alex,
Minda or Eugene. Unchanged and still Minda's: `RA-3`, `RA-22`/`RA-23`, `RA-24`. Not yet done: the `HL-0005` rewording and
the §8 escalation question.

## Governance
**Nothing was deleted, anywhere.** Twenty-one documents moved; five retired by moving and labelling. No money moved, no
QuickBooks entry posted, nothing filed to Collaboration Space or OneDrive, no financial document committed to git. No
other employee's knowledge base was tidied beyond taking documents out of it. Peter's register rows were not edited
except for Location on documents Rachel herself moved. The two personal guarantees were moved on the owner's explicit
instruction and were **not opened**; neither were the Government Gateway files, and no identifier value appears
anywhere. Every Drive write was byte-verified against its local source, and every Smartsheet cell value was read back —
none truncated.
