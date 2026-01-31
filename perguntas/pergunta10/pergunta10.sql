/* Quais são as plataformas de redes sociais mais utilizadas em cada país? */

SELECT
    country,
    most_used_platform,
    total
FROM (
    SELECT
        ssma.country,
        ssma.most_used_platform,
        COUNT(*) AS total,
        RANK() OVER (
            PARTITION BY ssma.country
            ORDER BY COUNT(*) DESC
        ) AS ranking
    FROM status_social_media_addiction ssma
    GROUP BY ssma.country, ssma.most_used_platform
) t
WHERE ranking = 1
ORDER BY country;