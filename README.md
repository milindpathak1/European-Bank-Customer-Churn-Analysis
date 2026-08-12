# Customer Segmentation & Churn Pattern Analytics in European Banking

An end-to-end customer churn analytics project that combines Excel, Python, SQL, statistical hypothesis testing, customer segmentation, Power BI, Tableau, and Streamlit to identify customer churn patterns and generate actionable business recommendations for a European banking context.

---

## 📌 Project Overview

Customer churn is a major challenge for retail banks because losing existing customers can result in reduced revenue, lower customer lifetime value, loss of deposits, and increased customer acquisition costs.

This project analyzes customer-level banking data to understand:

- Which customer groups are most likely to churn
- How churn differs across geography and demographics
- How customer activity and product ownership relate to churn
- Whether financial characteristics differ between churned and retained customers
- Which customer segments require greater retention attention
- How data analytics and visualization can support customer retention strategies

The project follows an end-to-end analytics workflow:

**Excel → Python → SQL → Hypothesis Testing → Customer Segmentation → Power BI → Tableau → Streamlit → Business Recommendations**

---

# 🎯 Business Problem

The project focuses on three major business problems:

1. Identifying high-risk customer segments
2. Understanding churn differences by geography and demographics
3. Quantifying the financial profile of churned customers

---

# 🎯 Project Objectives

### Primary Objectives

- Measure the overall customer churn rate
- Identify churn distribution across customer segments
- Compare churn behavior across European regions

### Secondary Objectives

- Understand churn among high-value customers
- Evaluate customer engagement and tenure patterns
- Analyze financial characteristics of churned customers
- Support strategic customer retention and marketing decisions

---

# 📊 Dataset

The analysis uses a cleaned banking customer dataset containing:

- **10,000 customer records**
- **19 columns in the final analytical dataset**
- Customer demographic information
- Geographic information
- Credit score
- Age
- Tenure
- Account balance
- Number of banking products
- Credit card ownership
- Active membership status
- Estimated salary
- Customer churn status
- Customer segmentation information

### Data Quality Checks

| Data Quality Check | Result |
|---|---:|
| Total Records | 10,000 |
| Total Columns | 18 original analytical variables |
| Final Dataset Columns | 19 including Customer_Segment |
| Missing Values | 0 |
| Duplicate Customer IDs | 0 |
| Invalid Geography Values | 0 |
| Invalid Gender Values | 0 |
| Invalid Exited Values | 0 |

---

# 🛠️ Tools & Technologies

The project uses multiple analytics and visualization tools:

- **Microsoft Excel** – KPI analysis, PivotTables and exploratory business analysis
- **Python** – Data cleaning, exploratory data analysis and feature engineering
- **Pandas** – Data manipulation and analysis
- **Matplotlib / Seaborn** – Data visualization
- **SQL / SQLite / DB Browser for SQLite** – Business-oriented data analysis
- **Statistical Hypothesis Testing** – Chi-Square and independent t-tests
- **Power BI** – Interactive business intelligence dashboard
- **Tableau** – Interactive visualization dashboard
- **Streamlit** – Interactive Python-based web application
- **GitHub** – Project version control and portfolio presentation

---
# 🔄 Project Workflow

```text
Raw Banking Dataset
        ↓
Data Cleaning & Validation
        ↓
Excel KPI Analysis
        ↓
Python EDA & Feature Engineering
        ↓
SQL Business Analysis
        ↓
Statistical Hypothesis Testing
        ↓
Customer Segmentation
        ↓
Power BI Dashboard
        ↓
Tableau Dashboard
        ↓
Streamlit Application
        ↓
```
Business Insights & Recommendations

---

## 📊 Key Findings

### Overall Churn

- Total Customers: **10,000**
- Churned Customers: **2,037**
- Retained Customers: **7,963**
- Overall Churn Rate: **20.37%**

Approximately **1 in every 5 customers** has churned.

### Gender

