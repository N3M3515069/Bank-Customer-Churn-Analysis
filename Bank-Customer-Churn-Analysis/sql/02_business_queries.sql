-- =====================================================
-- 1. Overall Customer Churn Rate
-- =====================================================

SELECT
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percentage
FROM bank_customers;

-- =====================================================
-- 2. Churn Rate by Country
-- =====================================================

SELECT
    country,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate
FROM bank_customers
GROUP BY country
ORDER BY churn_rate DESC;

-- =====================================================
-- 3. Churn Rate by Gender
-- =====================================================

SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate
FROM bank_customers
GROUP BY gender;

-- =====================================================
-- 4. Churn Rate by Age Group
-- =====================================================

SELECT
    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,

    COUNT(*) AS total_customers,

    ROUND(AVG(churn) * 100,2) AS churn_rate

FROM bank_customers

GROUP BY age_group

ORDER BY churn_rate DESC;

-- =====================================================
-- 5. Churn Rate by Active Membership
-- =====================================================

SELECT
    active_member,
    COUNT(*) AS total_customers,
    ROUND(AVG(churn) * 100,2) AS churn_rate
FROM bank_customers
GROUP BY active_member;

-- =====================================================
-- 6. Churn Rate by Number of Products
-- =====================================================

SELECT
    products_number,
    COUNT(*) AS total_customers,
    ROUND(AVG(churn) * 100,2) AS churn_rate
FROM bank_customers
GROUP BY products_number
ORDER BY products_number;

-- =====================================================
-- 7. Average Balance by Churn Status
-- =====================================================

SELECT
    churn,
    ROUND(AVG(balance),2) AS average_balance
FROM bank_customers
GROUP BY churn;

-- =====================================================
-- 8. Average Credit Score by Churn Status
-- =====================================================

SELECT
    churn,
    ROUND(AVG(credit_score),2) AS average_credit_score
FROM bank_customers
GROUP BY churn;

-- =====================================================
-- 9. Average Estimated Salary by Churn Status
-- =====================================================

SELECT
    churn,
    ROUND(AVG(estimated_salary),2) AS average_salary
FROM bank_customers
GROUP BY churn;

-- =====================================================
-- 10. Top 10 Customers by Account Balance
-- =====================================================

SELECT
    customer_id,
    country,
    gender,
    balance
FROM bank_customers
ORDER BY balance DESC
LIMIT 10;
