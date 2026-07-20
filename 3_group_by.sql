--GROUP BY
/*
Average billing amount by hospital.
Number of patients by doctor.
Average age by gender.
Count patients by insurance provider.
Total billing by hospital.
Average billing by medical condition.
Count patients by blood type.
Average hospital stay by admission type.
Find hospitals with more than 20 patients.
Display medical conditions with average billing greater than $10,000.
*/


SELECT hospital,ROUND(AVG(billing_amount),2)
FROM healthcare
GROUP BY hospital
LIMIT 10;


SELECT patient_name,doctor
FROM healthcare;


SELECT gender,avg(age)
FROM healthcare
GROUP BY gender;


SELECT insurance_provider,count(patient_name)
FROM healthcare
GROUP BY insurance_provider;



SELECT hospital,SUM(billing_amount) AS total_amount
FROM healthcare
GROUP BY hospital
ORDER BY sum(billing_amount) DESC;


SELECT medical_condition,AVG(billing_amount) AS total_patient
FROM healthcare
GROUP BY medical_condition;


SELECT blood_type,count(*) AS total_patient
FROM healthcare
GROUP BY blood_type;


SELECT admission_type,AVG(stay_at_hospital) AS stay
FROM healthcare
GROUP BY admission_type;


SELECT hospital, count(*)
FROM healthcare
GROUP BY hospital
HAVING count(*) > 20;



SELECT medical_condition,AVG(billing_amount) AS avg_billing_amount
FROM healthcare
GROUP BY medical_condition
HAVING AVG(billing_amount)>10000;

