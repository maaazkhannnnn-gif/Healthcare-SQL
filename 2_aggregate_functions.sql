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
