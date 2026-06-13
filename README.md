<h1 align="center">📊 Data Job Market Analysis with SQL</h1>
<p align="center">
  Exploring salaries, skill demand, and career trends in the data industry.
</p>
<p align="center">
   English version
  <br>
  ⬇️
  <br>
   <a href="#russian-version">Русская версия ↓</a>
</h1>
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
### 1. Top Paying Jobs
To extract the required data for this analysis, I used the following query:
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
### 1.1  Top Paying Jobs: Business Analyst
For Business Analyst roles, the following jobs were identified:
<br>
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | Principal Economist / Scientist | San Mateo, CA | Full-time | Roblox | 387,460 | 2023-08-23 08:03:55 |
| 2 | Lead Business Intelligence Engineer | Anywhere | Full-time | Noom | 220,000 | 2023-08-29 18:26:36 |
| 3 | Manager II, Applied Science - Marketplace Dynamics | Anywhere | Full-time | Uber | 214,500 | 2023-12-18 08:02:37 |
| 4 | Reference Data Business Analyst/Product Manager | N/A | Full-time | Selby Jennings | 200,000 | 2023-05-30 22:00:00 |
| 5 | Analyst | Anywhere | Full-time | Multicoin Capital | 200,000 | 2023-10-04 11:01:48 |
| 6 | Analyst | Anywhere | Full-time | Multicoin Capital | 200,000 | 2023-12-21 13:01:17 |
| 7 | Senior Business Intelligence Engineer | San Francisco, CA | Full-time | Block | 190,500 | 2023-07-18 10:03:38 |
| 8 | Senior Economy Designer | Anywhere | Full-time | Harnham | 190,000 | 2023-06-21 18:11:35 |
| 9 | Business Intelligence Engineer, Sponsored TV | Madrid, Spain | Full-time | Amazon | 185,000 | 2023-12-12 16:40:37 |
| 10 | Business Intelligence Analyst Lead | Charlotte, NC | Full-time | USAA | 175,000 | 2023-02-05 12:27:05 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"Principal Economist / Scientist"</span> with salary $387 460<br>
- <b>One half</b> jobs from <span style="color:green;">Anywhere</span>, 
<b>other half:</b> jobs from <span style="color:green;">USA</span><br>
- All jobs have "Full-time" schedule type

<br>

### 1.2  Top Paying Jobs: Cloud Engineer
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | ETL разработчиĸ | Russia | Full-time | Технологическая компания | 280,000 | 2023-11-24 07:19:48 |
| 2 | Tech Lead, Cloud Data Engine | Seattle, WA | Full-time | TikTok | 221,844 | 2023-12-28 15:26:32 |
| 3 | Head of Data Platform and Cloud | Poland | Full-time | Palta | 221,000 | 2023-11-10 01:16:51 |
| 4 | Lead Engineer, Test Infrastructure | Anywhere | Full-time | MongoDB | 204,000 | 2023-12-26 19:15:34 |
| 5 | Research Engineer PEMFC Fuel Cell Stack (f/m/div.) | Renningen, Germany | Full-time | Bosch Group | 200,000 | 2023-01-16 22:00:05 |
| 6 | Research Engineer for High Performance Cooling of eMobility... | Renningen, Germany | Full-time | Bosch Group | 200,000 | 2023-02-16 16:14:44 |
| 7 | Staff Engineer, Service Architecture | Anywhere | Full-time | MongoDB | 197,500 | 2023-11-29 15:13:19 |
| 8 | Enterprise Customer Engineering Manager, Data Analytics, Google Cloud | Atlanta, GA | Full-time | Google | 195,000 | 2023-07-12 12:47:31 |
| 9 | Cloud Operations Engineer (3rd Shift, FedRamp) | Anywhere | Full-time | MongoDB | 182,500 | 2023-09-29 19:31:01 |
| 10 | Senior Mobile Engineer | Anywhere | Full-time | Rune Labs | 180,000 | 2023-04-19 20:17:22 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"Tech Lead, Cloud Data Engine"</span> with salary $221,844<br>
- <b>One half</b> jobs from <span style="color:green;">Anywhere / Remote</span>,
<b>other half:</b> jobs from <span style="color:green;">USA + Europe + Russia</span><br>
- All jobs have "Full-time" schedule type

