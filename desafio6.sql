SELECT
  MIN(p.valor) AS 'faturamento_minimo',
  MAX(p.valor) AS 'faturamento_maximo',
  ROUND(SUM(p.valor * (
    SELECT COUNT(*) FROM SpotifyClone.usuarios u
    WHERE p.plano_id = u.plano_id
  )) / 10, 2) AS 'faturamento_medio',
  SUM(p.valor * (
    SELECT COUNT(*) FROM SpotifyClone.usuarios u
    WHERE p.plano_id = u.plano_id
  )) AS 'faturamento_total'
FROM SpotifyClone.planos p;