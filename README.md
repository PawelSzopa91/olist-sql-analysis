# 📊 Olist E-commerce Logistics & Revenue Audit

An end-to-end data analysis project exploring 100k+ orders from the Brazilian e-commerce market (2016-2018). The primary goal of this analysis was to identify logistics bottlenecks and optimize revenue streams using SQL-based data processing.

## 🎯 Key Objectives
* **Logistics Performance Audit**: Calculating the delivery gap (Estimated vs. Actual) to pinpoint regional bottlenecks and identify the causes of delays in high-risk areas.
* **Customer Segmentation & Revenue Analysis**: Applying SQL logic to categorize customers based on purchase frequency and order value, highlighting key contributors to revenue.
* **Payment & Installment Optimization**: Investigating the correlation between payment methods, installment counts, and final order value to uncover trends in high-ticket transactions.
* **Operational Efficiency Drivers**: Performing a root cause analysis to determine the impact of delivery time and product category on customer satisfaction (Net Promoter Score/Reviews).
* **Market Growth Strategy**: Providing actionable, data-backed insights to optimize supply chain routes and improve resource allocation in underperforming territories.

---

## 🛠 Tech Stack & Methodology

### Core Technologies
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![DBeaver](https://img.shields.io/badge/DBeaver-382923?style=for-the-badge&logo=dbeaver&logoColor=white)

### Analytical Toolkit
* **Database Management**: Schema definition, data normalization, and integrity management within PostgreSQL.
* **Advanced SQL**: Utilizing `CTEs` (Common Table Expressions), complex `JOIN` operations, and conditional `CASE` statements for logistics metric calculation.
* **Data Transformation**: Converting raw timestamps and multi-table relationships into actionable performance metrics.
* **Root Cause Analysis**: Identifying geographic and systemic delivery bottlenecks through granular data filtering.

---

## 🏗️ Data Architecture & Schema
![Diagram bazy danych](database_schema.png)

The project operates on a relational model in **PostgreSQL**. Key entities include:
* **Orders**: Central transaction hub.
* **Customers**: Demographics across 27 Brazilian states.
* **Logistics**: Real-time delivery tracking metrics.


---

## 🔍 Advanced Technical Deep-Dives

### 🚛 1. Supply Chain & Logistics Optimization
Leveraging my background in monitoring **First Time Delivery** rates at Deutsche Post DHL, I performed a comprehensive cross-state logistics audit on 100k+ orders to identify critical operational bottlenecks.

* **Methodology & SQL Techniques**:
    * Standardized raw logistics logs across 27 Brazilian states using `EXTRACT`, `CASE WHEN`, and timestamp arithmetic.
    * Employed `JOIN` operations and `GROUP BY` clauses to calculate the precise delivery delay delta (Actual vs. Estimated delivery date).
    * Optimized query performance for high-volume dataset manipulation.

* **Operational Insights**:
    * The analysis confirmed that remote regions (e.g., Roraima - RR, Amapá - AP) exhibit a **250% increase** in lead times compared to the São Paulo (SP) baseline.
    * **Business Recommendation**: Results indicate a strategic necessity for last-mile optimization through the establishment of Regional Distribution Centers (RDC) in Northern Brazil.

![Logistics SQL Workflow](logistics_sql_query.png)
*Figure 1: SQL workflow in DBeaver – illustrating the process from raw data extraction and transformation to bottleneck identification.*

### 📈 2. Revenue Scaling & Trend Analysis
Applying **Revenue Optimization** methods used during my business ownership:
* **Query**: Developed complex joins between `orders` and `order_payments`.
* **Discovery**: The **1.15M BRL peak in Nov 2017** was driven by a specific payment mix (Credit Card vs. Boleto), suggesting high Black Friday elasticity.

### 🎯 3. Data Governance & ETL Workflow
Standardized raw, messy logistics logs into clean, structured SQL tables.
* **Impact**: Reduced data cleaning time for reporting by implementing automated mapping for Brazilian state nomenclature.

---


## 📊 Analytics Visualizations & Findings
To validate the strategic insights above, the following metrics were extracted and visualized:

![Logistics Performance Summary](logistics_plot.png)
*Insight: Significant variance in delivery times across states highlights critical bottlenecks in remote regions compared to the SP baseline.*

![Payment Method Distribution](payments_plot.png)
*Insight: Payment preference analysis confirms credit card dominance, directly impacting cash flow velocity.*

![Revenue Trend Analysis](revenue_trend.png)
*Insight: The 2017 monthly revenue trend corroborates high Black Friday elasticity, confirming the strategic revenue peak mentioned in the audit.*

---


## 🛠️ Stack & Methodology
* **Engine**: PostgreSQL 15
* **Interface**: DBeaver
* **Techniques**: Window Functions, Complex Case Logic, Data Cleaning (`REPLACE`, `EXTRACT`)