<br>

### 1.3  Top Paying Jobs: Data Analyst
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | Data Analyst | Anywhere | Full-time | Mantys | 650,000 | 2023-02-20 15:13:33 |
| 2 | Data base administrator | Belarus | Full-time | ЛАНИТ | 400,000 | 2023-10-03 11:22:20 |
| 3 | Director of Safety Data Analysis | Austin, TX | Full-time | Torc Robotics | 375,000 | 2023-04-21 08:01:55 |
| 4 | Sr Data Analyst | Bethesda, MD | Full-time | Illuminate Mission Solutions | 375,000 | 2023-04-05 12:00:12 |
| 5 | HC Data Analyst, Senior | Bethesda, MD | Full-time | Illuminate Mission Solutions | 375,000 | 2023-08-18 07:00:22 |
| 6 | Head of Infrastructure Management & Data Analytics - Financial... | Jacksonville, FL | Full-time | Citigroup, Inc | 375,000 | 2023-07-03 11:30:01 |
| 7 | Data Analyst | San Francisco, CA | Full-time | Anthropic | 350,000 | 2023-06-22 07:00:59 |
| 8 | Head of Data Analytics | Austin, TX | Full-time | Care.com | 350,000 | 2023-10-23 05:01:05 |
| 9 | Director of Analytics | Anywhere | Full-time | Meta | 336,500 | 2023-08-23 12:04:42 |
| 10 | Research Scientist | San Francisco, CA | Full-time | OpenAI | 285,000 | 2023-04-19 18:04:21 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"Data Analyst"</span> with salary $650,000<br>
- <b>One half</b> jobs from <span style="color:green;">USA</span>, 
<b>other half:</b> jobs from <span style="color:green;">international / mixed (remote, Belarus, global)</span><br>
- All jobs have "Full-time" schedule type

<br>

### 1.4  Top Paying Jobs: Senior Data Analyst
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | SVP, Data Analytics | Santa Monica, CA | Full-time | The Walt Disney Company | 425,000 | 2023-06-22 09:01:01 |
| 2 | Senior Director, Data | San Francisco, CA | Full-time | Tinder, Inc. | 375,000 | 2023-06-30 07:01:13 |
| 3 | Sr. Oracle Database Analyst | Springfield, VA | Full-time | General Dynamics | 375,000 | 2023-05-18 06:59:59 |
| 4 | Senior Data Analyst SME | Albuquerque, NM | Full-time | Modern Technology Solutions | 375,000 | 2023-08-21 06:37:31 |
| 5 | Senior Data Analyst / Quant Analyst 1 yr Fixed Contract $300,000 ... | New York, NY | Full-time | Eden Smith Group | 340,000 | 2023-04-12 10:59:55 |
| 6 | Sr Research Scientist – Privacy | San Jose, CA | Full-time | TikTok | 274,500 | 2023-12-27 15:02:32 |
| 7 | Senior Data Analyst | United States | Full-time | GradBay | 240,000 | 2023-12-19 23:04:39 |
| 8 | Senior Data Analyst | New York, NY | Full-time | GradBay | 240,000 | 2023-12-18 17:59:56 |
| 9 | Data Analytics – Senior Manager | Jersey City, NJ | Full-time | Citi | 235,040 | 2023-08-04 18:00:06 |
| 10 | Senior Data Analyst, Autonomous Vehicle Infrastructure | Santa Clara, CA | Full-time | NVIDIA | 228,000 | 2023-11-16 20:00:43 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"SVP, Data Analytics"</span> with salary $425,000<br>
- <b>One half</b> jobs from <span style="color:green;">USA</span>, 
<b>other half:</b> jobs from <span style="color:green;">USA (multiple states / distributed)</span><br>
- All jobs have "Full-time" schedule type

<br>

