SELECT c.cancao AS nome, COUNT(*) AS reproducoes FROM SpotifyClone.historico h
INNER JOIN SpotifyClone.cancoes c ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios u
ON (u.usuario_id = h.usuario_id) AND u.plano_id IN (1, 2)
GROUP BY nome;