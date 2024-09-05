SELECT strftime('%m', c.date_consultation) AS mois, COUNT(c.consultation_id) AS nombre_consultations
FROM consultations c
WHERE strftime('%Y', c.date_consultation) = strftime('%Y', 'now')
GROUP BY mois;

