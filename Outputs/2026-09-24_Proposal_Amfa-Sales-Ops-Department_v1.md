# Proposal — Amfa Furniture: Sales & Ops department (v1, for approval)

**From:** Victoria, for Minda — 2026-09-24. **STATUS: PROPOSAL, awaiting Minda's approval.** Per CHARTER §2
(new-employee 3-step sequence): Victoria proposes → **Minda approves** → Eugene builds. **Nothing built yet.**
Hub: AWT-0092.

## Brief (your decisions, 2026-09-24)
- **Scope:** a new AI employee **+** the supporting systems — the full department.
- **Timing:** **start today.** External sales **test-run under the Fishbone Construction Ltd umbrella** while
  Amfa stays dormant; Amfa's own operation still targets **1 May 2027**.
- **Website:** **captures enquiries / quotes** (lead-gen) — the front of the pipeline.

## 1. The AI employee — Amfa Sales & Ops Assistant  *(name: your call — suggestion below)*
- **Role:** run Amfa's sales & operations — capture and triage website enquiries, draft quotes, track orders
  through the AMFA order tracker, coordinate customers/suppliers, keep the pipeline moving; hand finished
  drafts to a human to send.
- **KB:** **adopts the existing Amfa Furniture Ltd KB** (Drive `1ugshCjwx2yvRXZvmtpwLcg3kUgTKN7aU`; git
  `minda-ui/Amfa-Furniture-Ltd`) and the **AMFA Furniture** Smartsheet workspace — **no new KB** (the same
  pattern as John on the Properties KB). Only an identity/charter of its own.
- **Reach — draft-only outward (John/Helen pattern):** drafts quotes and replies to **Drafts** for a human
  to review and send; **never contacts a customer or supplier directly**; no payments, no commitments, no
  filings; finance stays with **Rachel**. All group §6a bars stand; policy v1.4 (finance docs → Financial
  Archive only).
- **Connectors:** Drive + Smartsheet + Web + GitHub, plus **Gmail read + draft on the enquiry mailbox**
  *(which address? — decision 2)*.

## 2. The systems (department scaffolding)
- **Pipeline:** website enquiry → intake mailbox → triage → quote draft (human sends) → follow-up → order →
  fulfilment.
- **Smartsheet:** reuse the **AMFA order tracker** (`5287398789482372`); add an **Enquiries / Quotes (CRM)**
  sheet that feeds it (stage, value, owner, next action, Health colour per the group RYGB convention).
- **Website intake:** enquiries routed to the intake mailbox *(decision 2)*.
- **Process doc:** a numbered **`FA`** sales/ops process article (enquiry-to-order), per policy v1.4.
- **Under-Construction-umbrella mechanics:** test-run sales invoiced/booked through **Fishbone Construction
  Ltd** while Amfa is dormant. The **accounting treatment is Rachel + RMT's to set** — I route it to them, I
  don't decide it. Switches to Amfa proper at the 1 May 2027 launch.

## 3. Build plan (only after your approval)
1. **You approve** this proposal + the three decisions below.
2. **I brief Eugene** (build spec into his `/Raw` + a Hub row): identity/charter, the Enquiries/CRM sheet and
   pipeline wiring, the `FA` process doc, connectors, and the draft-only guardrails.
3. **Eugene builds**; **I register** the seat (group `CLAUDE.md` §1, Hub Roster) and brief the new assistant;
   **Rachel + RMT** set the umbrella finance treatment.

## Decisions I need from you
1. **Name** for the assistant — you've named the others. *Suggestion: "Oliver" or "Nadia" — your pick.*
2. **Enquiry intake mailbox** — where website enquiries land and the assistant reads/drafts (e.g.
   `sales@amfa.uk`, another amfa.uk inbox, or Construction's `info@`?).
3. **Confirm** the guardrails: **draft-only outward** (no direct customer/supplier contact) and that the
   **Construction-umbrella finance treatment** is Rachel + RMT's call.

*(Open, related: DKIM/SPF/DMARC on `amfa.uk` is still on the estate to-do — worth doing before outbound sales
email, so quotes don't land in spam. Eugene can guide; a human sets DNS.)*
