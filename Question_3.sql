SELECT m.specialite, COUNT(c.consultation_id) AS nombre_consultations
FROM consultations c
JOIN medecins m ON c.medecin_id = m.medecin_id
GROUP BY m.specialite;
