/* O status de relacionamento influencia a saúde mental dos estudantes e a ocorrência de conflitos relacionados às redes sociais? */

SELECT
	ssma.relationship_status,
	ROUND(AVG(ssma.mental_health_score), 2) AS media_horas_diaria,
	ROUND(AVG(ssma.conflicts_over_social_media), 2) AS media_conflitos
FROM status_social_media_addiction ssma
GROUP BY ssma.relationship_status;