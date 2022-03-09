SELECT art.artista AS artista, alb.album AS album FROM SpotifyClone.artistas art
INNER JOIN SpotifyClone.albuns alb ON alb.artista_id = art.artista_id
WHERE artista = 'Walter Phoenix' ORDER BY album;