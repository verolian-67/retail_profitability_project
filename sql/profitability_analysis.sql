-- profitability by discount band
SELECT CASE
    WHEN discount = 0 THEN '0%'
    WHEN discount <= 0.10 THEN '1-10%'
    WHEN discount <= 0.20 THEN '11-20%'
    WHEN discount <= 0.30 THEN '21-30%'
    WHEN discount <= 0.40 THEN '31-40%'
    ELSE '40%'
  END AS discount_band,
  COUNT(*) AS transactions,
  SUM(sales) AS revenue,
  SUM(profit) AS net_profit,
  ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM sales_analysis
GROUP BY discount_band
ORDER BY MIN(discount);