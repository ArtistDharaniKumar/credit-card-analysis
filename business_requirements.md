# 📄 Business Requirements Document (BRD) Snippet
**Project:** Consumer Spend Behavior Analysis
**Phase:** Requirements Gathering & Scope Definition

## 1. Business Need
The Product & Marketing division requires a comprehensive analysis of the existing credit card portfolio (26,052 recent transactions) to design the next quarter's "Targeted Rewards Program." Current blanket-reward strategies are cost-inefficient.

## 2. Required Data Elements
Consultations with stakeholders identified the following necessary data sources for the BI solution:
* `transaction_id` (Unique identifier for audit tracking)
* `city` (Geographical targeting)
* `transaction_date` (Time-series and seasonal trend tracking)
* `card_type` & `exp_type` (Product and Merchant category segmentation)
* `amount` (Financial tracking and ROI forecasting)

## 3. Operational Metrics & KPI Definitions
* **Category Contribution:** What percentage of total revenue comes from 'Food' vs 'Travel'?
* **Premium Card Usage:** Do 'Signature' and 'Platinum' cardholders spend significantly more on 'Entertainment' compared to 'Silver' cardholders?
* **Regional Dominance:** Identify the top 3 cities by total transaction volume to prioritize localized marketing spend.

## 4. Proposed Workflow System
1. **Data Extraction:** T-SQL script to aggregate row-level data into analytical views (CTEs).
2. **Data Transformation:** Power Query cleanses data types (e.g., converting string dates to valid Date formats).
3. **Evaluation & Output:** Excel Pivot Dashboard to visually summarize trends for the Marketing Director.
