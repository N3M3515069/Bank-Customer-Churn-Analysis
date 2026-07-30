-- 1. Total Number of Customers

SELECT COUNT(*) AS total_customers
FROM bank_customers;


-- 2. Display First 10 Records

SELECT *
FROM bank_customers
LIMIT 10;

-- 3. List All Countries

SELECT DISTINCT country
FROM bank_customers;

-- 4. Count Customers by Country

SELECT
    country,
    COUNT(*) AS total_customers
FROM bank_customers
GROUP BY country
ORDER BY total_customers DESC;


-- 5. Gender Distribution

SELECT
    gender,
    COUNT(*) AS total_customers
FROM bank_customers
GROUP BY gender;


-- 6. Average Customer Age

SELECT
    ROUND(AVG(age),2) AS average_age
FROM bank_customers;

-- 7. Average Account Balance

SELECT
    ROUND(AVG(balance),2) AS average_balance
FROM bank_customers;

-- 8. Average Credit Score
SELECT
    ROUND(AVG(credit_score),2) AS average_credit_score
FROM bank_customers;

-- 9. Average Estimated Salary

SELECT
    ROUND(AVG(estimated_salary),2) AS average_salary
FROM bank_customers;

-- 10. Overall Churn Distribution

SELECT
    churn,
    COUNT(*) AS customers
FROM bank_customers
GROUP BY churn;
