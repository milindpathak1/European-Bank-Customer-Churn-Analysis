-- Customer Segmentation & Churn Pattern Analytics
-- European Banking Dataset
-- SQL Analysis

-- SECTION 1 : CUSTOMER OVERVIEW

-- Query 1: Total Customers
SELECT COUNT(*) AS Total_Customers 
FROM European_Bank_Cleaned;

-- Query 2: Overall Churn Distribution
SELECT Exited, COUNT(*) AS Total_Customers 
FROM European_Bank_Cleaned 
GROUP BY Exited;

-- Query 3: Overall Churn Rate
SELECT ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate 
FROM European_Bank_Cleaned;

-- SECTION 2 : GEOGRAPHY ANALYSIS

-- QUERY 4: Customers by Geography
SELECT Geography, COUNT(*) AS Total_Customers
FROM European_Bank_Cleaned
GROUP BY Geography
ORDER BY Total_Customers DESC;

-- QUERY 5: Churn by Geography
SELECT Geography, COUNT(*) AS Churned_Customers
FROM European_Bank_Cleaned
WHERE Exited = 1
GROUP BY Geography
ORDER BY Churned_Customers DESC;

-- QUERY 6: Churn Rate by Geography
SELECT Geography, COUNT(*) AS Total_Customers, SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS Churned_Customers, ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM European_Bank_Cleaned
GROUP BY Geography
ORDER BY Churn_Rate DESC;

-- SECTION 3 : GENDER ANALYSIS

-- QUERY 7: Total Customers by Gender
SELECT Gender, COUNT(*) AS Total_Customers
FROM European_Bank_Cleaned
GROUP BY Gender
ORDER BY Total_Customers DESC;

-- QUERY 8: Churned Customers by Gender
SELECT Gender, COUNT(*) AS Churned_Customers
FROM European_Bank_Cleaned
WHERE Exited = 1
GROUP BY Gender
ORDER BY Churned_Customers DESC;

-- QUERY 9: Churn Rate by Gender
SELECT Gender, COUNT(*) AS Total_Customers, SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS Churned_Customers,  ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM European_Bank_Cleaned
GROUP BY Gender
ORDER BY Churn_Rate DESC;

-- SECTION 4 : AGE GROUP ANALYSIS

-- QUERY 10: Total Customers by Age Group
SELECT Age_Group, COUNT(*) AS Total_Customers
FROM European_Bank_Cleaned
GROUP BY Age_Group
ORDER BY Total_Customers DESC;

-- Query 11: Churned Customers by Age Group
SELECT Age_Group, COUNT(*) AS Churned_Customers
FROM European_Bank_Cleaned
WHERE Exited = 1
GROUP BY Age_Group
ORDER BY Churned_Customers DESC;

-- Query 12 – Churn Rate by Age Group
SELECT Age_Group, COUNT(*) AS Total_Customers, SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS Churned_Customers, ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM European_Bank_Cleaned
GROUP BY Age_Group
ORDER BY Churn_Rate DESC;

-- SECTION 5 : ACTIVE MEMBER ANALYSIS

-- Query 13 – Customers by Active Status
SELECT IsActiveMember, COUNT(*) AS Total_Customers
FROM European_Bank_Cleaned
GROUP BY IsActiveMember;

-- Query 14 – Churn by Active Status
SELECT IsActiveMember, COUNT(*) AS Total_Customers, SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS Churned_Customers, ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM European_Bank_Cleaned
GROUP BY IsActiveMember
ORDER BY Churn_Rate DESC;

-- SECTION 6 : NUMBER OF PRODUCTS ANALYSIS

-- Query 15 – Customers by Number of Products
SELECT NumOfProducts, COUNT(*) AS Total_Customers
FROM European_Bank_Cleaned
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

-- Query 16 – Churn Rate by Number of Products
SELECT NumOfProducts, COUNT(*) AS Total_Customers, SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS Churned_Customers, ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM European_Bank_Cleaned
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

-- SECTION 7 : BALANCE ANALYSIS

-- Query 17 – Overall Balance Statistics
SELECT ROUND(AVG(Balance),2) AS Average_Balance, ROUND(MIN(Balance),2) AS Minimum_Balance, ROUND(MAX(Balance),2) AS Maximum_Balance
FROM European_Bank_Cleaned;

-- Query 18 – Average Balance by Churn Status
SELECT Exited, ROUND(AVG(Balance),2) AS Average_Balance
FROM European_Bank_Cleaned
GROUP BY Exited;

-- SECTION 8 : CREDIT SCORE ANALYSIS

-- Query 19 – Overall Credit Score Statistics
SELECT ROUND(AVG(CreditScore),2) AS Average_CreditScore, MIN(CreditScore) AS Minimum_CreditScore, MAX(CreditScore) AS Maximum_CreditScore
FROM European_Bank_Cleaned;

-- Query 20 – Average Credit Score by Churn Status
SELECT Exited, ROUND(AVG(CreditScore),2) AS Average_CreditScore
FROM European_Bank_Cleaned
GROUP BY Exited;

-- SECTION 9 : SALARY ANALYSIS

-- Query 21 – Overall Salary Statistics
SELECT ROUND(AVG(EstimatedSalary),2) AS Average_Salary, ROUND(MIN(EstimatedSalary),2) AS Minimum_Salary, ROUND(MAX(EstimatedSalary),2) AS Maximum_Salary
FROM European_Bank_Cleaned;

-- Query 22 – Average Salary by Churn Status
SELECT Exited, ROUND(AVG(EstimatedSalary),2) AS Average_Salary
FROM European_Bank_Cleaned
GROUP BY Exited;

--END OF SQL ANALYSIS