### 1.5  Top Paying Jobs: Data Engineer
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | Hybrid - Data Engineer - Up to $600k | New York, NY | Full-time | Durlston Partners | 525,000 | 2023-04-05 16:08:42 |
| 2 | Data Engineer (L4) - Games | New York, NY | Full-time | Netflix | 450,000 | 2023-08-14 10:47:26 |
| 3 | Hybrid - Data Engineer | New York, NY | Full-time | Durlston Partners | 425,000 | 2023-07-25 19:08:57 |
| 4 | Hybrid - Data Engineer - Up to $500k | New York, NY | Full-time | Durlston Partners | 400,000 | 2023-06-30 16:11:21 |
| 5 | Data Engineer | N/A | Full-time | Greenfield Source | 390,000 | 2023-07-11 17:13:42 |
| 6 | Director of Data Engineering | Miami, FL | Full-time | Lennar Corporation | 375,000 | 2023-06-23 10:19:37 |
| 7 | Distinguished Data Engineer, Enterprise Data Platforms - Data Creation | San Francisco, CA | Full-time | Capital One Financial Corporation | 375,000 | 2023-06-01 11:28:48 |
| 8 | Data Engineer | Fort Belvoir, VA | Full-time | Chenega Corporation | 375,000 | 2023-04-25 10:07:14 |
| 9 | VP, Data Engineer Epoch | New York, NY | Full-time | TD Bank | 375,000 | 2023-02-16 07:09:00 |
| 10 | Data Engineer | N/A | Full-time | Algo Capital Group | 375,000 | 2023-09-19 09:42:31 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"Hybrid - Data Engineer - Up to $600k"</span> with salary $525,000<br>
- <b>One half</b> jobs from <span style="color:green;">New York / USA</span>, 
<b>other half:</b> jobs from <span style="color:green;">USA + remote (N/A)</span><br>
- All jobs have "Full-time" schedule type

<br>

### 1.6  Top Paying Jobs: Senior Data Engineer
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | Senior Data Engineer, Security Master | N/A | Full-time | Winston Fox | 425,000 | 2023-05-26 10:41:16 |
| 2 | Senior Data Engineer - VP | Lake Mary, FL | Full-time | The Bank of New York Mellon Corporation | 375,000 | 2023-05-01 12:34:38 |
| 3 | Senior Data Engineer (Live Streaming) | United States | Full-time | Engtal | 375,000 | 2023-05-26 00:05:58 |
| 4 | Senior Data Engineer (ETL Pipelines) | United States | Full-time | Engtal | 350,000 | 2023-05-29 22:25:01 |
| 5 | VP, Data Engineering & Platforms | Waterbury, CT | Full-time | The Travelers Companies, Inc | 350,000 | 2023-05-18 07:09:53 |
| 6 | Senior Data Engineer (Kafka) | United States | Full-time | Engtal | 325,000 | 2023-05-15 18:40:02 |
| 7 | Senior Data Engineer | United States | Full-time | Engtal | 325,000 | 2023-05-07 19:13:02 |
| 8 | Sr. Data Engineer - Python | N/A | Full-time | Elite Hedge Fund | 300,000 | 2023-01-31 18:07:12 |
| 9 | Senior Quantitative Data Engineer - HFT | N/A | Full-time | Capital Markets Recruitment | 300,000 | 2023-10-19 15:31:07 |
| 10 | Senior Staff Engineer – Global Operation Data Science (GODS) | Mountain View, CA | Full-time | Coupang | 274,500 | 2023-01-09 22:04:14 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"Senior Data Engineer, Security Master"</span> with salary $425,000<br>
- <b>One half</b> jobs from <span style="color:green;">USA</span>, 
<b>other half:</b> jobs from <span style="color:green;">remote (United States / N/A)</span><br>
- All jobs have "Full-time" schedule type

<br>

