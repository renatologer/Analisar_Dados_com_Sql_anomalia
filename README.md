# 🚀 Análise de KPIs e Detecção de Anomalias - Olist

Este projeto foca na análise de dados do marketplace **Olist** (2016-2018) utilizando **SQL Server**. O objetivo é extrair indicadores de desempenho (KPIs) e identificar anomalias semanais nos dados de vendas.

## 📊 Principais KPIs Monitorados

- **Receita Total:** Soma total de preços e fretes por semana.
- **Número de Pedidos:** Contagem de pedidos únicos entregues.
- **Ticket Médio:** Receita total dividida pelo número de pedidos.
- **Avaliação Média:** Média das notas dos reviews.

## 🧠 Detecção de Anomalias

Utilizei **Window Functions** para calcular médias móveis e desvios padrão, permitindo identificar semanas com desempenho fora do padrão (Anomalia Alta/Baixa) com base em um limite estatístico.

## 🛠️ Tecnologias Utilizadas

- **SQL Server (T-SQL)**
- **CTE (Common Table Expressions)**
- **Window Functions** (AVG, STDEV, PARTITION BY, ROWS BETWEEN)
- **DATETRUNC** (Agrupamento temporal)

---
*Projeto desenvolvido como parte do estudo de automação e análise de dados.*