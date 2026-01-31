/* Qual é a distribuição percentual de gênero em cada nível acadêmico? */

WITH ocorrencia_genero_nivel_acad AS (
	SELECT
		academic_level,
		gender,
		count(*) AS count
	FROM status_social_media_addiction
	GROUP BY academic_level, gender
	ORDER BY academic_level, gender
),
total_por_acad_level AS (
	SELECT
		academic_level,
		count(*) AS total
	FROM status_social_media_addiction
	GROUP BY academic_level 
)
SELECT 
	og.academic_level,
	og.gender,
	og.count,
	tl.total,
	ROUND(100.0 * og.count / tl.total, 2) AS percentage
FROM ocorrencia_genero_nivel_acad og
LEFT JOIN total_por_acad_level tl
	ON og.academic_level = tl.academic_level
ORDER BY og.academic_level, percentage DESC;







