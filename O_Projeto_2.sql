SELECT
    DATETRUNC(week, o.order_purchase_timestamp) AS semana,
    ROUND(SUM(oi.price + oi.freight_value), 2)  AS receita_total
FROM Olist_orders_dataset o
JOIN Olist_order_items_dataset oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY 1;











Select O.Order_id,O.order_status,O.*,Oi.*
From 
Olist_orders_dataset O
INNER JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id





-- Soma a quantidade de itens por produto
SELECT 
    p.nome_produto, 
    SUM(i.quantidade) as total_vendido
FROM 
    Produtos p
JOIN 
    ItensPedido i ON p.id_prod = i.id_prod
GROUP BY 
    p.nome_produto;



Select O.Order_id,
Sum(Oi.price) as Price,
Sum(Oi.freight_value) as Frete,
ROUND(SUM(Oi.price + Oi.freight_value),2) as total_Frete
From 
Olist_orders_dataset O
INNER JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id

GROUP BY o.order_id



SELECT 
    o.order_id,
    SUM(oi.price)                    AS total_price,
    SUM(oi.freight_value)            AS total_freight,
    SUM(oi.price + oi.freight_value) AS total
FROM Olist_orders_dataset o
INNER JOIN olist_ecommerce.dbo.Olist_order_items_dataset oi 
    ON o.order_id = oi.order_id
GROUP BY o.order_id










ORDER BY o.order_id;



     SELECT 
    o.order_id,
    oi.order_item_id,
    oi.price,
    oi.freight_value,
    SUM(oi.price + oi.freight_value) OVER (PARTITION BY o.order_id) AS total
FROM Olist_orders_dataset o
INNER JOIN olist_ecommerce.dbo.Olist_order_items_dataset oi 
    ON o.order_id = oi.order_id;
























SELECT TOP 1 * From
Olist_orders_dataset

SELECT TOP 1 *
FROM olist_ecommerce.dbo.Olist_order_items_dataset;



Select O.Order_id,
Sum(Oi.price) as Price,
Sum(Oi.freight_value) as Frete,
ROUND(SUM(Oi.price + Oi.freight_value),2) as total_Frete
From 
Olist_orders_dataset O
INNER JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id
Where order_status=delivered
GROUP BY o.order_id


Select O.Order_id,O.order_status,
Sum(Oi.price) as Price,
Sum(Oi.freight_value) as Frete,
ROUND(SUM(Oi.price + Oi.freight_value),2) as total_Frete
From 
Olist_orders_dataset O
INNER JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id
Where O.order_status='delivered'
GROUP BY o.order_id, o.order_status;









Select O.Order_id,O.order_status,
Sum(Oi.price) as Price,
Sum(Oi.freight_value) as Frete,
ROUND(SUM(Oi.price + Oi.freight_value),2) as Total_Frete
From 
Olist_orders_dataset O
 JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id
Where O.order_status='delivered'
GROUP BY o.order_id, o.order_status;


Select O.Order_id,O.order_status,O.order_purchase_timestamp,

ROUND(SUM(Oi.price + Oi.freight_value),2) as Total_Frete
From 
Olist_orders_dataset O
 JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id
Where O.order_status='delivered'
GROUP BY o.order_id, o.order_status,order_purchase_timestamp;



A Receita Total
Select O.Order_id,O.order_status,

Datetrunc(week,O.order_purchase_timestamp) as Semana,
ROUND(SUM(Oi.price + Oi.freight_value),2) as Total_Frete
From 
Olist_orders_dataset O
 JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id
Where O.order_status='delivered'
GROUP BY o.order_id, o.order_status,Datetrunc(week,O.order_purchase_timestamp);

O total dos Pedidos
Select O.Order_id,O.order_status,

Datetrunc(week,O.order_purchase_timestamp) as Semana,
Count(DISTINCT O.order_id) as Pedidos
From 
Olist_orders_dataset O
 JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id
Where O.order_status='delivered'
GROUP BY o.order_id, o.order_status,Datetrunc(week,O.order_purchase_timestamp);










SELECT
    DATETRUNC(week, o.order_purchase_timestamp) AS semana,
    ROUND(SUM(oi.price + oi.freight_value), 2)  AS receita_total
FROM Olist_orders_dataset o
JOIN Olist_order_items_dataset oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY 1;





