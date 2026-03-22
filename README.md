# 💳 Credit Card Consumer Spending & Market Analysis

## 📌 Executive Summary
This project analyzes a dataset of 26,052 credit card transactions across major Indian cities (Bengaluru, Greater Mumbai, Delhi, etc.) to uncover consumer spending patterns. The objective is to translate raw transactional data into actionable Business Intelligence (BI) that can drive targeted marketing campaigns, optimize credit card reward programs, and identify high-value customer segments.

## 🎯 Operational Objectives & Scope
* **Market Segmentation:** Analyze transaction volumes across 4 card tiers (Silver, Signature, Platinum, Gold) and 6 expense categories (Food, Fuel, Bills, Entertainment, Grocery, Travel).
* **Trend Analysis:** Identify geographical spending peaks to allocate regional marketing budgets effectively.
* **High-Value Identification:** Design logic to isolate outlier "high-value" transactions that significantly exceed average categorical spending.
* **BI Dashboarding:** Create an actionable reporting suite for senior marketing and financial stakeholders.

## 🛠️ Technology & Methodology Stack
* **Data Gathering & Retrieval:** MS SQL Server (T-SQL), CTEs, Window Functions
* **Business Intelligence:** Advanced Excel, Power Query, Pivot Tables
* **Analytical Framework:** Exploratory Data Analysis (EDA), Trend Analysis

## 📊 Technical Implementation Highlights
To facilitate data gathering and retrieval, T-SQL was utilized to construct complex queries that tracked the financial flow of transactions without losing granular detail. 

* **Categorical Ranking:** Leveraged `RANK()` and `PARTITION BY` to identify the highest single transactions within each expense category.
* **Geographical Grouping:** Utilized `SUM() OVER()` to calculate the cumulative revenue contribution of specific cities against the national total.

## 📈 Projected Business Impact
By systematically evaluating spending outputs, this project provides a framework that allows product managers to launch localized cashback offers (e.g., targeting "Food" expenses in Bengaluru) and optimize customer retention strategies for premium cardholders.

---
**Author:** M DharaniKumar
**Connect:** www.linkedin.com/in/dharanikumar-mahankali-699b63256
