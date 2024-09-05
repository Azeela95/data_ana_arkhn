SELECT p.patient_id, p.nom, p.prenom
FROM patients p
LEFT JOIN consultations c ON p.patient_id = c.patient_id
WHERE c.consultation_id IS NULL;
