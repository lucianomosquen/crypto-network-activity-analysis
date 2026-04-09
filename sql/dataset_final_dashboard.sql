WITH base AS (
  SELECT
    DATE(block_timestamp) as fecha,
    COUNT(*) as transacciones,
    AVG(gas_price) as avg_gas_price,
    SUM(CASE WHEN value < 1e16 THEN 1 ELSE 0 END) as pequenas,
    SUM(CASE WHEN value < 1e18 AND value >= 1e16 THEN 1 ELSE 0 END) as medianas,
    SUM(CASE WHEN value >= 1e18 THEN 1 ELSE 0 END) as grandes
  FROM `bigquery-public-data.crypto_ethereum.transactions`
  WHERE DATE(block_timestamp) >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY)
  GROUP BY fecha
)

SELECT
  fecha,
  transacciones,
  avg_gas_price,
  pequenas / transacciones as pct_pequenas,
  medianas / transacciones as pct_medianas,
  grandes / transacciones as pct_grandes
FROM base
ORDER BY fecha