Select O.Order_id,O.order_status,

Datetrunc(week,O.order_purchase_timestamp) as Semana,
COUnt(DISTINCT O.order_id) as Pedidos
From 
Olist_orders_dataset O
 JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id
Where O.order_status='delivered'
GROUP BY o.order_id, o.order_status,Datetrunc(week,O.order_purchase_timestamp);


Select O.Order_id,O.order_status,

Datetrunc(week,O.order_purchase_timestamp) as Semana,
COUnt(DISTINCT O.order_id) as Pedidos
From 
Olist_orders_dataset O
 JOIN  olist_ecommerce.dbo.Olist_order_items_dataset Oi  On O.Order_id=Oi.Order_id
Where O.order_status='delivered'
GROUP BY o.order_id, o.order_status,Datetrunc(week,O.order_purchase_timestamp);

SELECT
    DATETRUNC(week, o.order_purchase_timestamp) AS semana,
    ROUND(SUM(oi.price + oi.freight_value)
    / COUNT(DISTINCT  o.order_id),2)     AS receita_total

FROM Olist_orders_dataset o
JOIN Olist_order_items_dataset oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY 
Datetrunc(week,O.order_purchase_timestamp)
 ORDER BY semana;




SELECT
    DATETRUNC(week, o.order_purchase_timestamp)        AS semana,
    ROUND(SUM(oi.price + oi.freight_value) /
          COUNT(DISTINCT o.order_id), 2)               AS ticket_medio
FROM Olist_orders_dataset o
JOIN olist_ecommerce.dbo.Olist_order_items_dataset oi 
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;

SELECT
    DATETRUNC(week, o.order_purchase_timestamp) AS semana,
    ROUND(AVG(CAST(r.review_score AS FLOAT)),2) AS avaliacao_media
FROM Olist_orders_dataset o
JOIN olist_ecommerce.dbo.Olist_order_reviews_dataset r 
    ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS

WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;


SELECT
    DATETRUNC(week, o.order_purchase_timestamp)  AS semana,
    ROUND(AVG(CAST(r.review_score AS FLOAT)), 2) AS avaliacao_media
FROM olist_ecommerce.dbo.Olist_orders_dataset o
JOIN olist_ecommerce.dbo.Olist_order_reviews_dataset r
    ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;




SELECT
    DATETRUNC(week, o.order_purchase_timestamp)        AS semana,
AVG(CAST(r.review_score AS FLOAT))    AS avaliacao_media
FROM Olist_orders_dataset o
JOIN olist_order_reviews_dataset r
        ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS

WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;










SELECT
    DATETRUNC(week, o.order_purchase_timestamp)  AS semana,
    ROUND(AVG(CAST(r.review_score AS FLOAT)), 2) AS avaliacao_media
FROM olist_ecommerce.dbo.Olist_orders_dataset o
JOIN olist_ecommerce.dbo.Olist_order_reviews_dataset r
    ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;



  Select  * from  olist_order_reviews_dataset
  where review_score=1














SELECT
    DATETRUNC(week, o.order_purchase_timestamp)      AS semana,
    ROUND(AVG(CAST(r.review_score AS FLOAT)), 2)     AS avaliacao_media
FROM olist_ecommerce.dbo.Olist_orders_dataset o
JOIN olist_ecommerce.dbo.Olist_order_reviews_dataset r
    ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS
    WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;







SELECT
    DATETRUNC(week, o.order_purchase_timestamp)      AS semana,
    ROUND(AVG(CAST(r.review_score AS FLOAT)), 2)     AS avaliacao_media
FROM olist_ecommerce.dbo.Olist_orders_dataset o
JOIN olist_ecommerce.dbo.Olist_order_reviews_dataset r
    ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;


  Select  * from  olist_order_reviews_dataset
  where review_score=1



  SELECT
    DATETRUNC(week, o.order_purchase_timestamp)      AS semana,
    ROUND(SUM(oi.price + oi.freight_value), 2)       AS receita_total,
    COUNT(DISTINCT o.order_id)                        AS total_pedidos,
    ROUND(SUM(oi.price + oi.freight_value) /
          COUNT(DISTINCT o.order_id), 2)             AS ticket_medio,
    ROUND(AVG(CAST(r.review_score AS FLOAT)), 2)     AS avaliacao_media
