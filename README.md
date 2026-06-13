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
I used the following query for highlighting the high paying opportunities in the field:
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
    where job_title_short = 'Data Analyst' --type of role
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
<img src="images\top_jobs_dist.png"><br>
The most amount of top paying jobs is located in  <b>USA</b>

<br>

<img src="images\1781381203.png"><br>
The top paying job from all job types is <b>Data Scientist</b> with salary $960 000

<br><br>

#### Top Paying Jobs Insights
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
- AI-focused startups and research organizations<br><br><br>

### 2. Top Paying Job Skills
I used the following query to analyze the skills associated with top paying jobs:
```sql
  WITH top_paying_jobs AS(
      SELECT 
          job_postings_fact.job_id,
          job_title,
          salary_year_avg,
          company_dim.name company_name
      FROM job_postings_fact
      LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
      WHERE job_title_short = 'Software Engineer' --type of role
          AND job_location = 'Anywhere' --job location
          AND salary_year_avg IS NOT NULL
  )

  SELECT
      top_paying_jobs.*,
      skills
  FROM top_paying_jobs
  INNER JOIN skills_job_dim ON skills_job_dim.job_id = top_paying_jobs.job_id
  INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
  ORDER BY salary_year_avg DESC
  LIMIT 30
```
### 2.1 For Business Analyst
#### Tier 1: Must-Have Skills:<br>
  - SQL
  - Python
  - Excel

  #### Tier 2: High-Value BI Skills:<br>
  - Tableau
  - Looker
  - Power BI

  #### Tier 3: Analytics & Statistical Skills:<br>
  - SAS
  - R

  #### Tier 4: Cloud & Data Platform Skills:<br>
  - BigQuery
  - GCP
  - Snowflake
  - Azure
  - AWS

  #### Tier 5: Collaboration & Workflow Tools:<br>
  - Git
  - Jira
  - Confluence

        The strongest combination for landing a top-paying Business Analyst role in 2023 was typically:
          SQL + Python + Excel + a BI tool (Tableau/Looker)
        *cloud-platform experience providing an additional salary advantage.
### 2.2 For Cloud Engineer
#### Tier 1: Core High-Paying Engineering Skills:<br>
  - Python
  - Go
  - C++
  - Java

#### Tier 2: Infrastructure & Systems Skills:<br>
  - Linux
  - Kubernetes
  - Docker
  - Splunk

#### Tier 3: Cloud Platform Skills:<br>
  - GCP
  - AWS
  - Azure

#### Tier 4: Database & Data Platform Skills:<br>
  - MongoDB
  - SQL
  - Kafka
  - Elasticsearch

#### Tier 5: Data Engineering Skills:<br>
  - Spark
  - PySpark
  - Airflow
  - Snowflake
  - BigQuery
  - Redshift

#### Tier 6: Analytics & Visualization Skills:<br>
  - Tableau
  - Looker

        The strongest combination for landing a top-paying engineering role in this dataset was typically:
          Python + Go/C++ + Linux + Cloud (GCP/AWS/Azure) + Kubernetes + MongoDB
### 2.3 For Data Analyst
#### Tier 1 (Essential):<br>
  - SQL
  - Python
  - Tableau or Power BI
  - Excel

#### Tier 2 (High Salary Boost):<br>
  - Snowflake
  - AWS
  - Azure
  - Pandas

#### Tier 3 (Senior-Level Differentiators):<br>
  - Databricks
  - PySpark
  - Git/GitLab
  - Jira
  - Confluence


        The dataset shows that the highest-paying Data Analyst roles in 2023 typically required a combination of:<br>
          SQL + Python + Visualization tools + Cloud/Data platform skills

          Candidates who added cloud technologies (AWS, Azure, Snowflake, Databricks) and modern data engineering workflows consistently achieved higher compensation levels.

          SQL remains the universal baseline requirement, while Python is the strongest differentiator for progressing into senior and leadership-level analytics roles.
### 2.4 For Senior Data Analyst
#### Tier 1: Must-Have Analytics Skills:<br>
  - SQL
  - Python

#### Tier 2: Statistical & Data Science Skills:<br>
  - R
  - Spark
  - Jupyter
  - Keras

#### Tier 3: Cloud & Data Platform Skills:<br>
  - AWS
  - BigQuery

#### Tier 4: BI & Reporting Skills:<br>
  - Tableau

#### Tier 5: Software Engineering & Development Skills:<br>
  - FastAPI
  - Flask
  - Scala
  - Golang
  - Rust
  - JavaScript
  - HTML
  - CSS
  - Angular

