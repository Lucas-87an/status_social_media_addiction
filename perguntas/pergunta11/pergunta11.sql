/* Estudantes de diferentes níveis acadêmicos apresentam diferenças significativas no Addicted_Score e no tempo diário de uso de redes sociais? */

SELECT
	ssma.academic_level,
	ROUND(AVG(ssma.addicted_score), 0) AS media_vicio 
FROM status_social_media_addiction ssma 
GROUP BY ssma.academic_level;