SELECT
  u.usuario AS 'usuario',
  COUNT(h.cancao_id) AS 'qtde_musicas_ouvidas',
  ROUND((SUM(c.duracao) / 60), 2) AS 'total_minutos'
FROM SpotifyClone.historico h
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancoes c ON c.cancao_id = h.cancao_id
GROUP BY u.usuario_id ORDER BY u.usuario;