- Female Churn Rate: **25.07%**
- Male Churn Rate: **16.46%**

Female customers show a substantially higher churn rate than male customers.

### Age Group

- **46–60:** 51.12% churn rate
- **60+:** 24.78%
- **30–45:** 15.74%
- **<30:** 7.52%

The **46–60 age group is the highest-risk age segment** in the dataset.

### Customer Activity

- Inactive customers: **1,302 churned**
- Active customers: **735 churned**

Inactive customers show a substantially higher churn rate than active customers.

### Number of Products

- 1 product: **27.71% churn**
- 2 products: **7.58% churn**
- 3 products: **82.71% churn**
- 4 products: **100% churn**

The 3- and 4-product groups are very small, so their extremely high churn rates should be interpreted cautiously.

### Account Balance

- Retained customers: **₹72,745.30 average balance**
- Churned customers: **₹91,108.54 average balance**

Churned customers have a substantially higher average balance, suggesting potential loss of valuable deposits.

---

## 🧪 Statistical Hypothesis Testing

Statistical tests were conducted to determine whether observed differences and relationships were statistically significant.

| Analysis | Statistical Test | Result |
|---|---|---|
| Gender vs Churn | Chi-Square Test | Significant |
| Geography vs Churn | Chi-Square Test | Significant |
| Age Group vs Churn | Chi-Square Test | Significant |
| Balance vs Churn | Independent t-test | Significant |
| Credit Score vs Churn | Independent t-test | Significant, but small difference |
| Estimated Salary vs Churn | Independent t-test | Not Significant |

### Key Statistical Findings

- Gender and customer churn show a statistically significant relationship.
- Geography and customer churn show a statistically significant relationship.
- Age Group and customer churn show a statistically significant relationship.
- Churned customers have significantly higher average account balances than retained customers.
- Credit scores differ statistically between churned and retained customers, although the practical difference is relatively small.
- Estimated salary does not show a statistically significant difference between churned and retained customers.

**Important:** Statistical significance does not necessarily imply practical or business significance.

---

## 👥 Customer Segmentation

Customers were categorized into four business-oriented segments:

| Customer Segment | Customers | Percentage |
|---|---:|---:|
| Inactive Customer | 3,547 | 35.47% |
| Loyal Customer | 2,327 | 23.27% |
| High-Value Customer | 2,089 | 20.89% |
| High-Risk Customer | 2,037 | 20.37% |
| **Total** | **10,000** | **100%** |

### Segment Interpretation

**Inactive Customers — 35.47%**

The largest segment. These customers represent an important opportunity for re-engagement campaigns.

**Loyal Customers — 23.27%**

Customers demonstrating relatively stronger engagement and retention characteristics.

**High-Value Customers — 20.89%**

Customers with higher-value financial characteristics who should receive enhanced retention attention.

**High-Risk Customers — 20.37%**

This segment represents customers who have already churned and was defined using customer churn status.

> **Note:** The High-Risk segment was defined using customer churn status and therefore represents an identified churn group rather than an independently predictive model.

---

## 📈 Power BI Dashboard

An interactive Power BI dashboard was developed to provide an executive-level view of customer churn and customer behaviour.

### Executive Overview

Key KPIs include:

- Total Customers: **10,000**
- Churned Customers: **2,037**
- Churn Rate: **20.37%**
- Average Balance: **₹76,486**
- Average Credit Score: **650.53**

### Dashboard Visuals

- Churn by Geography
- Customer Segment Distribution
- Churn by Gender
- Churn by Age Group
- Active vs Inactive Customer Churn
- Churn by Number of Products
- Average Balance by Customer Status
- Customer Segment Analysis

---

## 📊 Tableau Dashboard

A Tableau dashboard was created to provide additional interactive visualization of customer churn patterns.

### Dashboard Analysis

The dashboard includes:

- Churn by Geography
- Churn by Age Group
- Churn by Gender

The visualizations provide a clear comparison of churn behaviour across major demographic and geographic categories.

