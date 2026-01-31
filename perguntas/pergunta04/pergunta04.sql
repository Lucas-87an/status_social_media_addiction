/* Qual é o gênero predominante entre os usuários de redes sociais em cada país? */

SELECT 
	ssma.country,
	ssma.gender,
	count(*) AS count
FROM status_social_media_addiction ssma
GROUP BY country, gender
ORDER BY ssma.country, count;