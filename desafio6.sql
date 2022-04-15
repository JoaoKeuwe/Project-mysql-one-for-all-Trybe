SELECT 
 ROUND(MIN(valor_plano),2) AS faturamento_minimo,
 ROUND(MAX(valor_plano),2) AS faturamento_maximo,
 AVG(valor_plano) AS faturamento_medio,
 SUM(valor_plano) AS faturamento_total
 FROM SpotifyClone.plan;