---

## 🚀 Streamlit Application

A Streamlit web application was developed to provide an interactive Python-based customer churn dashboard.

The application includes:

- Overall customer KPIs
- Churn analysis
- Geography-based churn analysis
- Gender analysis
- Age-group analysis
- Product analysis
- Customer segment analysis
- Interactive customer data table

The application uses the cleaned project dataset and provides a simple interface for exploring customer churn patterns.

---

## 💡 Business Insights

The analysis identified several important business insights:

1. The overall customer churn rate is **20.37%**.
2. Female customers have a higher churn rate than male customers.
3. Customers aged **46–60** represent the highest churn-risk age group.
4. Inactive customers show substantially higher churn than active customers.
5. Customers with two banking products have the lowest churn rate in the dataset.
6. Churned customers have higher average account balances than retained customers.
7. Estimated salary does not show a statistically significant relationship with churn in this analysis.
8. The large inactive customer segment represents a significant opportunity for customer re-engagement.

---

## 🎯 Business Recommendations

### 1. Develop an Early-Warning Churn System

Monitor customer behaviour for signals such as:

- Reduced account activity
- Inactivity
- Declining product usage
- Changes in account balance
- Customer engagement patterns

This can help identify customers requiring attention before they churn.

### 2. Protect High-Value Customers

Develop targeted retention strategies for customers with substantial balances.

Potential initiatives include:

- Personalized relationship management
- Premium banking services
- Customized financial products
- Personalized offers
- Early intervention when engagement declines

### 3. Re-Engage Inactive Customers

The inactive segment represents the largest customer group.

Potential strategies include:

- Digital banking campaigns
- Personalized product recommendations
- Transaction-based incentives
- Reminder campaigns
- Financial education and engagement content

### 4. Develop Age-Specific Retention Strategies

The **46–60** group should receive particular attention due to its high churn rate.

Retention strategies should be based on customer needs and behaviour rather than applying a single strategy to all customers.

### 5. Improve Cross-Selling Carefully

Customers with two products have the lowest churn rate in this dataset.

The bank could explore appropriate cross-selling opportunities while ensuring that customers receive relevant products rather than unnecessary products.

### 6. Use Predictive Analytics

A future machine-learning model could estimate the probability of churn for individual customers.

Potential models include:

- Logistic Regression
- Decision Tree
- Random Forest
- XGBoost

The resulting **Churn Probability Score** could help the bank prioritize retention efforts.

---

## 📁 Project Files

The repository contains the following project resources:

- `Customer_Churn_Analysis.ipynb` — Python data analysis and exploratory analysis
- `European_Bank_Churn_Analysis.pbix` — Power BI dashboard
- `European Bank Churn Tableau.twbx` — Tableau dashboard
- `European Bank Customer Churn Analysis (Excel...).xlsx` — Excel analysis and KPI calculations
- `European_Bank_Cleaned.csv` — Cleaned project dataset
- `European_Bank_SQL_Analysis.sql` — SQL business analysis queries
- `app.py` — Streamlit application
- `requirements.txt` — Python dependencies
- `README.md` — Project documentation

---

## 🚀 How to Run the Streamlit Application

The Streamlit dashboard can be run locally using the following steps.

### 1. Clone the Repository

```bash
git clone https://github.com/milindpathak1/European-Bank-Customer-Churn-Analysis.git
cd European-Bank-Customer-Churn-Analysis
```

### 2. Install Required Libraries

```bash
pip install -r requirements.txt
```

### 3. Run the Streamlit Application

```bash
streamlit run app.py
```

The application will open automatically in your default browser.

If it does not open automatically, visit:

```text
http://localhost:8501
```

---

## 👤 Author

**Milind Pathak**

MBA Finance | Financial Analysis | Data Analytics

This project was developed as a portfolio project demonstrating financial analysis, customer churn analytics, statistical analysis, data visualization, and business intelligence.

---
