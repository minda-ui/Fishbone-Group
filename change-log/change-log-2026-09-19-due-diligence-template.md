# Change log — 2026-09-19 — Report 1 generalised into a reusable due-diligence template + method

_Session by Victoria (AI Workforce Coordinator / CEO's Assistant), on behalf of
minda@fishboneconstruction.co.uk. Append-only; newest notes at the top. Companion to the two earlier
2026-09-19 entries (request-pool-intake rollout; CH officer-footprint + Report 1 v3)._

## What and why

Owner request: "I like Report 1. Save it as a template for future searches for customers, clients or other
due diligence." The Mindaugas Gaudiesius director-footprint report (v3) was generalised into a reusable
kit so any future company/officer due-diligence run looks the same, cites its sources, and stays inside
the public-data boundary.

## Created

- **Fillable HTML template** — `Outputs/Template_Company-Officer-Due-Diligence-Report.html`
  (Drive id `1dXRxsjSgIGQWAf4e5kpoc4HuViwqwWsM`, 24,623 B, byte-verified). Keeps Report 1's design and the
  Verified/Provisional/Gap confidence-tier system; every data slot is a `[[PLACEHOLDER]]` with a fill
  comment; a "How to use" card at the top carries the recipe + boundary (deleted in a finished report).
  Also published as a private Artifact: `https://claude.ai/artifact/J9mJbWr2STx4fYwpvKV9BN`.
- **Method article (Wiki, canonical)** — `Wiki/Process-Due-Diligence-Officer-Footprint.md` (v1, Active;
  id `1iryqloZ2jc3zBzbI-yeZ-pWVmAOr94G5`, 6,101 B, byte-verified): the Companies House data recipe
  (`/search/officers` → `/officers/{id}/appointments` → per-company `/company`, `/officers`,
  `/persons-with-significant-control`, `/charges`, `/filing-history`), the confidence tiers, and the
  strict **public-data-only** boundary (month/year DOB, nationality, country of residence, service
  address, occupation-if-published — never a full DOB, residential address, or non-public data; findings
  stated as data, not conclusions). How to run: a Hub request assigned to Peter, whose CH routine reaches
  the live API. Worked example: Report 1 v3.

## Control-file updates (archive-then-recreate, each byte-verified)

- `Wiki/00_INDEX.md` — articles 11 → **12**; new Process bullet; new "Recently changed" entry. Old id
  `1c_jvFx4mHgE_3557JqwLsVKt1Wozphl7` archived; new id `11PPoPM7dp2XcWmgZuIeXVKM2OzDl8e6k` (25,066 B).
- `current-state.md` — Wiki articles → 12; template added to the Outputs field; new latest-session note.
  Old id `1MXSBzy69EaaCzch2ObwJHMJNso_9XsDz` archived; new id `1eleZSIPv32wsqLPNd9-kwCZUKR-8ecHC`
  (19,172 B).
- This dated `change-log/` entry (new file).

## Notes

- The template is a **standing Output** (a reusable file, not a dated snapshot) — a deliberate exception to
  the dated-Outputs rule, like the always-current Operations Dashboard.
- Governance reminder baked into the method: a third-party footprint (customer/client/counterparty) is
  business information from the public register, used for legitimate due diligence only — not an
  investigation of the person; the same personal-data limits as the rest of the estate apply.
