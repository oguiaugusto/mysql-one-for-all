SELECT u.usuario AS 'usuario',
  IF (MAX(YEAR(h.`data`)) > 2020, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.historico h ON h.usuario_id = u.usuario_id
GROUP BY u.usuario ORDER BY u.usuario;