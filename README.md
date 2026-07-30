# Bank Customer Churn Analysis

## Project Overview

This project presents an end-to-end analysis of customer churn in a banking institution using Python, SQL, and Machine Learning. The objective is to identify the factors influencing customer churn, build predictive models, and generate business insights through exploratory data analysis and SQL.

---

## Objectives

- Analyze customer demographics and banking behavior
- Perform Exploratory Data Analysis (EDA)
- Identify key factors contributing to customer churn
- Build machine learning models for churn prediction
- Perform business analysis using SQL
- Provide data-driven business recommendations

---

## Technologies Used

### Programming Languages

- Python
- SQL

### Python Libraries

- Pandas
- NumPy
- Matplotlib
- Scikit-learn

### Machine Learning

- Logistic Regression
- Random Forest Classifier

---

## Project Structure

```text
Bank-Customer-Churn-Analysis
│
├── data/
│   └── bank_customer_churn.csv
│
├── notebook/
│   └── Bank_Customer_Churn_Analysis.ipynb
│
├── sql/
│   ├── 01_exploratory_queries.sql
│   ├── 02_business_queries.sql
│   └── 03_advanced_queries.sql
│
└── README.md
```

---

## Dataset

The dataset contains information for **10,000 bank customers** and includes the following attributes:

- Customer ID
- Credit Score
- Country
- Gender
- Age
- Tenure
- Account Balance
- Number of Products
- Credit Card Ownership
- Active Membership
- Estimated Salary
- Churn Status

---

## Exploratory Data Analysis

The exploratory analysis includes:

- Customer distribution
- Country-wise analysis
- Gender analysis
- Age analysis
- Credit score analysis
- Account balance analysis
- Estimated salary analysis
- Churn analysis

---

## Machine Learning

Two classification models were developed to predict customer churn.

### Logistic Regression

| Metric | Value |
|---------|--------|
| Accuracy | 80.8% |
| ROC-AUC Score | 0.775 |

### Random Forest Classifier

| Metric | Value |
|---------|--------|
| Accuracy | 87.0% |

Random Forest achieved better predictive performance than Logistic Regression.

---

## SQL Analysis

The SQL analysis is organized into three sections.

### Exploratory Queries

- Customer count
- Country distribution
- Gender distribution
- Average customer age
- Average account balance
- Credit score analysis

### Business Queries

- Overall churn rate
- Churn by country
- Churn by gender
- Churn by age group
- Churn by active membership
- Product ownership analysis
- Credit score segmentation

### Advanced Queries

- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- Customer Segmentation
- Running Totals
- Business Analytics

**Kaustav Biswas**

GitHub: https://github.com/N3M3515069
