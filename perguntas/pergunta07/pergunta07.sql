/* O status de relacionamento influencia o tempo diário de uso de redes sociais e o nível de vício dos estudantes? */

SELECT
	ssma.relationship_status,
	ROUND(AVG(ssma.avg_daily_usage_hours::numeric), 2) AS media_horas_diaria,
	ROUND(AVG(ssma.addicted_score), 0) AS media_vicio
FROM status_social_media_addiction ssma
GROUP BY ssma.relationship_status;