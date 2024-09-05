SELECT m.nom, m.prenom, COUNT(c.consultation_id) AS nombre_consultations
FROM consultations c
JOIN medecins m ON c.medecin_id = m.medecin_id
GROUP BY c.medecin_id
ORDER BY nombre_consultations DESC
LIMIT 5;
