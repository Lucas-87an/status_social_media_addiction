/* Qual é a média de horas de sono por idade, considerando o nível acadêmico e o status de relacionamento? */

SELECT
	ssma.age,
	ssma.academic_level,
	ssma.relationship_status,
	ROUND(AVG(ssma.sleep_hours_per_night::numeric), 2) AS media_horas_sono
FROM status_social_media_addiction ssma
GROUP BY age, academic_level, relationship_status
ORDER BY academic_level, age, media_horas_sono DESC;