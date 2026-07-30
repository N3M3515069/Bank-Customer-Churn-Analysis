-- =====================================================
-- 1. Rank Customers by Account Balance
-- =====================================================

SELECT
    customer_id,
    country,
    balance,
    RANK() OVER (ORDER BY balance DESC) AS balance_rank
FROM bank_customers;

-- =====================================================
-- 2. Rank Customers by Balance Within Each Country
-- =====================================================

SELECT
    customer_id,
    country,
    balance,
    ROW_NUMBER() OVER (
        PARTITION BY country
        ORDER BY balance DESC
    ) AS country_rank
FROM bank_customers;

-- =====================================================
-- 3. Dense Rank by Credit Score
-- =====================================================

SELECT
    customer_id,
    credit_score,
    DENSE_RANK() OVER (
        ORDER BY credit_score DESC
    ) AS credit_rank
FROM bank_customers;

-- =====================================================
-- 4. Customers Above Country Average Balance
-- =====================================================

WITH country_average AS
(
    SELECT
        country,
        AVG(balance) AS avg_balance
    FROM bank_customers
    GROUP BY country
)

SELECT
    b.customer_id,
    b.country,
    b.balance,
    ROUND(c.avg_balance,2) AS country_average
FROM bank_customers b
JOIN country_average c
ON b.country = c.country
WHERE b.balance > c.avg_balance;

-- =====================================================
-- 5. Customer Segmentation
-- =====================================================

SELECT
    customer_id,
    balance,

    CASE

        WHEN balance = 0 THEN 'Zero Balance'

        WHEN balance < 50000 THEN 'Low Value'

        WHEN balance < 100000 THEN 'Medium Value'

        ELSE 'High Value'

    END AS customer_segment

FROM bank_customers;

-- =====================================================
-- 6. Running Total of Account Balance
-- =====================================================

SELECT
    customer_id,
    balance,

    SUM(balance)
    OVER(
        ORDER BY balance
    ) AS running_balance

FROM bank_customers;

-- =====================================================
-- 7. Top 5 Customers by Balance in Each Country
-- =====================================================

WITH ranked_customers AS
(
    SELECT
        customer_id,
        country,
        balance,

        ROW_NUMBER() OVER
        (
            PARTITION BY country
            ORDER BY balance DESC
        ) AS rank_no

    FROM bank_customers
)

SELECT *
FROM ranked_customers
WHERE rank_no <= 5;

-- =====================================================
-- 8. Percentage of Customers by Country
-- =====================================================

SELECT

    country,

    COUNT(*) AS customers,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM bank_customers),
        2
    ) AS percentage

FROM bank_customers

GROUP BY country;

-- =====================================================
-- 9. Rank Countries by Churn Rate
-- =====================================================

SELECT

    country,

    ROUND(AVG(churn)*100,2) AS churn_rate,

    RANK() OVER
    (
        ORDER BY AVG(churn) DESC
    ) AS churn_rank

FROM bank_customers

GROUP BY country;

-- =====================================================
-- 10. Highest Credit Score Customer in Each Country
-- =====================================================

WITH ranked_scores AS
(
    SELECT

        customer_id,

        country,

        credit_score,

        ROW_NUMBER() OVER
        (
            PARTITION BY country
            ORDER BY credit_score DESC
        ) AS rank_no

    FROM bank_customers
)

SELECT *
FROM ranked_scores
WHERE rank_no = 1;