### 1.7  Top Paying Jobs: Data Scientist
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | Data Scientist | Madison, SD | Full-time | East River Electric Power Cooperative, Inc. | 960,000 | 2023-05-04 19:06:06 |
| 2 | Geographic Information Systems Analyst - GIS Analyst | New York, NY | Full-time | ReServe | 585,000 | 2023-12-27 18:00:12 |
| 3 | Staff Data Scientist / Quant Researcher | Anywhere | Full-time | Selby Jennings | 550,000 | 2023-08-16 16:05:16 |
| 4 | Staff Data Scientist - Business Analytics | Anywhere | Full-time | Selby Jennings | 525,000 | 2023-09-01 19:24:02 |
| 5 | Data Scientist (L5) - Member Product | California City, CA | Full-time | Netflix | 450,000 | 2023-12-19 14:03:56 |
| 6 | Data Scientist (L5) - Messaging | Los Gatos, CA | Full-time | Netflix | 450,000 | 2023-08-17 08:04:12 |
| 7 | Applied Data Science or Machine Learning Leader | San Francisco, CA | Full-time | Glocomms | 425,000 | 2023-10-06 18:02:32 |
| 8 | Data Science Director – Audit | Charlotte, NC | Full-time | Truist Financial | 375,000 | 2023-04-11 06:24:58 |
| 9 | Director, Data Science & Advanced Analytics | Austin, TX | Full-time | YETI Coolers | 375,000 | 2023-08-10 09:08:54 |
| 10 | Director of Data Science (Hybrid) | Dodgeville, WI | Full-time | Lands End | 375,000 | 2023-03-03 13:04:58 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"Data Scientist"</span> with salary $960,000<br>
- <b>One half</b> jobs from <span style="color:green;">USA</span>, 
<b>other half:</b> jobs from <span style="color:green;">global (USA + South Africa + remote)</span><br>
- All jobs have "Full-time" schedule type

<br>

### 1.8  Top Paying Jobs: Senior Data Scientist
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | Senior Data Scientist | Pretoria, South Africa | Full-time | MSP Staffing LTD | 890,000 | 2023-11-02 10:31:43 |
| 2 | Senior Data Scientist | Anywhere | Full-time | Glocomms | 475,000 | 2023-01-31 16:03:46 |
| 3 | VP Data Science & Research | Menlo Park, CA | Full-time | WhatsApp | 463,500 | 2023-11-08 12:23:39 |
| 4 | VP, Data Science & AI | Menlo Park, CA | Full-time | Deepcell | 375,000 | 2023-08-29 07:06:14 |
| 5 | Director Data & Analytics | Atlanta, GA | Full-time | Freeman | 375,000 | 2023-07-19 10:32:49 |
| 6 | Sr AI/Data Science Director – Gastrointestinal | Santa Clara, CA | Full-time | Medtronic | 375,000 | 2023-03-03 13:03:56 |
| 7 | Senior Data Scientist | N/A | Full-time | Algo Capital Group | 375,000 | 2023-10-09 19:23:59 |
| 8 | Senior Data Scientist | Anywhere | Full-time | Algo Capital Group | 375,000 | 2023-08-30 10:06:34 |
| 9 | Senior Data Scientist | N/A | Full-time | Algo Capital Group | 375,000 | 2023-10-17 10:02:23 |
| 10 | Sr. Manager, Data Science | San Jose, CA | Full-time | eBay | 375,000 | 2023-03-05 07:03:34 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"Senior Data Scientist"</span> with salary $890,000<br>
- <b>One half</b> jobs from <span style="color:green;">USA</span>, 
<b>other half:</b> jobs from <span style="color:green;">global / mixed (South Africa, remote, USA)</span><br>
- All jobs have "Full-time" schedule type

<br>

