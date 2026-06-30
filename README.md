# SQL-Data-Analysis-Project
# 📊 Job Market & Skills Demand Analysis (PostgreSQL + HeidiSQL)

This project analyzes job market demand, salary trends, and high-paying technical skills using SQL queries on real-world job posting data. PostgreSQL is used as the database engine and HeidiSQL as the SQL client.

---

## 📁 Dataset

- **CSV File Download Link:**  
  👉 https://drive.google.com/file/d/1cJnXJni4LgLmn7tC-eACK78MAUS9Zl8U/view?usp=sharing
---

## 🛠️ Project Setup & Execution (PostgreSQL + HeidiSQL)

Follow the steps below to run the entire project from scratch:

### ✅ Step 1: Create Database
Run the first SQL script:
- `1_create_database.sql`  
This script creates the main PostgreSQL database for the project.

---

### ✅ Step 2: Create Tables
Run the second SQL script:
- `2_create_tables.sql`  
This script creates all required tables such as:
- `job_postings_fact`
- `skills_dim`
- `skills_job_dim`

- `company_dim`

---

### ✅ Step 3: Load CSV Data
Run the third SQL script:
- `3_modify_tables.sql`  
This script loads all CSV files into their respective tables using `COPY` or `\copy` commands.

---

### ✅ Step 4: Run Analysis Queries
After data is loaded, run the analysis SQL queries to generate insights such as:

1.	- What are the top-paying jobs for my role?
2.	- What are the skills required for these top-paying roles?
3.	- What are the most in-demand skills for my role?
4.	- What are the top skills based on salary for my role?
5.	- What are the most optimal skills to learn?
o	- Optimal: High Demand AND High Paying
- This step involves running five SQL scripts in this repo that correspond to the questions above:

- 1_top_paying_jobs

- 2_top_paying_job_skills

- 3_top_demanding_skills

- 4_top_skills_based_on_salary

- 5_most_optimal_skills

- Using these SQL scripts the databese has been explored and answer the project questions.
---

## 🔍 Key Insights from Analysis
### 🔹 Most In-Demand 'Remote' Jobs
<img width="640" height="480" alt="image" src="https://github.com/user-attachments/assets/e7ee2929-c824-4bd4-8574-9dbaa92ab0c9" />

---

### 🔹 Most In-Demand Skills
- **SQL** is the most demanded skill with **8,557 job postings**, making it the core requirement for data roles.
- **Excel and Python** show very high demand, proving the importance of both analytics and automation.
- **Tableau and Power BI** remain critical for business intelligence and reporting.
 <img width="640" height="480" alt="image" src="https://github.com/user-attachments/assets/9f103347-72d0-4442-8203-15710aadf4b8" />


---

### 🔹 Highest Paying Skills by Average Salary
- **SVN** leads the salary chart with an average salary of **$246K**, reflecting premium demand for niche expertise.
- **Solidity, Couchbase, DataRobot, and Golang** dominate the high-paying bracket above **$150K**.
- **AI, MLOps, Cloud, and Big Data tools** consistently command six-figure salaries across the job market.
- <img width="4200" height="2100" alt="image" src="https://github.com/user-attachments/assets/fd086338-9fd8-4685-b192-725980d4003f" />

---

### 🔹 Top Paying Remote Data Analyst Jobs
- Remote **Data Analyst** roles offer salaries up to **$650K annually**.
- Senior roles such as **Director of Analytics** and **Principal Data Analyst** frequently exceed **$180K–$330K**.
- High-paying opportunities are concentrated in **full-time, remote leadership and advanced analytics positions**.

---

### 🔹 Most Optimal Skills Based on Job Postings and Average Salary

<img width="4200" height="1500" alt="image" src="https://github.com/user-attachments/assets/c6be891b-87dc-48af-b13a-226af3ea250f" />

---

## 🧑‍💻 Tools & Technologies

- **Database:** PostgreSQL  
- **SQL Client:** HeidiSQL  
- **Language:** SQL
- **Visualization Tool:** pandas and matplotlib 
---

## 📌 Conclusion
This project highlights how SQL remains the backbone of data roles, while advanced skills in cloud, AI, and big data significantly increase salary potential. The analysis also confirms the growing availability of **high-paying remote data analyst roles** in the global job market.

---