FROM olist_ecommerce.dbo.Olist_orders_dataset o
JOIN olist_ecommerce.dbo.Olist_order_items_dataset oi
    ON o.order_id = oi.order_id
JOIN olist_ecommerce.dbo.Olist_order_reviews_dataset r
    ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;
/*
 * SCRIPT:O_Projeto_2.sql
 * DESCRIÇÃO: Identificação de anomalias (picos/quedas) na receita usando STDEV.
 * DATASET: Olist
 */

WITH kpis AS (
    SELECT
        DATETRUNC(week, o.order_purchase_timestamp)      AS semana,
        ROUND(SUM(oi.price + oi.freight_value), 2)       AS receita_total,
        COUNT(DISTINCT o.order_id)                        AS total_pedidos,
        ROUND(SUM(oi.price + oi.freight_value) /
              COUNT(DISTINCT o.order_id), 2)             AS ticket_medio,
        ROUND(AVG(CAST(r.review_score AS FLOAT)), 2)     AS avaliacao_media
    FROM olist_ecommerce.dbo.Olist_orders_dataset o
    JOIN olist_ecommerce.dbo.Olist_order_items_dataset oi
        ON o.order_id = oi.order_id
    JOIN olist_ecommerce.dbo.Olist_order_reviews_dataset r
        ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS
    WHERE o.order_status = 'delivered'
    GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
),
anomalias AS (
    SELECT
        semana,
        receita_total,
        total_pedidos,
        ticket_medio,
        avaliacao_media,
        AVG(receita_total) OVER (
            ORDER BY semana
            ROWS BETWEEN 3 PRECEDING AND CURRENT ROW
        ) AS media_movel_receita,
        STDEV(receita_total) OVER (
            ORDER BY semana
            ROWS BETWEEN 3 PRECEDING AND CURRENT ROW
        ) AS desvio_receita
    FROM kpis
)
SELECT
    semana,
    receita_total,
    total_pedidos,
    ticket_medio,
    avaliacao_media,
    ROUND(media_movel_receita, 2)                           AS media_movel,
    ROUND(media_movel_receita + 2 * desvio_receita, 2)      AS limite_superior,
    ROUND(media_movel_receita - 2 * desvio_receita, 2)      AS limite_inferior,
    CASE
        WHEN receita_total > media_movel_receita + 2 * desvio_receita THEN 'ANOMALIA ALTA'
        WHEN receita_total < media_movel_receita - 2 * desvio_receita THEN 'ANOMALIA BAIXA'
        ELSE 'NORMAL'
    END AS status_anomalia
FROM anomalias
ORDER BY semana;



/*
 * SCRIPT: O_Projeto_2.sql
 * DESCRIÇÃO:Usando as anomalias (picos/quedas) na receita usando STDEV.
 * DATASET: Olist (2016-2018)
 * TÉCNICA: Window Functions para Média Móvel (1 Preceding) e cálculo de Desvio Padrão.
 */

WITH kpis AS (
    SELECT
        DATETRUNC(week, o.order_purchase_timestamp) AS semana,
        ROUND(SUM(oi.price + oi.freight_value), 2)  AS receita_total,
        COUNT(DISTINCT o.order_id)                  AS total_pedidos,
        ROUND(SUM(oi.price + oi.freight_value) /
              COUNT(DISTINCT o.order_id), 2)        AS ticket_medio,
        ROUND(AVG(CAST(r.review_score AS FLOAT)), 2) AS avaliacao_media
    FROM olist_ecommerce.dbo.Olist_orders_dataset o
    JOIN olist_ecommerce.dbo.Olist_order_items_dataset oi
        ON o.order_id = oi.order_id
    JOIN olist_ecommerce.dbo.Olist_order_reviews_dataset r
        ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS
    WHERE o.order_status = 'delivered'
    GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
),
anomalias AS (
    SELECT
        semana,
        receita_total,
        total_pedidos,
        ticket_medio,
        avaliacao_media,
        AVG(receita_total) OVER (
            ORDER BY semana
            ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
        ) AS media_movel_receita,
        STDEV(receita_total) OVER (
            ORDER BY semana
            ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
        ) AS desvio_receita
    FROM kpis
)
SELECT
    semana,
    receita_total,
    total_pedidos,
    ticket_medio,
    avaliacao_media,
    ROUND(media_movel_receita, 2) AS media_movel,
    ROUND(media_movel_receita + 1.5 * desvio_receita, 2) AS limite_superior,
    ROUND(media_movel_receita - 1.5 * desvio_receita, 2) AS limite_inferior,
    CASE
        WHEN receita_total > media_movel_receita + 1.5 * desvio_receita THEN 'ANOMALIA ALTA'
        WHEN receita_total < media_movel_receita - 1.5 * desvio_receita THEN 'ANOMALIA BAIXA'
        ELSE 'NORMAL'
    END AS status_anomalia
