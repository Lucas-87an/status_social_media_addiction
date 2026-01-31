/* Quais países apresentam a maior média de Addicted_Score entre os estudantes? */

SELECT
	ssma.country,
	ROUND(AVG(ssma.addicted_score), 0) AS nivel_medio_vicio ,
	CASE
		WHEN addicted_score <= 4 THEN 'NIVEL MÉDIO'
		WHEN addicted_score BETWEEN 5 AND 6 THEN 'NIVEL MODERADO'
		ELSE 'NIVEL ALTO'
	END AS faixa_uso
FROM status_social_media_addiction ssma 
WHERE ssma.addicted_score >= 7
GROUP BY ssma.country, ssma.addicted_score
ORDER BY nivel_medio_vicio , faixa_uso DESC;