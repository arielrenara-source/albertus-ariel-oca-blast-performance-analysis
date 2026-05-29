# albertus-ariel-oca-blast-performance-analysis
Q1 2025 performance analysis of OCA Blast (Telkom Indonesia CPaaS) — channel delivery effectiveness, revenue trends, and user behavior insights across 122,749 transactions and 20 enterprise clients.

# 📡 OCA Blast Performance Overview — Q1 2025

**Program:** Virtual Internship RevoU x Telkom Indonesia  
**Author:** Albertus Ariel Renara Pranata — Bellatrix/Team 4  
**Tools:** BigQuery (SQL) · Tableau Public · Google Slides
**Period:** January – March 2025

> ⚠️ **Disclaimer:** Data used is an adjusted educational dataset for portfolio purposes only. Does not reflect actual business conditions of OCA Indonesia / Telkom Indonesia.

---

## 📌 Business Background

OCA Indonesia is a Communication Platform-as-a-Service (CPaaS) owned by Telkom Indonesia, enabling enterprise clients to communicate at scale through multi-channel messaging — WhatsApp, SMS, Email, and Call/IVR.

Revenue is generated from **successfully delivered (billable) messages only**.

---

## 🎯 Objective

Transform raw Q1 2025 transaction data into actionable insights for Product and Business teams, focusing on delivery performance, revenue trends, and user behavior across all 4 channels.

---

## 📊 Executive Summary

| Metric | Value |
|--------|-------|
| Total Messages | 122,749 |
| Delivery Rate | 79.5% |
| Failure Rate | 1.3% |
| Active Clients | 20 |
| Total Q1 Revenue | Rp 25,946,420 |

---

## 🗂️ Dataset Overview

| Table | Rows | Columns | Notes |
|-------|------|---------|-------|
| `wa_transactions` | 50,000 | 8 | Includes message_type, received_timestamp |
| `sms_transactions` | 20,000 | 7 | Includes total_sms, total_price |
| `email_transactions` | 40,000 | 6 | |
| `call_transactions` | 12,749 | 6 | |
| `users` | 20 | 4 | Client master data |
| **Unified (UNION ALL)** | **122,749** | | Exported to CSV for Tableau |

**Key Columns:** `transaction_id`, `user_id`, `channel`, `status`, `is_charge`, `price`, `created_at`

**Industries Covered:** Travel, Real Estate, Finance, Education, Retail, Hospitality, Logistics, Telecom, eCommerce

---

## 🔬 Methodology
**Calculated Fields in Tableau:** Status Category, Delivery Rate, Failure Rate, Hour of Day, Time Segment, Month, Total Revenue


## 📊 Executive Dashboard

Built an interactive executive-facing dashboard using **Tableau Public** 
to monitor OCA Blast platform performance in real-time across all channels 
and clients.

**Dashboard Components:**
| Component | Description |
|-----------|-------------|
| KPI Cards (5) | Total Messages, Delivery Rate, Failure Rate, Active Users, Total Revenue |
| Messages per Channel | Bar chart — volume distribution across WhatsApp, SMS, Email, Call |
| Delivery Effectiveness | 100% stacked bar — success vs. failure rate per channel |
| Top Users by Volume | Horizontal bar — Top 10 clients ranked by transaction count |
| Usage Trend | Line chart — monthly message volume per channel (Jan–Mar 2025)| Bar chart — message distribution by hour with time segment highlights |

**Interactive Features:**
- 🔴 **Channel Filter** — filters all visuals simultaneously by selected channel
- 📅 **Month Filter** — narrows all charts to selected time period
- 🖱️ **Click-to-filter** — clicking any bar in Messages per Channel filters the entire dashboard

**Dashboard designed for:** Product and Business teams requiring 
real-time visibility into platform delivery performance, revenue trends, 
and client usage behavior.

🔗 **[View Live Dashboard →](https://public.tableau.com/views/VI_OCA_FinalDashboard_AlbertusAriel/Dashboard1)**
## 📈 Key Findings

### Insight 1 — Channel Volume Distribution

| Channel | Messages | Share |
|---------|----------|-------|
| WhatsApp | 50,000 | 40.7% |
| Email | 40,000 | 32.6% |
| SMS | 20,000 | 16.3% |
| Call | 12,749 | 10.4% |

### Insight 2 — Delivery Effectiveness

| Channel | Success Rate | Failure Rate | Notable |
|---------|-------------|--------------|---------|
| SMS | 99.7% | 0.3% | Most reliable |
| WhatsApp | 84.8% | 1.8% | 51.1% read rate (highest engagement) |
| Email | 81.3% | 1.4% | 44.2% open rate |
| Call | 21.9% | 0.6% | 🔴 77.6% Ring-No-Answer — critical issue |

### Insight 3 — Platform Volume Trend

| Month | Messages | MoM Change |
|-------|----------|------------|
| January | 49,534 | — |
| February | 37,723 | −24% |
| March | 35,492 | −6% |

Overall volume **dropped 28%** in Q1. Email saw the sharpest decline at **−60%** (20K → 8K).

### Insight 4 — Revenue Analysis

| Channel | Revenue | Share |
|---------|---------|-------|
| SMS | Rp 11.8M | 45.5% |
| WhatsApp | Rp 10.3M | 39.5% |
| Call | Rp 2.3M | 8.9% |
| Email | Rp 1.6M | 6.2% |

Monthly trend: Rp 9.4M → Rp 8.0M → Rp 8.5M (revenue under pressure)

### Insight 5 — User Fatigue Signals

Top 3 clients drive **60% of total volume** but all show consistent MoM decline:

| Client | Jan | Mar | Decline |
|--------|-----|-----|---------|
| PT Dana Nusantara | 10,014 | 6,997 | −30% |
| CV Wisata Indo | 9,839 | 7,213 | −27% |
| CV Land Sejahtera | 9,796 | 7,165 | −27% |

### Insight 6 — Traffic Peak Hours

Peak traffic at **11 AM (9,865 msgs)** and **12 PM (9,843 msgs)**. Call channel completely inactive after 17:00.

---

## 💡 Recommendations

| Priority | Action |
|----------|--------|
| 🔴 High | Audit Call channel — investigate 77.6% RNA rate, optimize IVR timing & targeting |
| 🔴 High | Investigate Email volume collapse — client interviews, re-engagement strategy |
| 🟡 Medium | Leverage WhatsApp as primary growth channel (highest engagement at 51.1% read rate) |
| 🟡 Medium | Monitor top 3 client retention — assign dedicated account managers |
| 🟢 Low | Grow SMS adoption — highest revenue + 99.7% reliability, position as premium offering |

---

## 📁 Repository Structure
oca-blast-performance-analysis/
├── README.md
├── 01_deck/
│   └── OCA_Reporting_Deck_Albertus Ariel.pdf
├── 02_queries/
│   └── oca_union_all.sql              ← BigQuery UNION ALL query

---

## 🔗 External Links

| Resource | Link |
|----------|------|
| 📊 Tableau Dashboard | [OCA Blast Dashboard](https://public.tableau.com/views/VI_OCA_FinalDashboard_AlbertusAriel/Dashboard1) |

---

## 📬 Contact

**Albertus Ariel Renara Pranata**  
arielrenara@gmail.com  
[LinkedIn — Ariel Renara](https://www.linkedin.com/in/ariel-renara)