FROM anomalias
ORDER BY semana;


WITH kpis AS (
    SELECT
        DATETRUNC(week, o.order_purchase_timestamp)      AS semana,
        ROUND(SUM(oi.price + oi.freight_value), 2)       AS receita_total,
        COUNT(DISTINCT o.order_id)                        AS total_pedidos,
        ROUND(SUM(oi.price + oi.freight_value) /
              COUNT(DISTINCT o.order_id), 2)             AS ticket_medio,
        ROUND(AVG(CAST(r.review_score AS FLOAT)), 2)     AS avaliacao_media
    FROM olist_ecommerce.dbo.Olist_orders_dataset o
    JOIN olist_ecommerce.dbo.Olist_order_items_dataset oi
        ON o.order_id = oi.order_id
    JOIN olist_ecommerce.dbo.Olist_order_reviews_dataset r
        ON o.order_id = r.order_id COLLATE Latin1_General_CI_AS
    WHERE o.order_status = 'delivered'
    AND YEAR(o.order_purchase_timestamp) >= 2017
    GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
),
estatisticas AS (
    SELECT
        semana,
        receita_total,
        total_pedidos,
        ticket_medio,
        avaliacao_media,
        AVG(receita_total)  OVER () AS media_geral,
        STDEV(receita_total) OVER () AS desvio_geral
    FROM kpis
)
SELECT
    semana,
    receita_total,
    total_pedidos,
    ticket_medio,
    avaliacao_media,
    ROUND(media_geral, 2)                        AS media_geral,
    ROUND(media_geral + 1.5 * desvio_geral, 2)  AS limite_superior,
    ROUND(media_geral - 1.5 * desvio_geral, 2)  AS limite_inferior,
    CASE
        WHEN receita_total > media_geral + 1.5 * desvio_geral THEN 'ANOMALIA ALTA'
        WHEN receita_total < media_geral - 1.5 * desvio_geral THEN 'ANOMALIA BAIXA'
        ELSE 'NORMAL'
    END AS status_anomalia
FROM estatisticas
ORDER BY semana;




🚀 Construindo KPIs de Vendas com SQL Server — Dataset Olist

Estou desenvolvendo um projeto de análise de dados usando o dataset real do marketplace brasileiro Olist (2016–2018), com mais de 100 mil pedidos.

O objetivo: monitorar os principais indicadores de vendas semana a semana usando apenas SQL Server.

📊 KPI 1 — Receita Total

SELECT
    DATETRUNC(week, o.order_purchase_timestamp) AS semana,
    ROUND(SUM(oi.price + oi.freight_value), 2)  AS receita_total
FROM Olist_orders_dataset o
JOIN Olist_order_items_dataset oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;

🛒 KPI 2 — Número de Pedidos

SELECT
    DATETRUNC(week, o.order_purchase_timestamp) AS semana,
    COUNT(DISTINCT o.order_id)                  AS total_pedidos
FROM Olist_orders_dataset o
JOIN Olist_order_items_dataset oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;

🎯 KPI 3 — Ticket Médio

SELECT
    DATETRUNC(week, o.order_purchase_timestamp) AS semana,
    ROUND(SUM(oi.price + oi.freight_value) /
          COUNT(DISTINCT o.order_id), 2)        AS ticket_medio
FROM Olist_orders_dataset o
JOIN Olist_order_items_dataset oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATETRUNC(week, o.order_purchase_timestamp)
ORDER BY semana;

Técnicas utilizadas:
→ DATETRUNC para agrupar por semana
→ JOIN entre tabelas de pedidos e itens
→ COUNT(DISTINCT) para pedidos únicos
→ ROUND para precisão nos valores
→ WHERE filtrando apenas pedidos entregues

