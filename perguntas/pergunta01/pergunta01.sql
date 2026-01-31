/* Qual a porcentagem de estudantes que relatam impacto negativo no desempenho acadêmico por plataforma de rede social? */

SELECT
    most_used_platform,
    affects_academic_performance,
    ROUND(
        100.0 * COUNT(*) / 
        SUM(COUNT(*)) OVER (PARTITION BY most_used_platform),
        2
    ) AS percentual
FROM status_social_media_addiction
GROUP BY most_used_platform, affects_academic_performance
ORDER BY most_used_platform, percentual DESC;