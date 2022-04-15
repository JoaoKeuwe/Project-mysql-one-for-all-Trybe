SELECT
	DISTINCT user.usuario AS usuario,
CASE
 WHEN MAX(YEAR(cond.data_reproducao ))= 2021 THEN 'usuario ativo'
 ELSE 'usuario inativo'
 END
 AS condicao_usuario
FROM 
	SpotifyClone.user AS user    
INNER JOIN SpotifyClone.historico AS cond
ON user.usuario_id = cond.usuario_id

GROUP BY user.usuario
ORDER BY user.usuario;





