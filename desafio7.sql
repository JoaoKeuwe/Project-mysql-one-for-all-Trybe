SELECT
art.artista AS artista,
alb.album AS album ,
COUNT(seg.artista_id) AS seguidores

FROM SpotifyClone.artist art
 INNER JOIN
 
	SpotifyClone.album AS alb
ON art.artista_id = alb.artista_id

INNER JOIN
	SpotifyClone.seguidores AS seg
ON seg.artista_id = alb.artista_id

GROUP BY alb.album_id
ORDER BY seguidores DESC, artista, album;





