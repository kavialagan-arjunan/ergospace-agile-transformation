# Product Requirements: B2B Experience Overhaul
**Owner:** Kavialagan Arjunan | **Status:** Live Deployment
**Module:** Checkout & Procurement

## 1. Feature: Guest Quote Workflow (B2B)
**Problem:** Corporate buyers abandoned the funnel when forced to "Create an Account" just to get pricing for internal approval.
**Solution:** A friction-free "Request for Quote" engine allowing guest checkout.

**User Interface Requirements (Ref: Quote Page)**
* **Guest Gateway:** Prominent "Continue as Guest" CTA to bypass login/registration.
* **Line-Item Remarks:** Ability to add specific notes per SKU (e.g., "Need this in matte finish").
* **Shipping Logic:** Split-view for Shipping Details vs. Billing Address with a "Same as shipping" toggle to reduce keystrokes.

**Backend Logic:**
* Submitting the form triggers a **Draft Order** creation in the backend.
* Automates a PDF Proforma Invoice sent to the user's email via SendGrid API.
* Sales Team receives a notification on Slack `#sales-leads`.

## 2. Feature: Google Maps Logistics Integration
**Problem:** 20% of deliveries failed due to ambiguous address descriptions (common in UAE).
**Solution:** Integrated Google Maps Javascript API at the "Shipping Details" step.
**Acceptance Criteria:**
* User can drop a pin on the map.
* System reverse-geocodes the pin to fill: `City`, `Area`, `Street Name`.
* Drivers receive the exact Lat/Long coordinates in the delivery manifest.

## 3. Feature: Mega Menu Navigation
**Objective:** Organize the expanding catalog (30,000 SKUs) and distinct Sub-Brands (Sync, Cove).
**Design:**
* Full-width dropdown.
* Visual thumbnails for top categories (Desks, Chairs, Acoustics).
* Dedicated section for "Materials & Colors" to reduce support queries.
