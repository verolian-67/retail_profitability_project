SELECT DISTINCT ship_mode
FROM sales_analysis;
-- Determine the mode of shipping used for delivery
SELECT ship_mode,
  SUM(quantity) AS total_quantity,
  ROUND(
    (SUM(quantity) * 100) / SUM(SUM(quantity)) OVER(),
    2
  ) AS percentage_of_total,
  RANK() OVER(
    ORDER BY SUM(quantity) DESC
  ) AS quantity_rank
FROM sales_analysis
GROUP BY ship_mode