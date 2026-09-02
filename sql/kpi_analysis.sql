SELECT 'Total Sales' AS name,
  ROUND(SUM(sales), 2) AS value
FROM sales_analysis
UNION ALL
SELECT 'Average Sales',
  ROUND(AVG(sales), 2)
FROM sales_analysis
UNION ALL
SELECT 'Profit Margin',
  ROUND((SUM(profit) / SUM(sales)) * 100, 2)
FROM sales_analysis
UNION ALL
SELECT 'Average Discount',
  ROUND(AVG(discount), 2)
FROM sales_analysis
UNION ALL
SELECT 'Average Profit',
  ROUND(AVG(profit), 2)
FROM sales_analysis
UNION ALL
SELECT 'Total Profit',
  ROUND(
    SUM(
      CASE
        WHEN profit > 0 THEN profit
        ELSE 0
      END
    ),
    2
  )
FROM sales_analysis
UNION ALL
SELECT 'Total Loss',
  ROUND(
    SUM(
      CASE
        WHEN profit < 0 THEN profit
        ELSE 0
      END
    ),
    2
  )
FROM sales_analysis
UNION ALL
SELECT 'Net Profit',
  ROUND(SUM(profit), 2)
FROM sales_analysis;