#### Tier 6: Collaboration & Business Tools:<br>
  - Jira
  - Zoom

        The strongest combination for landing a top-paying Senior Data Analyst / Applied Scientist role in this dataset was typically:
          SQL + Python + R + Cloud/Data Platform experience (AWS or BigQuery)
### 2.5 For Data Engineer
#### Tier 1:<br>
  - Python
  - SQL

#### Tier 2:<br>
  - Spark
  - PySpark
  - Hadoop
  - Kafka

#### Tier 3:<br>
  - Pandas
  - NumPy
  - TensorFlow
  - PyTorch
  - Keras
  - R

#### Tier 4:<br>
  - Kubernetes
  - Azure

#### Tier 5:<br>
  - Scala

        The strongest combination for landing a top-paying Data Engineer role in this dataset was typically:
          Python + Spark + PySpark + Hadoop + Kafka + Kubernetes
### 2.6 For Senior Data Engineer
#### Tier 1: Top-Paying Job Skills ($240k–$236k):<br>
  - MongoDB
  - Python
  - NoSQL
  - Java
  - Shell
  - JavaScript
  - Cassandra
  - AWS
  - Azure
  - Spark
  - Kafka

#### Tier 2: High-Paying Job Skills ($225k):<br>
  - Python
  - MongoDB
  - AWS
  - Azure

#### Tier 3: Senior Leadership Data Platform Skills ($220k):<br>
  - SQL
  - Python
  - AWS
  - Redshift
  - Snowflake
  - Airflow

#### Tier 4: Collaboration & Engineering Management Skills ($220k):<br>
  - GitHub
  - Jira
  - Confluence

        The strongest combination for landing a top-paying Data Engineering role in this dataset was typically:
          Python + MongoDB + AWS + Spark + Kafka
### 2.7 For Data Scientist
#### Tier 1 ($550k–$525k):<br>
  - SQL
  - Python

#### Tier 2 ($375k):<br>
  - SQL
  - Python
  - Java
  - Cassandra
  - Spark
  - Hadoop
  - Tableau

#### Tier 3 ($320k):<br>
  - AWS
  - Azure
  - TensorFlow
  - Keras
  - PyTorch
  - Scikit-learn
  - DataRobot

#### Tier 4 ($300k):<br>
  - Python
  - SQL
  - Scala
  - Java
  - Spark
  - TensorFlow
  - PyTorch
  - Kubernetes
  - AWS
  - GCP
  - Pandas
  - NumPy

        The strongest combination for landing a top-paying role in this dataset was typically:
          SQL + Python + Spark + TensorFlow/PyTorch
### 2.8 For Senior Data Scientist
#### Tier 1 ($375k):<br>
  - SQL
  - Python
  - Java
  - C++
  - Cassandra
  - Spark
  - Hadoop
  - Tableau

#### Tier 2 ($245k):<br>
  - Python
  - SQL
  - R
  - Scala
  - Java
  - C++
  - Spark
  - Airflow
  - TensorFlow
  - PyTorch

#### Tier 3 ($235k):<br>
  - Python
  - R
  - BigQuery
  - TensorFlow
  - PyTorch
  - Scikit-learn
  - Tableau
  - Looker

#### Tier 4 ($230k):<br>
  - Snowflake
  - SQL
  - Python

        The strongest combination for landing a top-paying Data Scientist role in this dataset was typically:
          SQL + Python + Spark + C++/Java + Machine Learning Frameworks
### 2.9 For Machine Learning Engineer
#### Tier 1 ($325k):<br>
  - SQL
  - Python
  - Airflow
  - Spark
  - Kubernetes
  - GCP
  - AWS
  - Java
  - Docker
  - Ansible
  - Chef
  - Terraform
  - Excel
  - Scala

#### Tier 2 ($300k):<br>
  - TypeScript
  - Python
  - Golang

#### Tier 3 ($262.5k):<br>
  - Python
  - Excel

#### Tier 4 ($249k):<br>
  - MongoDB
  - Python

#### Tier 5 ($240k):<br>
  - TensorFlow
  - PyTorch

        The strongest combination for landing a top-paying Machine Learning Engineer role in this dataset was typically:
          Python + Spark + Kubernetes + AWS/GCP + Docker + Airflow
### 2.10 For Software Engineer
#### Tier 1 ($225k):<br>
  - Python
  - JavaScript
  - TypeScript
  - AWS
  - Azure
  - Snowflake
  - Spark
  - React

#### Tier 2 ($205k):<br>
  - Python
  - AWS
  - GCP
  - Elasticsearch
  - DynamoDB
  - Snowflake
  - Pandas
  - Airflow
  - React
  - GraphQL
  - Node.js

#### Tier 3 ($200k):<br>
  - MongoDB
  - TypeScript
  - Ruby

