SELECT
  art.artista AS artista,
  alb.album AS album,
  (
    SELECT COUNT(*) FROM SpotifyClone.seguindo seg
    WHERE seg.artista_id = art.artista_id
  ) AS seguidores
FROM SpotifyClone.artistas art
INNER JOIN SpotifyClone.albuns alb ON alb.artista_id = art.artista_id
ORDER BY seguidores DESC, artista, album;