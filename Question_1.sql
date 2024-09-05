SELECT ville, COUNT (*) AS nomrbre_de_patients
FROM Patients 
GROUP BY ville;