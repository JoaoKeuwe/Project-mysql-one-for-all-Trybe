SELECT
usuario_id AS quantidade_musicas_no_historico
FROM SpotifyClone.historico
WHERE usuario_id = 3
order by usuario_id LIMIT 1;