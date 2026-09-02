# Retail Profitability & Customer Analytics

## Business Problem

A retail company is experiencing continued sales activity but wants to understand whether its revenue generation is translating into sustainable profitability.

Management needs a data-driven assessment of sales performance, product profitability, discounting behavior, and regional performance to identify where the business is creating value and where it may be losing money.

The purpose of this project is to analyze retail transaction data and transform it into actionable business insights that can support decisions around pricing, discounting, product strategy, and market performance.

---

## Objectives

The main objectives of this project are to:

- Measure overall sales and profitability performance.
- Identify trends in revenue and profit.
- Analyze product and category performance.
- Identify high-revenue but low-profit products.
- Investigate the relationship between discounts and profitability.
- Compare performance across geographic regions.
- Identify loss-making transactions and potential sources of margin erosion.
- Develop business KPIs for management reporting.
- Use SQL to reproduce and extend key business analyses.
- Apply statistical techniques to investigate relationships in the data.
- Develop customer segmentation where appropriate data is available.
- Build an interactive business intelligence dashboard.
- Provide data-driven recommendations to management.

---

## Dataset

The project uses the **Sample Superstore** retail dataset.

The dataset contains **9,994 records and 13 variables** covering shipping, customer segment, geographic information, product categories, sales, quantity, discount, and profit.

### Variables

| Variable     | Description                                 |
| ------------ | ------------------------------------------- |
| Ship Mode    | Shipping method used                        |
| Segment      | Customer segment                            |
| Country      | Country of the transaction                  |
| City         | City of the transaction                     |
| State        | State of the transaction                    |
| Postal Code  | Postal code associated with the transaction |
| Region       | Geographic sales region                     |
| Category     | Main product category                       |
| Sub-Category | Product sub-category                        |
| Sales        | Sales/revenue generated                     |
| Quantity     | Number of units sold                        |
| Discount     | Discount applied to the transaction         |
| Profit       | Profit generated from the transaction       |

### Data limitation

The current version of the dataset does not contain customer IDs, order IDs, or order dates.

Therefore, customer-level analyses such as:

- Customer Lifetime Value
- RFM segmentation
- Customer retention
- Cohort analysis
- Customer churn prediction

cannot be reliably performed using this dataset alone.

These analyses will only be included if an appropriate dataset containing the required customer and transaction identifiers is incorporated into a later version of the project.

---

## Data Cleaning

The raw dataset was inspected before analysis to assess data quality and identify potential issues.

The data-cleaning process included:

- Checking the number of rows and columns.
- Inspecting data types.
- Checking for missing values.
- Checking for duplicate records.
- Reviewing numerical distributions.
- Checking sales and profit values for unusual observations.
- Investigating negative-profit transactions.
- Reviewing discount values and their distribution.
- Converting variables to appropriate analytical data types where necessary.
- Preserving legitimate negative-profit transactions rather than automatically removing them.

Negative-profit transactions were treated as potentially meaningful business observations rather than automatically classified as data errors.

This is important because transactions that generate negative profit may indicate issues related to discounting, pricing, product mix, or other business factors.

---

## Methodology

The project follows an end-to-end data analytics workflow:

```text
Raw Data
   ↓
Data Understanding
   ↓
Data Cleaning
   ↓
KPI Development
   ↓
Exploratory Data Analysis
   ↓
SQL Analysis
   ↓
Statistical Analysis
   ↓
Business Insights
   ↓
Recommendations
   ↓
Dashboard
```

The analysis combines descriptive analytics, diagnostic analysis, SQL-based querying, statistical analysis, and business intelligence visualization.

---

## Key Business Questions

The analysis focuses on the following questions:

### Revenue & Growth

1. What is the company's total revenue?
2. How is revenue distributed across categories and regions?
3. Which product categories generate the most revenue?
4. Which geographic markets contribute the most sales?

### Profitability

5. What is the company's total profit?
6. What is the overall profit margin?
7. Which categories generate the most profit?
8. Which products generate high revenue but relatively low profit?
9. Which transactions are loss-making?

### Discounting

10. What is the average discount?
11. How does profitability vary across different discount levels?
12. Are higher discounts associated with lower profit margins?
13. Are some high-value transactions actually generating losses?

### Geographic Performance

14. Which regions generate the highest revenue?
15. Which regions generate the highest profit?
16. Which regions have weaker profitability relative to their sales?

### Management

17. What are the most important findings?
18. What actions should management take?
19. Which areas should receive additional attention or investment?
20. What potential financial impact could these recommendations have?

---

# SQL Analysis

SQL is used as a complementary analytical tool alongside Python.

The objective is to demonstrate the ability to retrieve, aggregate, filter, rank, and analyze business data using a relational database.