#### Tier 4 ($191k):<br>
  - JavaScript
  - CSS

        The strongest combination for landing a top-paying Software Engineer role in this dataset was typically:
          Python + AWS + React + Snowflake + Spark

###  Top Paying Job Skills Insights
<img src="images\01_06_22.png"><br>
### <b>Key Insights</b><br>
 
  - Python and SQL are the undisputed kings. They appear in almost 90% of all job postings across all roles. If you master these two, you unlock the majority of the market;
  - MongoDB is Aggressively Hiring: MongoDB appears across almost every engineering category (Cloud, Data Engineering, Software Engineering, ML Platform);
  - The "Excel" Anomaly in ML: In the Machine Learning Engineer dataset, the skill "excel" appears 3 times (for roles at Acceler8 Talent and Harnham). This is highly unusual for core ML roles (which require PyTorch/TensorFlow) and suggests a data scraping error in the original dataset or a very unusual job description requiring financial modeling alongside deep learning.


### 3. The Most Demanded Skills
### 3.1 For Business Analyst
#### Skill Ranking:
  - SQL (1,266)
  - Excel (983)
  - Tableau (728)
  - Power BI (555)
  - Python (546)

        Data querying remains the foundation: SQL dominates all other skills, highlighting its role as the primary 
        language for extracting, transforming, and analyzing data across organizations.

        Business intelligence is highly valued: Tableau and Power BI both appear in the top five, 
        demonstrating strong employer demand for professionals who can transform raw data into dashboards, reports, and actionable insights.

        Technical and business skills must coexist: While Excel remains a core business tool, 
        Python's presence shows that employers increasingly seek analysts who can complement 
        traditional spreadsheet work with automation, advanced analytics, and data processing capabilities.
### 3.2 For Cloud Engineer
#### Skill Ranking:
  - Python (203)
  - AWS (190)
  - SQL (163)
  - Azure (130)
  - Kubernetes (94)

        - Automation first: Python leads all skills, indicating that scripting and automation are fundamental to cloud engineering.
        - Cloud platform expertise is essential: AWS and Azure occupy two of the top four positions, showing that cloud providers remain the backbone of the profession.
        - Cloud-native operations are growing: Kubernetes' strong showing reflects increasing demand for container orchestration and scalable application management.

        Overall, the ideal Cloud Engineer profile combines Python for automation, AWS/Azure for infrastructure management, 
        SQL for data interaction, and Kubernetes for cloud-native deployment and orchestration. 
        This combination aligns closely with the skills most frequently requested by employers.
### 3.3 For Data Analyst
#### Skill Ranking:
  - SQL (7,291)
  - Excel (4,611)
  - Python (4,330)
  - Tableau (3,745)
  - Power BI (2,609)

        SQL is the dominant baseline skill: With a significant lead over all other skills, SQL remains the most in-demand capability, confirming that data extraction and querying are at the center of almost every data-related role.

        A strong analytics toolkit sits in the middle tier: Excel and Python are closely grouped after SQL, 
        showing a balance between traditional business analysis (Excel) and more advanced, programmable data workflows (Python).

        Visualization tools are essential but secondary: Tableau and Power BI round out the list, indicating that while dashboarding and reporting are critical, they typically come after core data handling and analysis skills.
### 3.4 For Senior Data Analyst
#### Skill Ranking:
  - SQL (1,724)
  - Python (1,054)
  - Tableau (999)
  - Excel (700)
  - R (514)

        Data manipulation is the core competency: SQL leads by a significant margin, emphasizing that the ability to access, 
        clean, and manage data remains fundamental across analytical roles.

        Programming skills are increasingly important: Python and R both rank in the top five, indicating strong demand for 
        professionals who can perform statistical analysis, automate workflows, and handle complex data tasks beyond traditional business intelligence tools.

        Data storytelling drives business value: Tableau’s prominent position highlights the importance of transforming 
        analytical findings into clear visualizations that support decision-making and communicate insights effectively.
### 3.5 For Data Engineer
#### Skill Ranking:
  - SQL (14,213)
  - Python (13,893)
  - AWS (8,570)
  - Azure (6,997)
  - Spark (6,612)

        Data engineering is built on data processing fundamentals: SQL and Python lead the ranking by a wide margin, 
        showing that efficient data manipulation, transformation, and automation are at the heart of modern data engineering workflows.

        Cloud expertise has become a standard requirement: AWS and Azure occupy two of the top five positions, reflecting 
        the industry's shift toward cloud-based data platforms, storage solutions, and scalable infrastructure.

        Big data technologies remain critical: Spark's strong presence demonstrates the continued importance of distributed data
        processing and large-scale analytics as organizations handle ever-growing volumes of data.
