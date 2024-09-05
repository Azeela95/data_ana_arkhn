SELECT p.patient_id, p.nom, p.prenom, COUNT(c.consultation_id) AS nombre_consultations
FROM consultations c
JOIN patients p ON c.patient_id = p.patient_id
GROUP BY p.patient_id
ORDER BY nombre_consultations DESC;
