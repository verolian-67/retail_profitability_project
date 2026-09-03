SELECT DISTINCT region
FROM sales_analysis;
--Which regions generate the highest revenue?
SELECT region,
  SUM(sales) AS revenue,
  ROUND(
    (SUM(sales) * 100) / SUM(SUM(sales)) OVER(),
    2
  ) AS percentage,
  SUM(quantity) AS total_quantities
FROM sales_analysis
GROUP BY region
ORDER BY revenue DESC;
-- Which regions generate the highest profit?
SELECT region,
  SUM(profit) AS net_profit,
  ROUND(
    (SUM(profit) * 100) / SUM(SUM(profit)) OVER(),
    2
  ) AS percentage
FROM sales_analysis
GROUP BY region
ORDER BY net_profit DESC;
-- Which regions have weaker profitability relative to their sales?
SELECT region,
  ROUND(SUM(sales), 2) AS revenue,
  ROUND(SUM(profit), 2) AS net_profit,
  ROUND(
    (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
    2
  ) AS profit_margin
FROM sales_analysis
GROUP BY region
ORDER BY profit_margin ASC;