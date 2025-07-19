SELECT TOP 5
   product_category,
    SUM(transaction_qty) AS total_quantity
FROM dbo.coffedb
GROUP BY product_category
ORDER BY total_quantity DESC;

SELECT 
   product_detail,
   ROUND(SUM(transaction_qty * unit_price), 3) AS total_revenue
FROM dbo.coffedb
GROUP BY product_detail
ORDER BY total_revenue DESC;
SELECT 
   store_location,
   ROUND(SUM(transaction_qty * unit_price), 3) AS revenue_by_location
FROM dbo.coffedb
GROUP BY store_location
ORDER BY revenue_by_location DESC;

SELECT 
    DATEPART(HOUR, transaction_time) AS hour_of_day, 
    ROUND(SUM(transaction_qty * unit_price), 3) AS total_sales
FROM dbo.coffedb
GROUP BY DATEPART(HOUR, transaction_time)
ORDER BY hour_of_day;
SELECT 
    transaction_date, 
    COUNT(DISTINCT transaction_id) AS total_transactions
FROM dbo.coffedb
GROUP BY transaction_date
ORDER BY transaction_date;

WITH total_qty AS (
  SELECT SUM(transaction_qty) AS total_quantity
  FROM dbo.coffedb
),
top3_products AS (
  SELECT TOP 3 product_detail, SUM(transaction_qty) AS qty
  FROM dbo.coffedb
  GROUP BY product_detail
  ORDER BY qty DESC
)
SELECT 
  product_detail,
  qty,
  ROUND(CAST(qty AS FLOAT) / (SELECT total_quantity FROM total_qty) * 100, 2) AS percent_of_total
FROM top3_products;

SELECT store_id, 
       MIN(transaction_date) AS ouverture,
       MAX(transaction_date) AS derniere_vente,
       DATEDIFF(DAY, MIN(transaction_date), MAX(transaction_date)) AS jours_actif
FROM dbo.coffedb
GROUP BY store_id
ORDER BY jours_actif DESC;


SELECT product_detail, MAX(transaction_date) AS derniere_vente
FROM dbo.coffedb
GROUP BY product_detail
HAVING MAX(transaction_date) < DATEADD(DAY, -30, GETDATE());


WITH revenue_data AS (
  SELECT product_detail, 
         SUM(transaction_qty * unit_price) AS revenue
  FROM dbo.coffedb
  GROUP BY product_detail
),
revenue_ranked AS (
  SELECT *,
         SUM(revenue) OVER (ORDER BY revenue DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cum_revenue,
         SUM(revenue) OVER () AS total_revenue
  FROM revenue_data
)
SELECT 
  product_detail, 
  ROUND(revenue, 3) AS revenue,
  ROUND((cum_revenue / total_revenue) * 100, 2) AS cum_percent
FROM revenue_ranked
WHERE (cum_revenue / total_revenue) <= 0.8;



SELECT transaction_id, store_location, transaction_time
FROM dbo.coffedb
WHERE DATEPART(HOUR, transaction_time) < 8 OR DATEPART(HOUR, transaction_time) > 20;


SELECT 
    product_detail,
    SUM(transaction_qty) AS total_qty,
    ROUND(SUM(transaction_qty * unit_price), 3) AS total_revenue,
    ROUND(SUM(transaction_qty * unit_price) / NULLIF(SUM(transaction_qty), 0), 2) AS unit_avg_price
FROM dbo.coffedb
GROUP BY product_detail
ORDER BY unit_avg_price ASC;

SELECT store_id, product_detail,
       ROUND(STDEV(unit_price), 2) AS price_stddev,
       ROUND(AVG(unit_price), 2) AS price_mean,
       CASE 
         WHEN AVG(unit_price) = 0 THEN NULL
         ELSE ROUND(STDEV(unit_price) / AVG(unit_price), 2)
       END AS coeff_variation
FROM dbo.coffedb
GROUP BY store_id, product_detail
HAVING COUNT(*) > 5
ORDER BY coeff_variation DESC;

