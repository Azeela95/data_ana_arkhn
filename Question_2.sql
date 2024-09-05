SELECT AVG(strftime('%Y', 'now') - strftime('%Y', date_naissance)) AS age_moyen
FROM patients;
