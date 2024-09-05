SELECT c.diagnostic, COUNT(c.consultation_id) AS nombre_occurrences
FROM consultations c
GROUP BY c.diagnostic
ORDER BY nombre_occurrences DESC;