### 1.9  Top Paying Jobs: Machine Learning Engineer
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | Principal Machine Learning Engineer | Anywhere | Full-time | Storm5 | 325,000 | 2023-11-24 14:25:28 |
| 2 | Senior Machine Learning Engineer | Anywhere | Full-time | Harnham | 325,000 | 2023-02-21 22:37:17 |
| 3 | Senior AI Platform Engineer | Santa Clara, CA | Full-time | Nvidia | 315,000 | 2023-07-23 14:02:45 |
| 4 | Machine Learning Engineer | Anywhere | Full-time | orbit | 300,000 | 2023-11-24 18:02:30 |
| 5 | Research Scientist, Machine Learning | San Francisco, CA | Full-time | OpenAI | 285,000 | 2023-01-31 12:02:49 |
| 6 | Lead Machine Learning Engineer, Risk Data Mining | San Jose, CA | Full-time | TikTok | 284,000 | 2023-05-27 14:07:17 |
| 7 | Lead SoC Architect, NPU AI/ML | United States | Full-time | Samsung Research America | 270,000 | 2023-11-10 02:04:01 |
| 8 | AI Architect | Pune, Maharashtra, India | Full-time | Bosch Group | 267,000 | 2023-11-21 21:12:09 |
| 9 | Principal Machine Learning Research Scientist (Deep Learning) | Anywhere | Full-time | Acceler8 Talent | 262,500 | 2023-03-01 20:28:07 |
| 10 | Machine Learning Researcher | Anywhere | Full-time | Acceler8 Talent | 262,500 | 2023-03-13 14:28:34 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"Principal Machine Learning Engineer"</span> with salary $325,000<br>
- <b>One half</b> jobs from <span style="color:green;">Anywhere / Remote</span>, 
<b>other half:</b> jobs from <span style="color:green;">USA (mostly California hubs)</span><br>
- All jobs have "Full-time" schedule type

<br>

### 1.10 Top Paying Jobs: Software Engineer
| # | Job Title | Location | Schedule | Company | Avg Annual Salary | Posted Date |
|---|---|---|---|---|---:|---|
| 1 | Sr Staff Data Engineer - Software Engineering | St. Louis, MO | Full-time | Bayer | 375,000 | 2023-03-26 09:11:09 |
| 2 | SQL Developer | Russia | Full-time | SmartBrain | 320,000 | 2023-12-06 14:18:56 |
| 3 | Principal Software Engineer, Data Engineering (Peninsula, CA) | San Mateo, CA | Full-time | Roblox | 307,710 | 2023-03-15 15:06:17 |
| 4 | Staff Software Engineer - Data Science | New York, NY | Full-time | Datadog | 267,000 | 2023-08-07 13:19:23 |
| 5 | Principal Java Developer Equities Data Analytics | N/A | Full-time | Archer IT | 265,000 | 2023-07-10 16:00:05 |
| 6 | Senior Software Engineer - Streaming / Real time, Ads Data | Seattle, WA | Full-time | TikTok | 260,775 | 2023-12-30 14:28:03 |
| 7 | Staff Software Engineer - MLOps | Sydney NSW, Australia | Full-time | Rokt | 257,500 | 2023-07-06 10:16:46 |
| 8 | Staff Software Engineer - Core-Simulator and Autonomy Metrics | Mountain View, CA | Full-time | Aurora Innovation | 245,500 | 2023-04-20 11:02:08 |
| 9 | Senior Software Engineer | Sydney NSW, Australia | Full-time | ROKT | 245,000 | 2023-09-29 18:23:27 |
| 10 | Principal Big Data Software Engineer | California | Full-time | Trulia | 240,000 | 2023-03-12 06:45:03 |

<br>
<b>Key Insights</b><br>

- The top paying job is <span style="color:gold;">"Sr Staff Data Engineer - Software Engineering"</span> with salary $375,000<br>
- <b>One half</b> jobs from <span style="color:green;">USA</span>, 
<b>other half:</b> jobs from <span style="color:green;">global (Russia, Australia, USA, etc.)</span><br>
- All jobs have "Full-time" schedule type

### 1.11 Results
<p align="center">
<img src="images\top_jobs_dist.png">
</p>
The most amount of top paying jobs is located in  <b>USA</b>

<br>

<p align="center">
<img src="images\1781381203.png">
</p>
The top paying job from all job types is <b>Data Scientist</b> with salary $960 000

<br><br>

#### Overall Insights
#### 📍 Geographic Distribution
- Majority of top-paying roles are located in the United States<br>
- Remote (“Anywhere”) roles make up a significant share of high salaries
#### 💰 Salary Trends
- Data Scientist and Data Engineer roles show the highest earning potential<br>
- Outliers heavily affect average salary distributions<br>
- Role specialization matters more than job title alone
#### 🏢 Company Influence
Top-paying companies include:
- Big Tech: Meta, Google, Netflix, TikTok<br>
- Financial institutions and hedge funds<br>
- AI-focused startups and research organizations


<br><br><br><br><br><br>
<a id="russian-version"></a>
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