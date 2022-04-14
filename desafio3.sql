SELECT
user.usuario AS usuario,
COUNT(hist.data_reproducao) AS qtde_musicas_ouvidas,
ROUND(SUM(msc.duracao_segundos/60),2)AS total_minutos
FROM 
	SpotifyClone.user AS user

 INNER JOIN
	SpotifyClone.historico AS hist
ON user.usuario_id = hist.usuario_id

INNER JOIN 
	SpotifyClone.musicas AS msc
ON msc.cancoes_id = hist.cancoes_id

GROUP BY usuario
ORDER BY usuario;



