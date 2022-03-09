SELECT c.cancao AS 'cancao', COUNT(*) AS 'reproducoes'
FROM SpotifyClone.historico h
INNER JOIN SpotifyClone.cancoes c ON c.cancao_id = h.cancao_id
GROUP BY c.cancao_id ORDER BY reproducoes DESC, c.cancao LIMIT 2;