The SQL analysis includes:

## Data Quality

## KPI Analysis

## Product Analysis

## Profitability Analysis

## segment Analysis

## shipping mode Analysis

# Exploratory Data Analysis

Exploratory Data Analysis is conducted using Python to understand the structure and behavior of the dataset.

The analysis examines:

- Revenue distribution
- Profit distribution
- Sales by category
- Profit by category
- Regional performance
- Product performance
- Discount distribution
- Loss-making transactions
- Relationships between sales, discounts, quantity, and profit

Python libraries used include:

- Pandas
- NumPy
- Matplotlib
- Seaborn

The objective is not only to describe the data but also to identify patterns that may explain the company's profitability performance.

---

# Statistical Analysis

Statistical analysis is used to investigate relationships identified during exploratory analysis.

A key area of investigation is the relationship between **discounting and profitability**.

For example:

### Null Hypothesis

> Discount level has no significant relationship with profit margin.

### Alternative Hypothesis

> Discount level has a significant relationship with profit margin.

Depending on the structure of the data, the analysis may use:

- Correlation analysis
- Hypothesis testing
- Group comparisons
- Regression analysis

A regression framework may be used to examine the relationship between profit margin and factors such as discount and quantity.

The statistical results are interpreted in business terms rather than relying solely on statistical significance.

---

# Dashboard

An interactive Power BI dashboard will be developed to communicate the analysis to business stakeholders.

The dashboard is planned around four analytical areas.

### Executive Overview

Key metrics:

- Revenue
- Profit
- Profit Margin
- Transaction Volume
- Average Transaction Value
- Average Discount

### Profitability Analysis

Visualizations will examine:

- Revenue by category
- Profit by category
- Profit margin
- Discount versus profitability
- High-revenue/low-profit products
- Loss-making transactions

### Geographic Performance

The dashboard will compare:

- Regions
- States
- Cities

using measures such as:

- Revenue
- Profit
- Profit margin

### Management Insights

The final dashboard section will summarize:

- Major findings
- Business implications
- Recommended actions

---

# Key Findings

This section will be updated after the analysis is finalized.

The final findings will focus on the most important patterns discovered in the data rather than simply listing descriptive statistics.

Each finding will follow the structure:

```text
Finding
   ↓
Evidence
   ↓
Business implication
   ↓
Recommended action
```

---

# Business Recommendations

Recommendations will be based on evidence generated during the analysis.

Potential areas include:

### 1. Review Discount Strategy

If the analysis shows that higher discounts are associated with substantially lower profitability, management should evaluate whether blanket discounting is economically justified.

### 2. Focus on Profitable Products

Products with strong revenue and healthy margins should be evaluated for increased strategic focus.

### 3. Investigate High-Revenue/Low-Profit Products

Products generating significant sales but weak margins should be investigated for pricing, discount, cost, or product-mix issues.

### 4. Improve Regional Strategy

Regions with strong sales but weak profitability should receive additional investigation before further investment.

### 5. Monitor Loss-Making Transactions

A dedicated profitability KPI should be used to monitor transactions that generate negative profit.

---

# Expected Financial Impact

Where sufficient evidence is available, the project will estimate the potential financial impact of recommended actions.

Examples include:

- Potential margin improvement from reducing excessive discounts.
- Potential profit improvement from repricing low-margin products.
- Potential revenue opportunities in high-margin markets.
- Reduction in losses from unprofitable transactions.

Financial impact estimates will be clearly distinguished from observed historical results and will include assumptions where necessary.

---

# Tools Used

### Python

- Pandas
- NumPy
- Matplotlib
- Seaborn
- SciPy
- Statsmodels
- Scikit-learn for advanced modelling where applicable

### SQL

- PostgreSQL
- pgAdmin

### Business Intelligence

- Microsoft Power BI

### Development & Documentation

- Jupyter Notebook
- Git
- GitHub
- Markdown

---

# Project Status

| Phase                     | Status    |
| ------------------------- | --------- |
| Data Understanding        | Completed |
| Data Cleaning             | Completed |
| KPI Analysis              | Completed |
| Exploratory Data Analysis | Completed |
| SQL Analysis              | Completed |
| Statistical Analysis      | Planned   |
| Power BI Dashboard        | Planned   |
| Executive Report          | Planned   |
| Final Recommendations     | Planned   |

---

# Final Goal

The goal of this project is to demonstrate an end-to-end data analytics workflow:

> **Transform raw retail data into evidence-based business decisions.**

Rather than focusing only on technical outputs, the project emphasizes the connection between:

**Data → Analysis → Business Problem → Insight → Recommendation → Financial Impact**