### 3.6 For Senior Data Engineer
#### Skill Ranking:
  - Python (4,604)
  - SQL (4,488)
  - AWS (3,367)
  - Spark (2,423)
  - Azure (2,240)

        Programming is now the leading entry point: Python slightly surpasses SQL, showing that modern data roles increasingly 
        prioritize scripting, automation, and end-to-end workflow development over pure querying tasks.

        Core data infrastructure skills remain tightly clustered: SQL, AWS, and Azure all sit close together in demand, 
        indicating that employers expect candidates to be comfortable working across both relational databases and cloud 
        environments without sharp specialization gaps.

        Distributed processing is a key differentiator: Spark’s presence in the top five confirms that large-scale data 
        handling and distributed computing capabilities are still important for more advanced or production-level data roles.
### 3.7 For Data Scientist
#### Skill Ranking:
  - Python (10,390)
  - SQL (7,488)
  - R (4,674)
  - AWS (2,593)
  - Tableau (2,458)

        Programming dominates modern analytics workflows: Python clearly leads the ranking, showing that employers prioritize 
        flexible, general-purpose programming for automation, data processing, and advanced analysis. R’s strong position 
        reinforces the continued relevance of statistical programming in analytical roles.

        Data querying remains a non-negotiable foundation: SQL holds second place, confirming that structured data access and 
        database querying are still core requirements across nearly all data-related positions.

        Cloud and visualization complete the stack: AWS and Tableau round out the top five, highlighting the importance of 
        scalable cloud infrastructure and the ability to communicate insights visually through dashboards.
### 3.8 For Senior Data Scientist
#### Skill Ranking:
  - Python (2,956)
  - SQL (2,185)
  - R (1,307)
  - AWS (866)
  - Spark (693)

        Programming is the dominant entry requirement: Python leads the list, showing that employers increasingly expect 
        candidates to be comfortable with coding for data analysis, automation, and workflow building rather than relying only 
        on manual tools.

        Structured data skills remain essential: SQL holds second place, confirming that database querying and data extraction 
        remain foundational skills across virtually all data-focused roles.

        Advanced analytics and scalable systems are still relevant but secondary: R maintains a strong position for statistical
        analysis, while AWS and Spark show continued demand for cloud-based infrastructure and distributed data processing, 
        especially in more advanced or production-oriented environments.
### 3.9 For Machine Learning Engineer
#### Skill Ranking:
  - Python (1,230)
  - PyTorch (571)
  - TensorFlow (553)
  - AWS (548)
  - SQL (398)

        Python is the foundation of modern AI workflows: Python clearly leads, reflecting its role as the primary language for 
        machine learning development, model training, and experimentation across the AI ecosystem.

        Deep learning frameworks are central to demand: PyTorch and TensorFlow appear almost equally important, showing that 
        employers expect familiarity with at least one major deep learning framework for building and deploying neural network models.

        AI engineering extends beyond modeling into infrastructure: AWS and SQL highlight that production-ready machine 
        learning is not just about models, but also about working with cloud infrastructure and handling structured data pipelines.
### 3.10 For Software Engineer
#### Skill Ranking:
  - Python (1,318)
  - SQL (1,038)
  - AWS (1,007)
  - Java (741)
  - Kubernetes (618)

        Python leads modern backend and data-driven development: Python holds the top position, reflecting its 
        versatility across automation, backend services, data pipelines, and cloud-native applications.

        Cloud infrastructure is as important as coding: AWS and Kubernetes both appear strongly in the top five, 
        showing that employers increasingly expect developers to work within containerized, scalable cloud environments 
        rather than standalone systems.

        Multi-language backend ecosystems remain relevant: SQL and Java maintain strong demand, indicating that 
        traditional enterprise systems and database-driven architectures are still a core part of software engineering roles.

### The Most Demanded Skills Insights
### <b>Key Insights</b>
- The "Big Two" Monopoly: SQL and Python aren't just popular; they are the absolute foundation of the tech economy. Data Engineering alone demands over 28,000 combined mentions for these two;
- The Seniority "Tool Drop": There is a ruthless shift as you level up. In junior/mid-level Analyst roles, BI tools like Excel, Tableau, and Power BI dominate the top 5. But in Senior Data roles, they completely vanish, replaced by heavy-hitters like Python, R, and Spark. The market is screaming: juniors build dashboards, seniors build architectures;
- PyTorch Takes the ML Crown: In the Machine Learning Engineer category, PyTorch (571 jobs) has officially edged out TensorFlow (553 jobs);
AWS is the Undisputed Cloud King: Across Cloud, Data, ML, and Software Engineering, AWS consistently crushes Azure in job volume. It is the default cloud standard.

### 4. Top Skills (based on salary)
### 5. Most Optimal Skill To Learn


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