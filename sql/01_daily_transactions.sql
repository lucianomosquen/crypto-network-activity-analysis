-- Daily transaction volume on Ethereum network (last 90 days)

SELECT
  DATE(block_timestamp) AS fecha,
  COUNT(*) AS transacciones
FROM `bigquery-public-data.crypto_ethereum.transactions`
WHERE DATE(block_timestamp) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY)
GROUP BY fecha
ORDER BY fecha;
