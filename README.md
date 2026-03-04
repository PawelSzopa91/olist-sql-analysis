# 📊 Olist E-commerce Ecosystem: SQL Strategic Audit

## 📋 Business Intelligence Summary
Analysis of the largest Brazilian e-commerce dataset (2016-2018). The project delivers a deep dive into logistics bottlenecks, revenue scaling, and customer geographic distribution.

| Metric | Value | Insight |
| :--- | :--- | :--- |
| **Total Revenue** | 15.4M BRL | High growth market |
| **Peak Sales** | 1.15M BRL (Nov 2017) | Black Friday impact |
| **Top Logistics** | 8.3 Days (São Paulo) | Benchmark for efficiency |
| **Total Customers** | 99,441 | Massive geographic reach |

---

## 🏗️ Data Architecture & Schema
The project operates on a relational model in **PostgreSQL**. Key entities include:
* **Orders**: Central transaction hub.
* **Customers**: Demographics across 27 Brazilian states.
* **Logistics**: Real-time delivery tracking metrics.


---

## 🔍 Key Technical Deep-Dives

### 1. Logistics Efficiency Audit
I mapped the delivery performance across Brazil, uncovering a 250% difference in lead times between industrial hubs and remote regions.
* **Top Performer**: São Paulo (**8.3 days avg**)
* **Worst Performer**: Roraima (**28.9 days avg**)

### 2. Market Concentration
Analysis of **15,540 customers** in the São Paulo metro area confirms it as the strategic priority for warehouse expansion.

---

## 🛠️ Stack & Methodology
* **Engine**: PostgreSQL 15
* **Interface**: DBeaver
* **Techniques**: Window Functions, Complex Case Logic, Data Cleaning (`REPLACE`, `EXTRACT`)
