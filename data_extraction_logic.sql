/*
=============================================================================
PROJECT: Credit Card Consumer Spending Analysis
PURPOSE: Extract, aggregate, and rank transaction data for market intelligence.
DIALECT: MS SQL Server (T-SQL)
=============================================================================
*/

WITH CategoricalSpend AS (
    SELECT 
        transaction_id,
        city,
        CAST(transaction_date AS DATE) AS transaction_date,
        card_type,
        exp_type,
        gender,
        amount,
        
        -- Calculate the total amount spent in each city for each expense type
        SUM(amount) OVER (
            PARTITION BY city, exp_type 
        ) AS Total_City_Category_Spend,

        -- Rank transactions to find the highest single purchases per expense category
        RANK() OVER (
            PARTITION BY exp_type 
            ORDER BY amount DESC
        ) AS Expense_Category_Rank

    FROM 
        credit_card_transcations
    WHERE 
        -- Data Validation: Ensure no zero or negative transactions are processed
        amount > 0 
)

SELECT 
    transaction_id,
    city,
    transaction_date,
    card_type,
    exp_type,
    amount,
    Total_City_Category_Spend,
    
    -- Evaluate Business Logic: Flag high-value targets for premium marketing
    CASE 
        WHEN Expense_Category_Rank <= 10 THEN 'Top 10 Category Purchase - Review for VIP Upgrade'
        WHEN amount >= 150000 THEN 'High Value Transaction'
        ELSE 'Standard'
    END AS Marketing_Segment

FROM 
    CategoricalSpend
ORDER BY 
    city, 
    exp_type, 
    amount DESC;
