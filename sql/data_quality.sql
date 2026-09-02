-- create sales_analysis table
CREATE TABLE sales_analysis (
  ship_mode VARCHAR(50),
  segment VARCHAR(50),
  country VARCHAR(50),
  city VARCHAR(100),
  state VARCHAR(50),
  postal_code INTEGER,
  region VARCHAR(50),
  category VARCHAR(100),
  sub_category VARCHAR(100),
  sales NUMERIC(12, 2),
  quantity INTEGER,
  discount NUMERIC(5, 2),
  profit NUMERIC(12, 2)
);
-- check entire dataset
SELECT *
FROM sales_analysis;
-- check for null values
-- Findings: No null values
SELECT COUNT(*) AS total_rows,
  COUNT(category) AS category_non_null,
  COUNT(sales) AS sales_non_null,
  COUNT(profit) AS profit_non_null,
  COUNT(sub_category) AS sub_category_non_null
FROM sales_analysis;
-- check for negative profit
-- Findings: 1871
SELECT *
FROM sales_analysis;
WHERE profit < 0;
-- check for zero/negative sales
-- Findings: No data
SELECT *
FROM saleS_analysis
WHERE sales <= 0;
-- Discount range
-- Findings: max = 0.80, min = 0.00, avg = 0.16
SELECT MAX(discount) AS maximum_discount,
  MIN(discount) AS minimum_discount,
  ROUND(AVG(discount), 2) AS average_discount
FROM sales_analysis;