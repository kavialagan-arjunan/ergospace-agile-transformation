# Ergospace Design System & UI Kit

## 1. Typography (B2B Legibility)
**Primary Font:** `Inter` (Google Fonts).
* **Why Inter?** High x-height makes it perfect for dense data tables (like Quote Requests) and numerals (Pricing).
* **Weights:**
    * **Semi-Bold (600):** Section Headers ("Shipping Details", "Product Name").
    * **Regular (400):** Input fields and body text.

## 2. Color Palette
**Brand Identity:** Corporate, Professional, Ergonomic.

| Semantic Usage | Color Name | Hex Code |
| :--- | :--- | :--- |
| **Primary Action** | **Ergo Teal** | `#1A5D5F` (Submit Buttons, CTAs) |
| **Secondary** | **Office Grey** | `#F5F7F8` (Backgrounds, Form Inputs) |
| **Text Primary** | **Deep Charcoal** | `#222222` (High contrast for reading) |
| **Alert/Error** | **Signal Red** | `#D32F2F` (Validation errors) |

## 3. Component Library

### A. The "Quote" Table
* **Layout:** Grid-based row system.
* **Interactions:**
    * Quantity Selector: Stepper (+/-) with immediate price recalculation.
    * Remarks Field: Inline text-area for custom requests.
* **Visual Style:** Minimalist borders, ample whitespace to prevent cognitive load during bulk ordering.

### B. Form Elements
* **Input Style:** Floating labels with square corners (Professional look).
* **Validation:** Real-time inline validation for Phone Numbers (+971 format) and Emails.
