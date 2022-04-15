SELECT
art.artista AS artista,
alb.album AS album 

FROM SpotifyClone.artist art
INNER JOIN
  SpotifyClone.album AS alb
ON art.artista_id = alb.artista_id

ORDER BY artista DESC LIMIT 2;
