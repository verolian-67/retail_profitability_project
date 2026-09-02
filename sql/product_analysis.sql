-- DO for categories
-- profit ranking
SELECT category,
  SUM(sales) AS total_sales,
  SUM(profit) AS net_profit,
  ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM sales_analysis
GROUP BY category
ORDER BY net_profit DESC;
-- check for high revenue but low profit 
SELECT category,
  SUM(sales) AS total_sales,
  SUM(profit) AS net_profit,
  ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM sales_analysis
GROUP BY category
ORDER BY total_sales DESC;
-- profit_margin ranking
SELECT category,
  SUM(sales) AS total_sales,
  SUM(profit) AS net_profit,
  ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM sales_analysis
GROUP BY category
ORDER BY profit_margin DESC;
-- DO for sub_categories
-- check for high revenue but low profit
SELECT sub_category,
  SUM(sales) AS total_sales,
  SUM(profit) AS net_profit,
  ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM sales_analysis
GROUP BY sub_category
ORDER BY total_sales DESC;
-- profit ranking
SELECT sub_category,
  SUM(sales) AS total_sales,
  SUM(profit) AS net_profit,
  ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM sales_analysis
GROUP BY sub_category
ORDER BY net_profit DESC;
-- profit_margin ranking
SELECT sub_category,
  SUM(sales) AS total_sales,
  SUM(profit) AS net_profit,
  ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM sales_analysis
GROUP BY sub_category
ORDER BY profit_margin DESC;
-- product ranking
SELECT sub_category,
  SUM(sales) as revenue,
  RANK() OVER(
    ORDER BY SUM(sales) DESC
  ) as revenue_rank
FROM sales_analysis
GROUP BY sub_category;
-- rank products within each category
SELECT category,
  sub_category,
  SUM(sales) AS revenue,
  RANK() OVER(
    PARTITION BY category
    ORDER BY SUM(sales) DESC
  ) AS category_rank
FROM sales_analysis
GROUP BY category,
  sub_category;