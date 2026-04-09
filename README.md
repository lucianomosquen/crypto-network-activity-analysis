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

## Dashboard Preview

![Dashboard](images/dashboard_full.png)

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


## 🇪🇸 Versión en español

## Objetivo

El objetivo de este proyecto es analizar el comportamiento de la actividad en la red Ethereum, evaluando cómo evoluciona el volumen de transacciones, cómo fluctúan los costos (gas) y cómo se distribuye el volumen según el tamaño de las transacciones.

Este tipo de análisis es relevante para fintechs que trabajan con productos crypto, donde los costos de red y el comportamiento de los usuarios impactan directamente en la experiencia y la operación.

## Herramientas utilizadas

- Google BigQuery  
- SQL  
- Power BI  

## Dataset

Fuente: `bigquery-public-data.crypto_ethereum.transactions`

El análisis se enfoca en los últimos 90 días e incluye:

- Volumen diario de transacciones  
- Precio promedio del gas  
- Segmentación de transacciones por tamaño  
- Participación de transacciones pequeñas, medianas y grandes  

## Preguntas clave

- ¿La actividad de la red está creciendo, cayendo o estable?
- ¿Existe relación entre el volumen de transacciones y el costo (gas)?
- ¿Qué tipo de transacciones dominan la red?
- ¿Cómo evoluciona la composición de las transacciones?

## Principales hallazgos

- El volumen diario de transacciones se mantiene relativamente estable, con un promedio de **2.22 millones de transacciones por día**.  
- El precio del gas es altamente volátil, con un promedio de **47.9 Gwei**.  
- Aproximadamente el **87.8%** de las transacciones son pequeñas.  
- No se encontró una correlación fuerte entre volumen de transacciones y costo, lo que sugiere que el gas depende de factores adicionales al simple volumen.

## Interpretación de negocio

La red presenta una actividad estable pero con costos altamente variables. Además, el volumen está dominado por transacciones pequeñas, lo que sugiere un uso intensivo y distribuido, más asociado a microinteracciones o aplicaciones descentralizadas que a transferencias de alto valor.

Este tipo de análisis permite a una fintech evaluar exposición a costos, comportamiento de usuarios y posibles fricciones en productos basados en blockchain.
