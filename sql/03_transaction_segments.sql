SELECT
  DATE(block_timestamp) AS fecha,
  COUNT(*) AS transacciones,
  SUM(CASE WHEN value < 1e16 THEN 1 ELSE 0 END) AS pequenas,
  SUM(CASE WHEN value < 1e18 AND value >= 1e16 THEN 1 ELSE 0 END) AS medianas,
  SUM(CASE WHEN value >= 1e18 THEN 1 ELSE 0 END) AS grandes
FROM `bigquery-public-data.crypto_ethereum.transactions`
WHERE DATE(block_timestamp) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY)
GROUP BY fecha
ORDER BY fecha;
