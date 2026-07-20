select count(*) from healthcare


SELECT  admission_type,avg(billing_amount) 
FROM healthcare
GROUP BY admission_type;



SELECT * 
FROM 
    healthcare
WHERE 
    gender='Male';



SELECT * 
FROM 
    healthcare
WHERE 
    gender='Female' AND age > 60;



SELECT 
    patient_name,blood_type
FROM 
    healthcare
WHERE 
    blood_type='A+';


SELECT 
    patient_name,medical_condition
FROM 
    healthcare
WHERE 
    medical_condition='Diabetes';



SELECT 
    patient_name,admission_type
FROM 
    healthcare
WHERE 
    admission_type='Emergency';


SELECT patient_name,age
FROM healthcare
WHERE age  BETWEEN 30 AND 50;



SELECT patient_name,round(billing_amount,2)
FROM healthcare
WHERE billing_amount > 20000
GROUP BY patient_name,billing_amount;






SELECT patient_name,test_results
FROM healthcare
WHERE test_results ='Abnormal';




SELECT patient_name,date_of_admission
FROM healthcare
WHERE date_of_admission > '2023-01-01'
ORDER BY date_of_admission;



SELECT DISTINCT(insurance_provider)
FROM healthcare
;



CREATE TABLE O_positive_Patients AS
SELECT * 
FROM 
    healthcare
WHERE 
    blood_type='O+';


CREATE TABLE O_negative_Patients AS
SELECT * 
FROM 
    healthcare
WHERE 
    blood_type='O-';


SELECT DISTINCT(patient_name)
FROM healthcare;


SELECT patient_name,gender
FROM healthcare
WHERE gender='Female';


SELECT patient_name,insurance_provider
FROM healthcare
WHERE insurance_provider='Medicare';





SELECT patient_name, hospital
FROM healthcare
WHERE hospital like 'General Hospital';


SELECT patient_name
FROM healthcare
WHERE patient_name like 'A%';   --Start with A


--Display patients with abnormal test results.

SELECT patient_name,test_results
FROM healthcare
WHERE test_results='Abnormal';  

--Find patients who stayed more than 10 days

SELECT patient_name,stay_at_hospital
FROM healthcare
WHERE stay_at_hospital > 10;




--Aggregate Functions
/*
Find the average age.
Find the average billing amount.
Find the total billing amount.
Count patients by gender.
Count patients by blood type.
Find the maximum billing amount.
Find the minimum billing amount.
Find the average stay duration.
Count patients for each medical condition.
Count admissions by admission type.
*/

SELECT avg(age)
FROM healthcare; --51


SELECT avg(billing_amount)
FROM healthcare; --25516.80

SELECT sum(billing_amount)
FROM healthcare; --255168067.77

SELECT gender,count(*)
FROM healthcare
GROUP BY gender-- MALE 4925   FEMALE 5075


SELECT count(*),blood_type
FROM healthcare
GROUP BY blood_type;  --1244 B+  1244 O- 1275 AB- 1258 AB+ 1241 A+ 1248 O+ 1252 B- 1238 A-



SELECT MAX(billing_amount)
FROM healthcare; -- 49995.90

SELECT MIN(billing_amount)
FROM healthcare; --1000.18

SELECT AVG(stay_at_hospital)
FROM healthcare; --15.56


SELECT medical_condition,COUNT(*)
FROM healthcare
GROUP BY medical_condition;


SELECT admission_type,COUNT(*)
FROM healthcare
GROUP BY admission_type;




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




--REQUIRED TABLE CREATION

--TABLE FOR 2018 DATA

CREATE TABLE data_2018 AS
SELECT *
FROM healthcare
WHERE EXTRACT(YEAR FROM date_of_admission)='2018'

--TABLE FOR 2019 DATA

CREATE TABLE data_2019 AS
SELECT *
FROM healthcare
WHERE EXTRACT(YEAR FROM date_of_admission)='2019'

--TABLE FOR 2020 DATA

CREATE TABLE data_2020 AS
SELECT *
FROM healthcare
WHERE EXTRACT(YEAR FROM date_of_admission)='2020'


--TABLE FOR 2021 DATA

CREATE TABLE data_2021 AS
SELECT *
FROM healthcare
WHERE EXTRACT(YEAR FROM date_of_admission)='2021'


--TABLE FOR 2022 DATA

CREATE TABLE data_2022 AS
SELECT *
FROM healthcare
WHERE EXTRACT(YEAR FROM date_of_admission)='2022'

--TABLE FOR 2023 DATA

CREATE TABLE data_2023 AS
SELECT *
FROM healthcare
WHERE EXTRACT(YEAR FROM date_of_admission)='2023'







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
GROUP BY 1
ORDER BY 1 DESC;---October 2023 Also one of the busiest month of admission



SELECT patient_name,(discharge_date - date_of_admission) AS stay_at_hospital
FROM healthcare;



SELECT hospital,Round(AVG(discharge_date - date_of_admission),0) AS avg_stay
FROM healthcare
GROUP BY hospital
ORDER BY avg_stay DESC;



SELECT patient_name,date_of_admission
FROM healthcare
WHERE EXTRACT(DOW FROM date_of_admission) IN (0,6) --0 for Sunday and 6 for Saturday
