<h1 align="center">📊 Data Job Market Analysis with SQL</h1>
<p align="center">
  Exploring salaries, skill demand, and career trends in the data industry.
</p>
<p align="center">
   English version
  <br>
  ⬇️
  <br>
   Русская версия ниже
</p>
<p align="center">
  <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNnJ1MDFoMDF0dGZlM2g5b3A5d2Z0a3J2Z2VhMWN3b3N1M3I0d3VqYiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/l0HlNaQ6gWfllcjDO/giphy.gif" width="700">
</p>

---

## 🚀 Introduction

This project analyzes real-world job posting data to uncover trends within the data job market. Using SQL, I explored salaries, required skills, and hiring patterns across multiple data-related roles, including Data Analyst, Business Analyst, Data Engineer, and Cloud Engineer positions.

The project demonstrates how SQL can be used to transform raw data into meaningful insights that support career planning and market research.

---

## 🎯 Background

This project was created as part of my journey to learn the fundamentals of SQL and data analysis through hands-on practice.

Beyond strengthening my SQL skills, I wanted to analyze the market for data-related jobs to better understand how the industry values different technologies and skill sets.

By answering these questions, the project provides valuable insights for anyone looking to navigate a career in the data field.

---

## 🛠️ Tools & Technologies

- SQL
- PostgreSQL
- VS Code
- Git & GitHub
- ChatGPT

---
## 📈 Analysis
### 1. Top Paying Data Analyst Jobs
```sql
SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    company_dim.name company_name,
    salary_year_avg,
    job_posted_date
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
where job_title_short = 'Data Analyst'
    AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
limit 10
```
<br><br><br><br><br><br>

<h1 align="center">📊 Анализ рынка вакансий в сфере данных с помощью SQL</h1>

<p align="center">
  Исследование зарплат, востребованных навыков и карьерных трендов в сфере Data Analytics.
</p>

<p align="center">
  <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNnJ1MDFoMDF0dGZlM2g5b3A5d2Z0a3J2Z2VhMWN3b3N1M3I0d3VqYiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/l0HlNaQ6gWfllcjDO/giphy.gif" width="700">
</p>

---

## 🚀 Введение

В рамках данного проекта был проведён анализ реальных данных о вакансиях в сфере работы с данными. Используя SQL, я исследовал уровни заработных плат, востребованные навыки и тенденции найма для различных профессий, включая Data Analyst, Business Analyst, Data Engineer и Cloud Engineer.

Проект демонстрирует, как инструменты SQL позволяют преобразовывать сырые данные в практические инсайты, полезные как для исследования рынка труда, так и для построения карьерной стратегии.

---

## 🎯 Предыстория

Этот проект был создан в рамках изучения основ SQL и анализа данных на практике.

Помимо развития навыков написания SQL-запросов, мне было интересно исследовать рынок вакансий в сфере данных и понять, какие технологии и компетенции наиболее ценятся работодателями.

Полученные результаты помогают лучше ориентироваться в индустрии данных и понимать, на развитие каких навыков стоит делать акцент.

---

## 🛠️ Инструменты и технологии

- SQL
- PostgreSQL
- VS Code
- Git & GitHub
- ChatGPT

---