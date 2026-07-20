# 🏥 Healthcare SQL Data Analysis

A PostgreSQL SQL project that explores a healthcare dataset containing **10,000 patient records**. This project demonstrates SQL fundamentals, aggregation techniques, date analysis, filtering, grouping, and analytical queries that can be used for healthcare reporting.

---

## 📌 Project Overview

This project was created to practice real-world SQL data analysis using PostgreSQL.

The dataset contains patient information including:

- Patient demographics
- Medical conditions
- Hospital admissions
- Billing information
- Insurance providers
- Doctors and hospitals
- Medications
- Test results
- Length of hospital stay

---

## 🗂 Database Schema

```sql
CREATE TABLE healthcare (
    patient_name TEXT,
    age INT,
    gender TEXT,
    blood_type TEXT,
    medical_condition TEXT,
    date_of_admission DATE,
    doctor TEXT,
    hospital TEXT,
    insurance_provider TEXT,
    billing_amount NUMERIC,
    room_number INT,
    admission_type TEXT,
    discharge_date DATE,
    medication TEXT,
    test_results TEXT,
    stay_at_hospital INT
);
```

---

## 📁 Project Structure

```
Healthcare SQL/
│
├── 0_create_tables.sql
├── 1_basic_queries.sql
├── 2_aggregate_functions.sql
├── 3_group_by.sql
├── 4_data_analysis.sql
├── 5_yearly_table.sql
└── README.md
```

---

## 📊 SQL Concepts Covered

### ✅ Basic SQL

- SELECT
- WHERE
- ORDER BY
- LIMIT
- Aliases

---

### ✅ Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

Examples:

- Average patient age
- Total billing amount
- Maximum billing amount
- Average hospital stay
- Patient count by gender
- Patient count by blood type

---

### ✅ GROUP BY Analysis

Performed analysis on:

- Gender
- Hospital
- Medical Condition
- Blood Type
- Insurance Provider
- Admission Type

Examples include:

- Average billing by hospital
- Total billing by hospital
- Average age by gender
- Patients by insurance provider
- Average stay by admission type

---

### ✅ Date Analysis

Analyzed admission dates to discover:

- Admissions by year
- Monthly admissions
- Busiest admission month
- Weekend admissions
- Average stay duration
- Hospital stay calculations

Functions used:

- EXTRACT()
- DATE_TRUNC()

---

### ✅ Year-wise Tables

Created separate yearly tables for faster analysis.

```sql
data_2018
data_2019
data_2020
data_2021
data_2022
data_2023
```

---

## 📈 Sample Insights

- Total Patients: **10,000**
- Average Age: **51 years**
- Average Billing: **$25,516.80**
- Total Billing: **$255,168,067.77**
- Average Stay: **15.56 days**
- Monthly admission trends analyzed
- Hospital-wise billing comparison
- Medical condition distribution
- Insurance provider statistics
- Admission type analysis

---

## 🛠 Technologies Used

- PostgreSQL
- SQL
- VS Code
- SQLTools Extension

---

## 📚 Skills Demonstrated

- SQL Query Writing
- Data Cleaning
- Aggregation
- Date Functions
- GROUP BY
- HAVING
- Analytical SQL
- Healthcare Data Analysis

---

## 🚀 Future Improvements

- SQL Joins
- Common Table Expressions (CTEs)
- Window Functions
- Views
- Stored Procedures
- Index Optimization
- Power BI Dashboard Integration

---

## 👨‍💻 Author

**Maaz Khan**

Statistics Student | Data Analytics Enthusiast

### Connect with me

- LinkedIn: https://www.linkedin.com/in/maazkhan
- GitHub: https://github.com/maaazkhannnnn-gif

---

⭐ If you found this project useful, consider giving it a star!
