# Crypto Network Activity & Cost Analysis

This project analyzes Ethereum network activity from an operations and finance perspective using public blockchain data from BigQuery and a dashboard built in Power BI.

## Objective

The goal of this project is to explore how network activity behaves over time, how transaction costs fluctuate, and how the overall volume is distributed across transaction sizes.

This type of analysis can be useful for fintech companies working with crypto products, where network costs and transaction behavior directly affect user experience and operational efficiency.

## Tools Used

- Google BigQuery
- SQL
- Power BI

## Dataset

Source: `bigquery-public-data.crypto_ethereum.transactions`

The analysis focuses on the last 90 days of Ethereum transactions and includes:

- Daily transaction volume
- Average gas price
- Transaction segmentation by size
- Share of small, medium, and large transactions

## Key Questions

- Is network activity growing, declining, or stable?
- Is there a relationship between transaction volume and gas price?
- What type of transactions dominate the network?
- How does transaction composition evolve over time?

## Main Findings

- Daily transaction volume remained relatively stable, averaging around **2.22 million transactions per day**.
- Average gas price was highly volatile, averaging around **47.9 Gwei**.
- Around **87.8%** of total transactions were small transactions.
- No strong correlation was found between transaction volume and gas price, suggesting that network cost is influenced by more than just transaction count.

## Repository Structure

```bash
sql/
```

## SQL Queries Included

- `01_daily_transactions.sql`
- `02_activity_vs_gas.sql`
- `03_transaction_segments.sql`
- `04_final_dataset.sql`

## Business Interpretation

The network shows stable activity levels but highly volatile costs. In addition, transaction volume is heavily dominated by small transactions, which may indicate a distributed and intensive usage pattern rather than large-value transfers.

For crypto fintech products, this kind of analysis helps evaluate cost exposure, user behavior, and potential friction caused by network fees.

## Author

Luciano Mosquén  
Data Analyst

