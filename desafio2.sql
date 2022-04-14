SELECT
COUNT(DISTINCT msc.cancoes) AS cancoes, 
COUNT(DISTINCT art.artista) AS artistas, 
COUNT(DISTINCT alb.album) AS albuns
 
FROM 
	SpotifyClone.musicas AS msc
INNER JOIN
	SpotifyClone.artist AS art
INNER JOIN
	SpotifyClone.album AS alb
ON art.artista_id = alb.artista_id;




