SELECT p.patient_id, p.nom, p.prenom, AVG(JULIANDAY(c2.date_consultation) - JULIANDAY(c1.date_consultation)) AS duree_moyenne
FROM consultations c1
JOIN consultations c2 ON c1.patient_id = c2.patient_id AND c2.date_consultation > c1.date_consultation
JOIN patients p ON c1.patient_id = p.patient_id
GROUP BY p.patient_id
HAVING COUNT(c1.consultation_id) > 1;
