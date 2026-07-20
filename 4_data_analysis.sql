--Date Analysis
/*
Find patients admitted in 2023.
Count monthly admissions.
Find busiest admission month.
Calculate length of hospital stay.
Find average stay duration by hospital.
Find patients admitted on weekends.
Find admissions per year.
*/


SELECT count(patient_name)
FROM data_2018; --303

SELECT count(patient_name)
FROM data_2019; --1973

SELECT count(patient_name)
FROM data_2020; --2044

SELECT count(patient_name)
FROM data_2021; --2063

SELECT count(patient_name)
FROM data_2022; --2001

SELECT count(patient_name)
FROM data_2023; --1616




SELECT
    DATE_TRUNC('month', date_of_admission)::date AS admission_month,
    COUNT(*) AS total_admissions
FROM healthcare
GROUP BY admission_month
ORDER BY total_admissions DESC;---October 2023 Also one of the busiest month of admission



SELECT patient_name,(discharge_date - date_of_admission) AS stay_at_hospital
FROM healthcare;



SELECT hospital,Round(AVG(discharge_date - date_of_admission),0) AS avg_stay
FROM healthcare
GROUP BY hospital
ORDER BY avg_stay DESC;



SELECT patient_name,date_of_admission
FROM healthcare
WHERE EXTRACT(DOW FROM date_of_admission) IN (0,6) --0 for Sunday and 6 for Saturday


SELECT count(*) AS patient_name
FROM healthcare
WHERE EXTRACT(YEAR FROM date_of_admission) = 2023;

SELECT
    EXTRACT(YEAR FROM date_of_admission) AS year,
    COUNT(*) AS total_admissions
FROM healthcare
GROUP BY year
ORDER BY year;