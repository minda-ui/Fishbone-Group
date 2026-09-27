# Change log — 2026-09-19 — Request-Pool Intake applied; live Companies House officer-footprint verification; Report 1 → v3

_Session by Victoria (AI Workforce Coordinator / CEO's Assistant), on behalf of
minda@fishboneconstruction.co.uk. Append-only; newest notes at the top. Companion to
`change-log-2026-09-19-request-pool-intake-rollout.md` (earlier the same day). See `current-state.md`
for the present snapshot._

## Rollout applied (owner)

Minda applied all four full-replacement routine prompts from `Routine-Changes/` via the
`claude.ai/code/routines` form, and attached the **Smartsheet** connector to Peter's Companies House
routine first. Hub tasks **AWT-0019 / 0020 / 0021 / 0022** are all **Done**. The Request-Pool Intake
standard is now live on the four routines; the Hub request pool is served on a schedule.

## Live Companies House verification (the stress-test's first real jobs through the new channel)

Two Hub requests, both assigned to Peter and both delivered by his Companies House routine off the live
register (`api.company-information.service.gov.uk`, proxy-injected credential, all calls HTTP 200):

- **AWT-0023** — director-footprint cross-check. Confirmed the six group directorships (appointment
  dates = incorporation), Holdings PSC 25–50% (Prutkovas identical), DOB May 1980, nationality
  Lithuanian, country of residence UK, service address 49 Wheatfield Grove NE12 8DP. Shakerbone
  Construction Ltd (11261433): Gaudiesius **not** an officer (sole officer Irena Prutkova). Digest:
  `Peter KB Research/Companies-House-2026-09-19.md`.
- **AWT-0026** — deep officer-footprint (searches by officer, not by company). Key findings:
  - **Three** distinct CH officer IDs for Mindaugas Gaudiesius (his working assumption was two), all
    DOB 05/1980, distinguished by address: `XpPRtjoYoPbupGuj7wHkw1QIZao` (Holdings + Properties, @49
    Wheatfield Grove), `vNNS6R3FRPEshUgLXCEpI63DfeU` (Commercial + Waste + Amfa, @6 Beverley Place),
    `8owieVt0O9jl--jDmjUg37rbSTg` (Construction + Anthill Homes Ltd, @6 Beverley Place). Unlinked at
    filing — common, not a discrepancy; consolidation optional (an accountant job).
  - **A seventh, active, non-group directorship: Anthill Homes Ltd, company 15899141** (inc
    15/08/2024; SIC 68209 real estate; office 6 Beverley Place; director appointed 27/11/2024). Not
    previously in our records. See governance note below.
  - **All six PSC positions itemised**: individuals (Gaudiesius + Prutkovas, 25–50% each) at
    Holdings/Properties/Commercial; Fishbone Holdings Ltd (corporate, 75–100%) at
    Construction/Waste/Amfa; Properties and Waste each had one historic PSC change, both settled.
  - **Occupation not published** on any of the 8 appointment records (confirmed across the full
    footprint, not just the group).
  - Digest: `Peter KB Research/Companies-House-2026-09-19-fourth-firing.md`. Data-boundary held
    throughout (public officer particulars only — month/year DOB, nationality, country of residence,
    service address; no full DOB, no residential address).

## Report 1 rebuilt v1 → v2 → v3

`Director Footprint` (artifact `DmAzXW3GUpiAA6yCYaUQk1`): **v2** promoted the amber web-search leads to
green after AWT-0023; **v3** added the "Officer identities" section (three IDs), the seventh
(non-group) Anthill Homes directorship row, the six itemised PSC positions, and the confirmed
occupation blank. Only the legend keys remain non-green.

## Governance note — Anthill Homes Ltd

Recording Mindaugas Gaudiesius's **personal** directorship of Anthill Homes Ltd (15899141) does **not**
change the group's standing ruling that Anthill Homes Ltd is **out of group scope** (owner note
2026-09-03T16:15Z; OI-2). It is captured only in the new `current-state.md` field **Owner officer
footprint** and in Report 1 v3, as the owner's personal directorship — which also explains the Anthill
flows previously seen in Construction's bank data. Anthill Homes remains not surveyed or cited as a
group entity, and was not added as a group `Org-` article.

## Control-file updates

- `current-state.md` — archived id `1jxhiNcmf_RKHElTetpRRflGR_FqMBHTy`; new id
  `1MXSBzy69EaaCzch2ObwJHMJNso_9XsDz` (18297 B, byte-verified). New latest-session cell, new **Owner
  officer footprint** field, Next-action updated (rollout applied).
- This dated `change-log/` entry (new file).

## Still open (owner)

- Optional: **Report 2 (Delivery Trace)** closing note marking its "what would unblock it" finding as
  delivered end-to-end.
- The **Hub Task-ID churn** — another session was editing the Tasks & Requests `Task ID` column
  concurrently (Alex's Task-ID-allocation cleanup and/or off-cadence Peter fires), which caused
  same-day ID collisions; the coordinator's deep task was renumbered to a free ID (AWT-0026) to clear
  the guard. Left for Minda to confirm what is running.
