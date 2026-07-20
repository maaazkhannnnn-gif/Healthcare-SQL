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
