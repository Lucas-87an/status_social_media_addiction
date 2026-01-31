/* Estudantes com maior tempo diário de uso de redes sociais dormem, em média, menos horas por noite? */

SELECT
    CASE
        WHEN avg_daily_usage_hours < 3 THEN 'Baixo uso'
        WHEN avg_daily_usage_hours BETWEEN 3 AND 6 THEN 'Uso moderado'
        ELSE 'Alto uso'
    END AS faixa_uso,
    avg_daily_usage_hours AS horas_uso_diario,
    ROUND(AVG(sleep_hours_per_night)::numeric, 2) AS media_horas_sono
FROM status_social_media_addiction
GROUP BY faixa_uso, horas_uso_diario 
ORDER BY media_horas_sono DESC;
