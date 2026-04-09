SELECT
  DATE(block_timestamp) AS fecha,
  COUNT(*) AS transacciones,
  AVG(gas_price) AS avg_gas_price
FROM `bigquery-public-data.crypto_ethereum.transactions`
WHERE DATE(block_timestamp) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY)
GROUP BY fecha
ORDER BY fecha;
