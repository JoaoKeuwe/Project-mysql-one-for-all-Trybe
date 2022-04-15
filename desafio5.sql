SELECT 
 msc.cancoes AS cancao,
 COUNT(hist.cancoes_id) AS reproducoes
 FROM SpotifyClone.musicas AS msc
 INNER JOIN SpotifyClone.historico AS hist
 ON msc.cancoes_id = hist.cancoes_id
 
 group by msc.cancoes_id
 order by reproducoes desc, cancao LIMIT 2;