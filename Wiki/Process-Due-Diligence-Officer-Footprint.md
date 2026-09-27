# Company / Officer Due-Diligence Footprint — Fishbone Group process

**Type:** Process
**Status:** Active
**Last reviewed:** 2026-09-19
**Related:** [Process-Request-Pool-Intake.md](Process-Request-Pool-Intake.md), [00_INDEX.md](00_INDEX.md)

## Summary

A reusable, repeatable way to produce a **confidence-tiered Companies House footprint report** for any UK
company or officer — a customer, client, supplier, counterparty, or the group's own directors — from
**public register data only**. It pairs a fillable report template with a fixed data-gathering recipe and a
strict data boundary, so any future due-diligence run looks the same, cites its sources, and never over-states
what it knows.

Born from the 2026-09-19 test task (the director footprint of Mindaugas Gaudiesius): see that report as the
**worked example** (artifact `DmAzXW3GUpiAA6yCYaUQk1`, "Director Footprint" v3).

## The template

- **Fillable HTML template:** `Outputs/Template_Company-Officer-Due-Diligence-Report.html`
  (Drive id `1dXRxsjSgIGQWAf4e5kpoc4HuViwqwWsM`), also published as a private Artifact
  (`https://claude.ai/artifact/J9mJbWr2STx4fYwpvKV9BN`).
- It carries the confidence-tier chips (Verified / Provisional / Gap), a header, KPI tiles, an optional
  timeline and ownership diagram, a directorships/appointments table, an officer-identities table, a PSC
  panel, a personal-particulars panel, an open-questions/flagged-findings card, and a legend + method footer.
- Every data slot is a `[[PLACEHOLDER]]` with an HTML comment saying what to put and how to tag it. A
  "How to use" card at the top repeats the recipe and the boundary; **delete that card in the finished
  report.**

## Confidence tiers (tag every fact)

- **Verified (green)** — read from the live Companies House register, or from a filed CH document the estate
  holds. High confidence.
- **Provisional (amber)** — an unverified lead (web search, hearsay). Never present it as fact; it is pending a
  register check.
- **Gap (grey)** — not established by either source; state honestly, don't guess.

## Data-gathering recipe

Run it by raising a **Hub request assigned to Peter** on the Tasks & Requests sheet (`8860839228606340`) — his
Companies House research routine reaches the live REST API (`api.company-information.service.gov.uk`) via a
proxy-injected credential (Peter never sees the key). Steps:

1. **Officer search** — `GET /search/officers?q=<name>` (try name variants). Collect every matching
   `officer_id`; **disambiguate namesakes by month/year of birth + address** — do not assume one person is one
   ID (Companies House often holds a person under several unlinked officer IDs).
2. **Per-officer appointments** — `GET /officers/{officer_id}/appointments` for each ID. This is the key step:
   it lists **every** appointment (current and resigned, group and non-group) with its particulars, so nothing
   filed under a second ID is missed. A company-by-company sweep alone will miss appointments you don't already
   know about.
3. **Per company** (for each company found, or each in scope) —
   `GET /company/{n}`, `/company/{n}/officers`, `/company/{n}/persons-with-significant-control`,
   `/company/{n}/charges`, `/company/{n}/filing-history`. This gives status, dates, PSC (individual vs
   corporate), charges/mortgages, and the filing trail.
4. **Diff and cite** — compare against what the estate already holds; flag discrepancies. Every fact carries the
   API URL it came from and the retrieval date. Stage the sourced digest in Peter's `Research/`, then write the
   summary back to the Hub row.
5. **Render** — fill the template from the digest, tagging each fact by tier. Publish as a private Artifact;
   keep it private unless the subject has agreed otherwise.

If the register is unreachable (EGRESS_BLOCKED / HTTP 401/403), stage nothing and say so — **never** fall back
to unverified web snippets presented as fact.

## Data boundary (mandatory — stricter for third parties)

- **Public register data only.** For an individual, only public **officer particulars**: month/year of birth,
  nationality, country of residence, the **service/correspondence** address, and occupation **if published**.
- **Never** record a full date of birth, a residential/home address, or any non-public personal, banking,
  payroll or health data.
- **Purpose limited to legitimate business due diligence.** A footprint of a third party (customer, client,
  counterparty) is business information about their companies and public appointments — not an investigation of
  the person. State findings as **data, not conclusions** (e.g. flag an unexpected directorship neutrally; do
  not infer intent).
- The same cite-never-copy and personal-data rules as the rest of the estate apply (`CLAUDE.md` §2, §6b).

## Notes

- The ownership-structure diagram (inline SVG) is optional — include it only when the subject controls a group;
  copy the `svg.orgchart` block from the worked example and re-label.
- For the group's **own** directors, the same report doubles as a personal-footprint record; where a finding
  touches a company already ruled out of group scope (e.g. Anthill Homes Ltd, OI-2), record it only as the
  individual's personal directorship and **do not** re-scope it as a group entity.

## Sources

- Worked example: "Director Footprint" report v3 (artifact `DmAzXW3GUpiAA6yCYaUQk1`) and Peter's digests
  `Peter KB Research/Companies-House-2026-09-19.md` and `…-fourth-firing.md`.
- Companies House REST API — `https://api.company-information.service.gov.uk` (`/search/officers`,
  `/officers/{id}/appointments`, `/company/{n}`, `/officers`, `/persons-with-significant-control`, `/charges`,
  `/filing-history`).
- Hub Tasks & Requests `8860839228606340`; the Request-Pool Intake standard (how a Hub request reaches Peter).

## History

- 2026-09-19 — Created, generalising the Mindaugas Gaudiesius director-footprint report (v3) into a reusable
  template + method, at the owner's request ("save it as a template for future due diligence"). Victoria
  (coordinator).
