-- Find segment that generated highest-lowesr revenue sales
SELECT segment,
  SUM(sales) as revenue,
  ROUND(
    (SUM(sales) * 100) / SUM(SUM(sales)) OVER(),
    2
  ) AS percentage,
  RANK () OVER(
    ORDER BY SUM(sales) DESC
  ) AS revenue_rank
FROM sales_analysis
GROUP BY segment;
-- Find segment that received highest-lowest  net profit
SELECT segment,
  SUM(profit) as net_profit,
  RANK() OVER(
    ORDER BY SUM(profit) DESC
  ) as profit_rank
FROM sales_analysis
GROUP BY segment;
-- Find segment that received highest-lowest  average discount
SELECT segment,
  ROUND(AVG(discount), 2) as average_discount,
  RANK() OVER(
    ORDER BY SUM(discount) DESC
  ) as discount_rank
FROM sales_analysis
GROUP BY segment;
-- Find segment that received highest-lowest deliveries
SELECT segment,
  SUM(quantity) AS total_quantities,
  ROUND(
    (SUM(quantity) * 100) / SUM(SUM(quantity)) OVER(),
    2
  ) AS percentage
FROM sales_analysis
GROUP BY segment;