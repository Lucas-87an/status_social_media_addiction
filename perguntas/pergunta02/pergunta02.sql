/* Qual é a idade média dos estudantes para cada plataforma de rede social utilizada? */

SELECT
	ssma.most_used_platform,
	round(AVG(ssma.age), 0) AS idade_media
FROM status_social_media_addiction ssma 
GROUP BY ssma.most_used_platform
ORDER BY ssma.most_used_platform;