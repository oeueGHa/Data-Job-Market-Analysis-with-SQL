<a id="eng_ver"></a>
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

## 📄 Content
### <a href="#intro">Introduction</a>
### <a href="#BG">Background</a>
### <a href="#T&T">Tools & Technologies</a>
### <a href="#Analysis">Analysis</a>
#### <a href="#Pt.1">1. Top Paying Jobs</a>
#### <a href="#Pt.2">2. Top Paying Job Skills</a>
#### <a href="#Pt.3">3. The Most Demanded Skills</a>
#### <a href="#Pt.4">4. Top Skills (based on salary)</a>
#### <a href="#Pt.5">5. Most Optimal Skill To Learn</a>
### <a href="#Concl">Conclusions</a>

---
<a id="intro"></a>
## 🚀 Introduction

This project analyzes real-world job posting data to uncover trends within the data job market. Using SQL, I explored salaries, required skills, and hiring patterns across multiple data-related roles, including Data Analyst, Business Analyst, Data Engineer, and Cloud Engineer positions.

The project demonstrates how SQL can be used to transform raw data into meaningful insights that support career planning and market research.

---
<a id="BG"></a>
## 🎯 Background

This project was created as part of my journey to learn the fundamentals of SQL and data analysis through hands-on practice.

The goal of this project was to analyze the data job market in order to identify which roles and technical skills are most in demand and associated with higher salaries. 

This analysis helps translate raw job postings into actionable insights for career decision-making in the data field.

---
<a id="T&T"></a>
## 🛠️ Tools & Technologies

- SQL
- PostgreSQL
- VS Code
- Git & GitHub
- ChatGPT

---
<a id="Analysis"></a>
## 📈 Analysis

<a id="Pt.1"></a>
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
*The most amount of top paying jobs is located in  <b>USA</b>*

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

<a id="Pt.2"></a>
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

### 2.11 Top Paying Job Skills Insights
<img src="images\01_06_22.png"><br>
### <b>🔑 Key Insights</b><br>
 
  - Python and SQL are the undisputed kings. They appear in almost 90% of all job postings across all roles. If you master these two, you unlock the majority of the market;
  - MongoDB is Aggressively Hiring: MongoDB appears across almost every engineering category (Cloud, Data Engineering, Software Engineering, ML Platform);
  - The "Excel" Anomaly in ML: In the Machine Learning Engineer dataset, the skill "excel" appears 3 times (for roles at Acceler8 Talent and Harnham). This is highly unusual for core ML roles (which require PyTorch/TensorFlow) and suggests a data scraping error in the original dataset or a very unusual job description requiring financial modeling alongside deep learning.<br><br><br>

<a id="Pt.3"></a>
### 3. The Most Demanded Skills
I used the following query to analyze the most demanded skills:
```sql
    with home_jobs as (
        select job_id
        from job_postings_fact
        where 
            job_work_from_home IS true and
            job_title_short = 'Data Analyst' --type of role
    )

    SELECT
        skills_job_dim.skill_id,
        skills_dim.skills, 
        count(home_jobs.job_id) job_amount_per_skill
    FROM skills_job_dim
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
    INNER JOIN home_jobs ON home_jobs.job_id = skills_job_dim.job_id
    GROUP by skills_dim.skills, skills_job_dim.skill_id
    order by job_amount_per_skill DESC
    limit 5
```
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

### 3.11 The Most Demanded Skills Insights
<img src="images\02_23_15.png"><br>
### <b>🔑 Key Insights</b>
- The "Big Two" Monopoly: SQL and Python aren't just popular; they are the absolute foundation of the tech economy. Data Engineering alone demands over 28,000 combined mentions for these two;
- The Seniority "Tool Drop": There is a ruthless shift as you level up. In junior/mid-level Analyst roles, BI tools like Excel, Tableau, and Power BI dominate the top 5. But in Senior Data roles, they completely vanish, replaced by heavy-hitters like Python, R, and Spark. The market is screaming: juniors build dashboards, seniors build architectures;
- PyTorch Takes the ML Crown: In the Machine Learning Engineer category, PyTorch (571 jobs) has officially edged out TensorFlow (553 jobs);
AWS is the Undisputed Cloud King: Across Cloud, Data, ML, and Software Engineering, AWS consistently crushes Azure in job volume. It is the default cloud standard.<br><br><br>
<a id="Pt.4"></a>
### 4. Top Skills (based on salary)
I used the following query to analyze the best skills based on salary:
```sql
    SELECT
        skills,
        ROUND(AVG(salary_year_avg), 0) avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Software Engineer' --type of role
        AND salary_year_avg IS NOT NULL
    GROUP BY skills
    ORDER BY avg_salary DESC
    LIMIT 25
```
### 4.1 For Business Analyst
#### The strongest salary premiums are attached to skills that fall into one of three categories:
  <b>a) Specialized backend engineering & high-performance systems:</b>
  - Chef
  - Ruby
  - Node.js
  - C
  - Phoenix
  - Electron

  <b>b) Distributed systems, data infrastructure & cloud-scale processing:</b>
  - Hadoop
  - Airflow
  - NoSQL
  - MongoDB
  - Cassandra
  - Elasticsearch
  - Snowflake

  <b>c) Advanced analytics, machine learning & scientific computing:</b>
  - NumPy
  - Pandas
  - PyTorch
  - TensorFlow
  - Scikit-learn
  - Matlab
  - Seaborn
  - MXNet
  - Chainer
  - Julia

          Overall, this dataset suggests that the highest salaries are driven less by general-purpose programming knowledge and more by expertise in systems that either scale to large distributed environments or support advanced machine learning and data-intensive workflows. The presence of both modern ML frameworks and older scientific computing tools also indicates that employers still pay a premium for deep quantitative and engineering capability, regardless of technology generation.
### 4.2 For Cloud Engineer
#### The strongest salary premiums are attached to skills that fall into one of four categories:

<b>a) Systems programming & high-performance engineering:</b>
- Rust
- C++
- Go
- Swift
- Java
- JavaScript

<b>b) Distributed systems, cloud infrastructure & data engineering platforms:</b>
- Spark
- Kafka
- Airflow
- Kubernetes
- Databricks
- Snowflake
- DynamoDB
- MongoDB
- Elasticsearch
- Neo4j
- PySpark
- SQL

<b>c) DevOps, observability & engineering productivity ecosystems:</b>
- Splunk
- Ansible
- Chef
- GitHub

<b>d) Advanced analytics & scientific computing (supporting layer):</b>
- Matlab
- Looker

        Overall, this dataset suggests that the highest salaries are concentrated among engineers who operate close to systems-level performance boundaries (Rust, C++, Go) or manage large-scale distributed data ecosystems (Spark, Kafka, cloud databases, and orchestration platforms). Strong salary premiums also appear in DevOps and infrastructure automation capabilities, indicating that employers place the greatest value on skills that improve scalability, reliability, deployment efficiency, and production-grade system operations rather than isolated application development alone.
### 4.3 For Data Analyst
#### The strongest salary premiums are attached to skills that fall into one of four categories:

<b>a) Legacy systems, niche infrastructure & high-leverage technical debt domains:</b>
- SVN
- Perl
- VMware
- Puppet
- Couchbase
- Bitbucket

<b>b) Cloud infrastructure, DevOps automation & distributed systems engineering:</b>
- Terraform
- Ansible
- Kafka
- Airflow
- GitLab
- Atlassian
- Twilio

<b>c) Machine learning, deep learning & advanced AI tooling:</b>
- Solidity
- Keras
- PyTorch
- TensorFlow
- Hugging Face
- MXNet
- DataRobot
- Scala
- Dplyr

<b>d) Cross-cutting high-performance backend & systems languages:</b>
- Golang
- Scala

        Overall, this dataset suggests a non-obvious pattern: the highest salary premiums are not only concentrated in modern “hot” technologies, but also in deep expertise with legacy or highly specialized systems (such as SVN and VMware), where scarcity of experienced engineers increases compensation levels. At the same time, strong demand remains for cloud automation, distributed systems, and AI/ML frameworks, reinforcing that top-paying roles tend to sit at the intersection of infrastructure reliability, scalability, and advanced computational capability rather than general-purpose software development alone.
### 4.4 For Senior Data Analyst
#### The strongest salary premiums are attached to skills that fall into one of four categories:

<b>a) Legacy enterprise systems, infrastructure maintenance & high-friction environments:</b>
- VMware
- COBOL
- Perl
- PowerShell
- PHP
- jQuery
- Zoom
- Wire
- Yarn

<b>b) Scalable backend engineering & modern distributed systems:</b>
- Go (Golang)
- Rust
- C++
- Node
- FastAPI
- GraphQL
- PostgreSQL
- Neo4j
- NoSQL
- Airflow
- Spark
- GitLab
- Phoenix

<b>c) Data-heavy engineering, visualization & analytics tooling:</b>
- Matplotlib

<b>d) Cross-platform application & specialized domain engineering:</b>
- Unity
- Swift

        Overall, this dataset reinforces a consistent pattern across all samples: the highest salaries are driven less by popularity and more by scarcity combined with business-critical responsibility. Extremely high salary premiums appear in legacy enterprise environments (VMware, COBOL), where relatively few engineers can safely maintain, modernize, or migrate critical systems. At the same time, strong compensation clusters around modern backend and distributed systems engineering (Go, Rust, FastAPI, GraphQL, Spark), where performance, scalability, and reliability directly impact business outcomes. The data also suggests that even widely adopted technologies can command premium compensation when they operate in critical infrastructure layers rather than general application development.
### 4.5 For Data Engineer
#### The strongest salary premiums are attached to skills that fall into one of three categories:

<b>a) Specialized backend engineering:</b>
- Node.js
- MongoDB
- Cassandra

<b>b) Distributed systems & cloud infrastructure:</b>
- Kafka
- Kubernetes
- Ubuntu
- IBM Cloud

<b>c) Advanced analytics & emerging technologies:</b>
- ggplot2
- NumPy
- OpenCV
- Solidity

        Overall, this dataset suggests that salary growth is driven less by acquiring widely used tools and more by developing expertise in specialized technical domains where qualified talent remains scarce. Strong compensation signals appear around backend infrastructure, distributed platforms, and advanced analytical technologies, indicating that employers increasingly reward skills that enable scalability, performance, and differentiated technical capability.
### 4.6 For Senior Data Engineer
#### The strongest salary premiums are attached to skills that fall into one of four categories:

<b>a) Machine learning, deep learning & computer vision ecosystems:</b>
- MXNet
- PyTorch
- Keras
- TensorFlow
- OpenCV

<b>b) Data infrastructure, databases & large-scale storage systems:</b>
- Mongo
- Cassandra
- CouchDB
- SQLite
- MySQL
- Redis
- Redshift

<b>c) Systems engineering, infrastructure tooling & cloud platforms:</b>
- Arch
- Shell
- Terminal
- OpenStack
- Splunk

<b>d) Application frameworks & backend development ecosystems:</b>
- Node
- Angular
- Kotlin

<b>e) Analytics, experimentation & productivity tooling:</b>
- Matplotlib
- Jupyter
- Airtable
- Zoom

        Overall, this dataset suggests that the highest salaries consistently cluster around three main forces: deep machine learning expertise, scalable data infrastructure, and systems-level engineering. Across all samples, the strongest premium does not come from front-end or general-purpose tooling, but from skills that either enable large-scale computation (ML frameworks), manage high-volume data systems (databases and distributed storage), or ensure reliability and control at the infrastructure layer (shell, cloud platforms, observability tools).
### 4.7 For Data Scientist
#### The strongest salary premiums are attached to skills that fall into one of four categories:

<b>a) Enterprise systems, platform engineering & high-trust infrastructure:</b>
- RedHat
- DynamoDB
- Neo4j
- BigQuery
- CodeCommit
- Airflow

<b>b) Advanced AI/ML, symbolic computing & research-heavy frameworks:</b>
- Watson
- Hugging Face
- Theano
- Solidity
- Haskell
- RShiny
- Dplyr

<b>c) Specialized backend engineering & modern application development:</b>
- Elixir
- Lua
- Ruby on Rails
- Objective-C
- Unity
- Unreal

<b>d) Productivity platforms & workflow-critical SaaS ecosystems:</b>
- Asana
- Airtable
- Slack
- Notion
- Zoom
- Atlassian

Overall, this dataset continues a stable pattern: the highest salaries are concentrated in domains where expertise is either rare, deeply specialized, or tied to mission-critical systems. A notable signal is the coexistence of cutting-edge AI tooling (Hugging Face, Watson) with older or niche languages and platforms (Haskell, Objective-C, Ruby on Rails), showing that compensation is driven less by technology “trendiness” and more by scarcity of expertise and proximity to core business infrastructure.
### 4.8 For Senior Data Scientist
#### The strongest salary premiums are attached to skills that fall into one of five categories:

<b>a) Backend engineering, systems programming & high-reliability services:</b>
- C#
- Go
- Flask
- Express
- Linux
- Terminal

<b>b) Data infrastructure, distributed systems & large-scale storage:</b>
- Cassandra
- Neo4j
- Spark
- SQLite
- Airflow
- Ansible

<b>c) Data science, visualization & analytical tooling:</b>
- Plotly
- Seaborn
- Matplotlib
- Jupyter
- Tidyverse

<b>d) Collaboration, DevOps & enterprise SaaS ecosystems:</b>
- GitLab
- Zoom
- RingCentral
- Airtable
- Planner

<b>e) ML/AI & applied intelligent systems:</b>
- Watson
- Keras

Overall, this dataset reinforces a consistent pattern across all samples: the highest salary premiums are driven by proximity to production-critical systems rather than surface-level popularity of tools. Strong compensation clusters around backend engineering languages (C#, Go), distributed data systems (Spark, Cassandra, Neo4j), and operational tooling that ensures reliability and scalability (Linux, Airflow, Ansible). At the same time, data science and visualization tools remain well-compensated when embedded in high-impact decision pipelines, while enterprise SaaS platforms and communication infrastructure reflect the premium placed on tools that directly support organizational productivity and uptime.
### 4.9 For Machine Learning Engineer
#### The strongest salary premiums are attached to skills that fall into one of six categories:

<b>a) Functional programming, systems design & high-reliability engineering languages:</b>
- Haskell
- Clojure
- Scala
- Rust
- Go (Golang)
- Kotlin
- Swift
- C

<b>b) Data infrastructure, storage systems & cloud-scale analytics:</b>
- PostgreSQL
- Redis
- Redshift
- BigQuery
- Airflow

<b>c) Business intelligence, reporting & decision-layer tooling:</b>
- Looker
- Qlik
- Excel
- Sheets
- Spreadsheet

<b>d) DevOps, automation & infrastructure management:</b>
- Chef

<b>e) Backend frameworks & application development ecosystems:</b>
- Flask
- TypeScript

<b>f) Advanced AI / applied ML tooling:</b>
- Hugging Face
- Julia

Overall, this dataset shows a consistent and increasingly clear structure across all samples: the highest salary premiums are driven by scarcity of expertise combined with proximity to production-critical systems. Functional and systems-level languages (Haskell, Rust, Scala) remain highly rewarded due to their steep learning curve and use in high-reliability environments. At the same time, cloud-scale data infrastructure (PostgreSQL, BigQuery, Redis, Airflow) continues to dominate compensation because it directly powers analytics and decision-making pipelines. Even “simple” tools like Excel and Sheets command strong salaries when embedded in high-impact business intelligence roles, reinforcing that value comes less from the tool itself and more from the strategic layer in which it is used.
### 4.10 For Software Engineer
#### The strongest salary premiums are attached to skills that fall into one of six categories:

<b>a) Functional programming, systems design & high-reliability engineering languages:</b>
- Haskell
- Clojure
- Scala
- Rust
- Go (Golang)
- Kotlin
- Swift
- C

<b>b) Data infrastructure, storage systems & cloud-scale analytics:</b>
- PostgreSQL
- Redis
- Redshift
- BigQuery
- Airflow

<b>c) Business intelligence, reporting & decision-layer tooling:</b>
- Looker
- Qlik
- Excel
- Sheets
- Spreadsheet

<b>d) DevOps, automation & infrastructure management:</b>
- Chef

<b>e) Backend frameworks & application development ecosystems:</b>
- Flask
- TypeScript

<b>f) Advanced AI / applied ML tooling:</b>
- Hugging Face
- Julia

        Overall, this dataset shows a consistent and increasingly clear structure across all samples: the highest salary premiums are driven by scarcity of expertise combined with proximity to production-critical systems. Functional and systems-level languages (Haskell, Rust, Scala) remain highly rewarded due to their steep learning curve and use in high-reliability environments. At the same time, cloud-scale data infrastructure (PostgreSQL, BigQuery, Redis, Airflow) continues to dominate compensation because it directly powers analytics and decision-making pipelines. Even “simple” tools like Excel and Sheets command strong salaries when embedded in high-impact business intelligence roles, reinforcing that value comes less from the tool itself and more from the strategic layer in which it is used.


### 4.11 Top Skills (based on salary) Insights
### <b>🔑 Key Insights</b>
- Systems & low-level languages dominate the highest salaries: Across roles, languages like Rust, C++, C, Go, and Swift consistently appear at the top of compensation ranges. This signals that deep systems knowledge and performance-critical engineering are among the most financially rewarded skill sets;<br><br>
- Legacy + enterprise infrastructure skills still pay exceptionally well: Tools like VMware ($375K), SVN ($400K outlier), Chef ($220K), Debian (~$196K), and Splunk (~$180K+) show that maintaining large, complex enterprise environments is highly lucrative—often more than modern “trendy” tools;<br><br>
- Advanced distributed systems = stable high-income band: Technologies such as Kafka, Cassandra, Spark, Redis, Kubernetes, and Airflow consistently sit in the ~$130K–$170K+ range across nearly all roles, making them the most reliable “high salary baseline” skill cluster;<br><br>
- Machine learning frameworks are no longer premium differentiators: PyTorch, TensorFlow, Keras, Scikit-learn, MXNet all cluster tightly around similar salary levels (~$120K–$175K), meaning the real premium now comes from system design and deployment—not just model building;<br><br>
- Data platform tools form the “middle-high elite tier”: Snowflake, Databricks, BigQuery, Redshift, Looker consistently appear in strong salary bands (~$135K–$165K), reflecting the value of cloud data warehousing and analytics infrastructure;<br><br>
Cross-stack versatility drives top-end compensation: The highest-paying profiles often combine backend + data + DevOps + cloud skills (e.g., MongoDB + Go + Kubernetes + Kafka), showing that breadth across infrastructure layers is more valuable than specialization alone;<br><br>
- Surprising productivity tools appear in high-paying roles: Tools like Slack, Zoom, Airtable, Notion, Excel show up in higher salary brackets in senior ML and data roles, likely reflecting leadership-heavy or hybrid technical-management positions.<br><br><br>

<a id="Pt.5"></a>
### 5. Most Optimal Skill To Learn
I used the following query to analyze the most optimal skills for learning:
```sql
    --NB: I know that this query can be shorter*
    with high_demand AS (
        SELECT
            skills_dim.skill_id,
            skills_dim.skills, 
            count(skills_job_dim.job_id) job_amount_per_skill
        FROM job_postings_fact
        INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
        INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
        where 
            job_title_short = 'Data Analyst' --type of role
            AND salary_year_avg IS NOT NULL
        GROUP by skills_dim.skill_id
    ), top_paid AS (
        SELECT
            skills_dim.skill_id,
            ROUND(AVG(salary_year_avg), 0) avg_salary
        FROM job_postings_fact
        INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
        INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
        WHERE job_title_short = 'Data Analyst' --type of role
            AND salary_year_avg IS NOT NULL
        GROUP BY skills_dim.skill_id
    )

    SELECT high_demand.skill_id, high_demand.skills, job_amount_per_skill, avg_salary
    FROM high_demand
    INNER JOIN top_paid ON high_demand.skill_id = top_paid.skill_id
    WHERE job_amount_per_skill>20
    ORDER BY
        avg_salary DESC,
        job_amount_per_skill DESC
    limit 25
```
### 5.1 For Business Analyst
#### <b>Best skill by category</b>

<b>Highest salary:</b> Snowflake

<b>Highest demand:</b> SQL

<b>Best balance of salary and demand:</b> Python

  Why Python stands out:

    - Very strong demand (143 postings)
    - Mid-to-high salary ($104k) with room for scaling upward in advanced roles
    - Acts as a multiplier skill: unlocks AWS, Snowflake, automation, ML, and data engineering roles
    - Best long-term ROI because it connects multiple high-paying ecosystems
### 5.2 For Cloud Engineer
#### <b>Best skill by category:</b>

<b>Highest salary:</b> Python
<b>Highest demand:</b> Python
<b>Best balance of salary and demand:</b> Python

Why Python stands out:

  - Leads both in demand and salary in this dataset
  - Serves as a foundational layer for both cloud (AWS) and engineering roles
  - Increases employability across multiple domains, not just one niche
  - Acts as a gateway skill into higher-paying distributed systems and data engineering work
### 5.3 For Data Analyst
#### <b>Best skill by category</b>

<b>Highest salary:</b> Kafka
<b>Highest demand:</b> Snowflake
<b>Best balance of salary and demand:</b> Spark  

#### <b>Why Spark stands out:</b>

- Extremely high demand (187 postings)  
- Strong salary (~$113k) with room for growth  
- Central component in modern data engineering stacks  
- Sits at the intersection of batch processing, streaming, and ML pipelines  
- Often required alongside Kafka, Airflow, and Snowflake, making it a “hub skill”
### 5.4 For Senior Data Analyst
#### <b>Best skill by category</b>

<b>Highest salary:</b> Airflow

<b>Highest demand:</b> SQL

<b>Best balance of salary and demand:</b> Python

<b>Why Python stands out:</b>

  - Extremely high demand (464 postings)  
  - Strong salary (~$119k) with clear upward mobility  
  - Sits at the center of nearly every modern data stack  
  - Enables work across cloud (AWS), big data (Spark), orchestration (Airflow), and ML (Databricks)  
  - Acts as the universal “connective tissue” skill in high-paying roles  
### 5.5 For Data Engineer
#### <b>Best skill by category</b>

<b>Highest salary:</b> Kubernetes

<b>Highest demand:</b> Python

<b>Best balance of salary and demand:</b> Kafka

<b>Why Kafka stands out:</b>

  - Salary is nearly $151k (much higher than Python, AWS, Snowflake)  
  - Demand is still substantial (134 postings)  
  - Often required in advanced data engineering and distributed systems roles  
  - Signals expertise beyond entry-level data engineering  
### 5.6 For Senior Data Engineer
#### <b>Best skill by category</b>

<b>Highest salary:</b> Redshift ($156,521)

<b>Highest demand:</b> Python (1155 postings)

<b>Best balance of salary and demand:</b> Spark

<b>Why Spark stands out:</b>

  - Extremely high demand (710 postings)  
  - Very strong salary (~$152k)  
  - Central execution layer for modern data platforms  
  - Bridges batch processing, streaming (Kafka), and cloud warehouses (Snowflake/Redshift)  
  - Required in a large share of high-paying data engineering roles
### 5.7 For Data Scientist
#### <b>Best skill by category</b>

<b>Highest salary:</b> Neo4j

<b>Highest demand:</b> SQL

<b>Best balance of salary and demand:</b> Spark

<b>Why Spark stands out:</b>

  - Extremely high demand (946 postings)  
  - Very strong salary (~$144k)  
  - Central execution layer across data engineering + ML pipelines  
  - Bridges cloud (AWS/GCP), storage (Snowflake/BigQuery), and streaming (Kafka)  
  - One of the most universally required “senior signal” skills  
### 5.8 For Senior Data Scientist
#### <b>Best skill by category</b>

<b>Highest salary:</b> C#

<b>Highest demand:</b> Python

<b>Best balance of salary and demand:</b> Spark

<b>Why Spark stands out:</b>

  - Strong demand (345 postings)  
  - Very high salary (~$164k)  
  - Central execution engine across modern data platforms  
  - Connects storage (SQL/Snowflake), streaming (Kafka), orchestration (Airflow), and ML workflows  
  - One of the most consistent “senior engineer signal” skills in the dataset  
### 5.9 For Machine Learning Engineer
#### <b>Best skill by category</b>

<b>Highest salary:</b> Scala

<b>Highest demand:</b> Python

<b>Best balance of salary and demand:</b> Spark

<b>Why Spark stands out:</b>

  - Strong demand (113 postings)  
  - High salary (~$139k)  
  - Central processing engine across modern data platforms  
  - Bridges cloud (AWS/GCP), orchestration (Airflow), storage systems, and ML workflows  
  - One of the most consistently required skills in senior data engineering roles  
### 5.10 For Software Engineer
#### <b>Best skill by category</b>

<b>Highest salary:</b> Go ($142,748)

<b>Highest demand:</b> Python (204 postings)

<b>Best balance of salary and demand:</b> Go

<b>Why Go stands out:</b>

  - Strong salary (~$143k) with solid demand (64 postings)  
  - High-performance systems language used in cloud infrastructure and distributed systems  
  - Frequently appears in backend, DevOps, and platform engineering roles  
  - Represents a “modern infrastructure engineer” skill rather than legacy systems

### 5.11 Most Optimal Skill To Learn Insights
### <b>🔑 Key Insights</b>
- The “High-Salary Core Stack” is surprisingly consistent across roles
Python, AWS, Spark, and Airflow repeatedly appear across Data, Engineering, ML, and Senior roles with strong salaries (~$120K–$150K+). These are not niche skills — they form the universal backbone of modern data + cloud careers;<br><br>
- Cloud + Data Platforms = the real salary accelerator
Snowflake, Databricks, BigQuery, Redshift, and Looker consistently sit in high-paying ranges across roles (often $130K–$160K+ in senior tracks). The market clearly rewards people who can work with managed data infrastructure, not just coding;<br><br>
- Distributed systems skills dominate high-end engineering pay
Kafka, Spark, Kubernetes, and Hadoop show up heavily in Data Engineer and Senior roles with some of the highest salaries in the dataset (often $150K+). These skills define “scale engineering” — and that’s where top compensation sits;<br><br>
- BI tools are valuable early, but lose strategic weight in senior roles
Tableau, Power BI, Excel, SSRS, and PowerPoint are common in Analyst roles but drop sharply in Senior/Engineering tracks. They help you enter the field — but they don’t drive long-term salary growth;<br><br>
- Go, Scala, and Java are quiet but powerful salary boosters
While not the most frequently listed, these languages consistently correlate with high-paying roles across Engineering and Data roles, especially in distributed systems and backend-heavy environments;<br><br>
- AI/ML frameworks are strong but specialized high-pay multipliers
PyTorch, TensorFlow, and Scikit-learn appear mostly in Data Science / ML Engineer tracks with high salaries (~$133K–$160K+), but they are more role-specific than foundational;<br><br>
- Clear “optimal learning path” emerges from the data
The highest ROI skill stack is not a single tool but a combination:

      Python + SQL + Cloud (AWS/GCP/Azure) + Data Platform (Snowflake/Databricks) + Distributed Systems (Spark/Kafka)
<br><br><br>

<a id="Concl"></a>
## Conclusions
Across the dataset, a clear picture emerges: top-paying roles are concentrated in the US and remote-first companies, with Big Tech (Meta, Google, Netflix), major financial institutions, and AI-driven startups consistently driving salary ceilings upward.<br><br>  
While Data Scientist and Data Engineer positions dominate the upper salary bands, the real driver of compensation is not job title but technical stack depth—especially in cloud, distributed systems, and data infrastructure. A stable “core stack” of Python, SQL, AWS, Spark, and Airflow appears across nearly every high-paying role, forming the baseline for modern data and engineering careers, while cloud data platforms like Snowflake, Databricks, BigQuery, and Redshift act as strong salary accelerators. In contrast, BI tools such as Excel, Tableau, and Power BI are important entry-level enablers but lose strategic value at senior levels, where they are replaced by system-level technologies like Kafka, Kubernetes, and Spark.<br><br>  
The highest compensation tiers are consistently associated with systems-heavy and performance-critical skills (Go, Rust, C++, Scala) and large-scale infrastructure ownership rather than pure ML modeling, as frameworks like PyTorch and TensorFlow now cluster in similar salary ranges without significant differentiation.<br><br>  
Overall, the data shows a clear career signal: early success comes from BI and analytics tooling, but long-term salary growth is driven by progression toward cloud architecture, distributed systems, and cross-stack engineering depth, where versatility across backend, data, and DevOps layers produces the highest financial returns.

<br><br><br><br><br><br>
<a id="russian-version"></a>
<h1 align="center">📊 Анализ рынка вакансий в сфере данных с помощью SQL</h1>

<p align="center">
  Исследование зарплат, востребованных навыков и карьерных трендов в сфере работы с данными.
</p>
<p align="center">
   <a href="#eng_ver">English version ↑</a>
  <br>
  ⬆️
  <br>
   Русская версия
</h1>
</p>
<p align="center">
  <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNnJ1MDFoMDF0dGZlM2g5b3A5d2Z0a3J2Z2VhMWN3b3N1M3I0d3VqYiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/l0HlNaQ6gWfllcjDO/giphy.gif" width="700">
</p>

---

## 📄 Содержание
### <a href="#introRU">Введение</a>
### <a href="#BGRU">Предыстория</a>
### <a href="#T&TRU">Инструменты и технологии</a>
### <a href="#AnalysisRU">Анализ</a>
#### <a href="#Pt.1RU">1. Самые высокооплачиваемые вакансии</a>
#### <a href="#Pt.2RU">2. Навыки для самых высокооплачиваемых вакансий</a>
#### <a href="#Pt.3RU">3. Самые востребованные навыки</a>
#### <a href="#Pt.4RU">4. Топ навыков (по уровню зарплаты)</a>
#### <a href="#Pt.5RU">5. Самый оптимальный навык для изучения</a>
### <a href="#ConclRU">Заключение</a>

---
<a id="introRU"></a>
## 🚀 Введение

В рамках данного проекта был проведён анализ реальных данных о вакансиях в сфере работы с данными. Используя SQL, я исследовал уровни заработных плат, востребованные навыки и тенденции найма для различных профессий, включая Data Analyst, Business Analyst, Data Engineer и Cloud Engineer.

Проект демонстрирует, как инструменты SQL позволяют преобразовывать сырые данные в практические инсайты, полезные как для исследования рынка труда, так и для построения карьерной стратегии.

---
<a id="BGRU"></a>
## 🎯 Предыстория

Этот проект был создан в рамках изучения основ SQL и анализа данных на практике.

Цель этого проекта — проанализировать рынок вакансий в сфере данных, чтобы определить, какие роли и технические навыки пользуются наибольшим спросом и связаны с более высокими зарплатами. 

Этот анализ помогает преобразовать сырые данные о вакансиях в практические инсайты, которые можно использовать для принятия карьерных решений в области данных.

---
<a id="T&TRU"></a>
## 🛠️ Инструменты и технологии

- SQL
- PostgreSQL
- VS Code
- Git & GitHub
- ChatGPT

---
<a id="AnalysisRU"></a>
## 📈 Анализ
<a id="Pt.1RU"></a>
### 1. Самые высокооплачиваемые вакансии
Для выявления наиболее высокооплачиваемых возможностей в этой сфере я использовал следующий SQL-запрос:

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
WHERE job_title_short = 'Data Analyst' -- тип роли
    AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10
```

### 1.1 Самые высокооплачиваемые вакансии: Бизнес-аналитик (Business Analyst)
Для роли Бизнес-аналитика были найдены следующие вакансии:
<br>

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"Principal Economist / Scientist"</span> с зарплатой $387 460<br>
- <b>Половина</b> вакансий из <span style="color:green;">Anywhere (удаленно)</span>, 
<b>вторая половина:</b> из <span style="color:green;">США</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

<br>

### 1.2 Самые высокооплачиваемые вакансии: Облачный инженер (Cloud Engineer)
Для роли Облачного инженера были найдены следующие вакансии:

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
|---|---|---|---|---|---:|---|
| 1 | ETL разработчик | Russia | Full-time | Технологическая компания | 280,000 | 2023-11-24 07:19:48 |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"Tech Lead, Cloud Data Engine"</span> с зарплатой $221 844<br>
- <b>Половина</b> вакансий из <span style="color:green;">Anywhere / Remote (удаленно)</span>,
<b>вторая половина:</b> из <span style="color:green;">США, Европы и России</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

<br>

### 1.3 Самые высокооплачиваемые вакансии: Дата-аналитик (Data Analyst)
Для роли Дата-аналитика были найдены следующие вакансии:

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"Data Analyst"</span> с зарплатой $650 000<br>
- <b>Половина</b> вакансий из <span style="color:green;">США</span>, 
<b>вторая половина:</b> <span style="color:green;">международные / смешанные (удаленно, Беларусь, глобальные)</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

<br>

### 1.4 Самые высокооплачиваемые вакансии: Старший дата-аналитик (Senior Data Analyst)
Для роли Старшего дата-аналитика были найдены следующие вакансии:

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"SVP, Data Analytics"</span> с зарплатой $425 000<br>
- <b>Половина</b> вакансий из <span style="color:green;">США</span>, 
<b>вторая половина:</b> тоже из <span style="color:green;">США (разные штаты / распределенные)</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

<br>

### 1.5 Самые высокооплачиваемые вакансии: Инженер данных (Data Engineer)
Для роли Инженера данных были найдены следующие вакансии:

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"Hybrid - Data Engineer - Up to $600k"</span> с зарплатой $525 000<br>
- <b>Половина</b> вакансий из <span style="color:green;">Нью-Йорка / США</span>, 
<b>вторая половина:</b> из <span style="color:green;">США + удаленно (N/A)</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

<br>

### 1.6 Самые высокооплачиваемые вакансии: Старший инженер данных (Senior Data Engineer)
Для роли Старшего инженера данных были найдены следующие вакансии:

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"Senior Data Engineer, Security Master"</span> с зарплатой $425 000<br>
- <b>Половина</b> вакансий из <span style="color:green;">США</span>, 
<b>вторая половина:</b> <span style="color:green;">удаленно (United States / N/A)</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

<br>

### 1.7 Самые высокооплачиваемые вакансии: Специалист по данным (Data Scientist)
Для роли Специалиста по данным (Data Scientist) были найдены следующие вакансии:

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"Data Scientist"</span> с зарплатой $960 000<br>
- <b>Половина</b> вакансий из <span style="color:green;">США</span>, 
<b>вторая половина:</b> <span style="color:green;">глобальные (США + ЮАР + удаленно)</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

<br>

### 1.8 Самые высокооплачиваемые вакансии: Старший специалист по данным (Senior Data Scientist)
Для роли Старшего специалиста по данным были найдены следующие вакансии:

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"Senior Data Scientist"</span> с зарплатой $890 000<br>
- <b>Половина</b> вакансий из <span style="color:green;">США</span>, 
<b>вторая половина:</b> <span style="color:green;">глобальные / смешанные (ЮАР, удаленно, США)</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

<br>

### 1.9 Самые высокооплачиваемые вакансии: Инженер машинного обучения (Machine Learning Engineer)
Для роли Инженера машинного обучения были найдены следующие вакансии:

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"Principal Machine Learning Engineer"</span> с зарплатой $325 000<br>
- <b>Половина</b> вакансий из <span style="color:green;">Anywhere / Remote (удаленно)</span>, 
<b>вторая половина:</b> из <span style="color:green;">США (в основном хабы в Калифорнии)</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

<br>

### 1.10 Самые высокооплачиваемые вакансии: Инженер-программист (Software Engineer)
Для роли Инженера-программиста были найдены следующие вакансии:

| № | Название вакансии | Локация | График | Компания | Средняя годовая зарплата | Дата публикации |
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
<b>Ключевые выводы:</b><br>

- Самая высокооплачиваемая вакансия — <span style="color:gold;">"Sr Staff Data Engineer - Software Engineering"</span> с зарплатой $375 000<br>
- <b>Половина</b> вакансий из <span style="color:green;">США</span>, 
<b>вторая половина:</b> <span style="color:green;">глобальные (Россия, Австралия, США и др.)</span><br>
- Все вакансии предполагают график "Full-time" (полная занятость)

### 1.11 Результаты
<img src="images\top_jobs_dist.png"><br>
*Наибольшее количество высокооплачиваемых вакансий находится в <b>США</b>*

<br>

<img src="images\1781381203.png"><br>
Самая высокооплачиваемая вакансия среди всех типов профессий — <b>Data Scientist</b> с зарплатой $960 000

<br><br>

#### Инсайты о самых высокооплачиваемых вакансиях

#### 📍 Географическое распределение
- Большинство высокооплачиваемых вакансий находятся в США<br>
- Удалённые вакансии («Anywhere») составляют значительную долю высокооплачиваемых позиций

#### 💰 Тренды зарплат
- Роли Data Scientist и Data Engineer показывают наивысший потенциал заработка<br>
- Выбросы сильно влияют на распределение средних зарплат<br>
- Специализация роли важнее, чем просто название должности

#### 🏢 Влияние компаний
Среди компаний с самыми высокими зарплатами:
- Крупные технологические компании: Meta, Google, Netflix, TikTok<br>
- Финансовые учреждения и хедж-фонды<br>
- Стартапы и исследовательские организации в области ИИ<br><br><br>


<a id="Pt.2RU"></a>
### 2. Навыки для самых высокооплачиваемых вакансий
Я использовал следующий запрос для анализа навыков, связанных с самыми высокооплачиваемыми вакансиями:
```sql
  WITH top_paying_jobs AS(
      SELECT 
          job_postings_fact.job_id,
          job_title,
          salary_year_avg,
          company_dim.name company_name
      FROM job_postings_fact
      LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
      WHERE job_title_short = 'Software Engineer' -- тип роли
          AND job_location = 'Anywhere' -- локация работы (удаленно)
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

### 2.1 Для Бизнес-аналитика (Business Analyst)
#### Уровень 1: Обязательные навыки:<br>
  - SQL
  - Python
  - Excel

  #### Уровень 2: Высокоценные навыки BI:<br>
  - Tableau
  - Looker
  - Power BI

  #### Уровень 3: Навыки аналитики и статистики:<br>
  - SAS
  - R

  #### Уровень 4: Навыки облачных платформ и данных:<br>
  - BigQuery
  - GCP
  - Snowflake
  - Azure
  - AWS

  #### Уровень 5: Инструменты для совместной работы и рабочих процессов:<br>
  - Git
  - Jira
  - Confluence

        Самая сильная комбинация для получения высокооплачиваемой роли Бизнес-аналитика в 2023 году обычно включала:
          SQL + Python + Excel + инструмент BI (Tableau/Looker)
        *опыт работы с облачными платформами дает дополнительное преимущество в зарплате.

### 2.2 Для Облачного инженера (Cloud Engineer)
#### Уровень 1: Базовые высокооплачиваемые инженерные навыки:<br>
  - Python
  - Go
  - C++
  - Java

#### Уровень 2: Навыки инфраструктуры и систем:<br>
  - Linux
  - Kubernetes
  - Docker
  - Splunk

#### Уровень 3: Навыки облачных платформ:<br>
  - GCP
  - AWS
  - Azure

#### Уровень 4: Навыки баз данных и платформ данных:<br>
  - MongoDB
  - SQL
  - Kafka
  - Elasticsearch

#### Уровень 5: Навыки инженерии данных:<br>
  - Spark
  - PySpark
  - Airflow
  - Snowflake
  - BigQuery
  - Redshift

#### Уровень 6: Навыки аналитики и визуализации:<br>
  - Tableau
  - Looker

        Самая сильная комбинация для получения высокооплачиваемой инженерной роли в этом наборе данных обычно включала:
          Python + Go/C++ + Linux + Cloud (GCP/AWS/Azure) + Kubernetes + MongoDB

### 2.3 Для Аналитика данных (Data Analyst)
#### Уровень 1 (Обязательные):<br>
  - SQL
  - Python
  - Tableau или Power BI
  - Excel

#### Уровень 2 (Значительное повышение зарплаты):<br>
  - Snowflake
  - AWS
  - Azure
  - Pandas

#### Уровень 3 (Отличия для старшего уровня):<br>
  - Databricks
  - PySpark
  - Git/GitLab
  - Jira
  - Confluence

        Набор данных показывает, что самые высокооплачиваемые роли Аналитика данных в 2023 году обычно требовали комбинации:<br>
          SQL + Python + Инструменты визуализации + Навыки облачных/дата-платформ

          Кандидаты, добавившие облачные технологии (AWS, Azure, Snowflake, Databricks) и современные рабочие процессы инженерии данных, стабильно получали более высокую компенсацию.

          SQL остается универсальным базовым требованием, в то время как Python является самым сильным дифференциатором для перехода на старшие и руководящие аналитические роли.

### 2.4 Для Старшего аналитика данных (Senior Data Analyst)
#### Уровень 1: Обязательные аналитические навыки:<br>
  - SQL
  - Python

#### Уровень 2: Статистические навыки и навыки Data Science:<br>
  - R
  - Spark
  - Jupyter
  - Keras

#### Уровень 3: Навыки облачных платформ и данных:<br>
  - AWS
  - BigQuery

#### Уровень 4: Навыки BI и отчетности:<br>
  - Tableau

#### Уровень 5: Навыки программной инженерии и разработки:<br>
  - FastAPI
  - Flask
  - Scala
  - Golang
  - Rust
  - JavaScript
  - HTML
  - CSS
  - Angular

#### Уровень 6: Инструменты для совместной работы и бизнеса:<br>
  - Jira
  - Zoom

        Самая сильная комбинация для получения высокооплачиваемой роли Старшего аналитика данных / Прикладного ученого в этом наборе данных обычно включала:
          SQL + Python + R + Опыт работы с облачными/дата-платформами (AWS или BigQuery)

### 2.5 Для Инженера данных (Data Engineer)
#### Уровень 1:<br>
  - Python
  - SQL

#### Уровень 2:<br>
  - Spark
  - PySpark
  - Hadoop
  - Kafka

#### Уровень 3:<br>
  - Pandas
  - NumPy
  - TensorFlow
  - PyTorch
  - Keras
  - R

#### Уровень 4:<br>
  - Kubernetes
  - Azure

#### Уровень 5:<br>
  - Scala

        Самая сильная комбинация для получения высокооплачиваемой роли Инженера данных в этом наборе данных обычно включала:
          Python + Spark + PySpark + Hadoop + Kafka + Kubernetes

### 2.6 Для Старшего инженера данных (Senior Data Engineer)
#### Уровень 1: Навыки для самых высокооплачиваемых вакансий ($240k–$236k):<br>
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

#### Уровень 2: Навыки для высокооплачиваемых вакансий ($225k):<br>
  - Python
  - MongoDB
  - AWS
  - Azure

#### Уровень 3: Навыки старшего руководства дата-платформами ($220k):<br>
  - SQL
  - Python
  - AWS
  - Redshift
  - Snowflake
  - Airflow

#### Уровень 4: Навыки совместной работы и инженерного менеджмента ($220k):<br>
  - GitHub
  - Jira
  - Confluence

        Самая сильная комбинация для получения высокооплачиваемой роли в инженерии данных в этом наборе данных обычно включала:
          Python + MongoDB + AWS + Spark + Kafka

### 2.7 Для Специалиста по данным (Data Scientist)
#### Уровень 1 ($550k–$525k):<br>
  - SQL
  - Python

#### Уровень 2 ($375k):<br>
  - SQL
  - Python
  - Java
  - Cassandra
  - Spark
  - Hadoop
  - Tableau

#### Уровень 3 ($320k):<br>
  - AWS
  - Azure
  - TensorFlow
  - Keras
  - PyTorch
  - Scikit-learn
  - DataRobot

#### Уровень 4 ($300k):<br>
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

        Самая сильная комбинация для получения высокооплачиваемой роли в этом наборе данных обычно включала:
          SQL + Python + Spark + TensorFlow/PyTorch

### 2.8 Для Старшего специалиста по данным (Senior Data Scientist)
#### Уровень 1 ($375k):<br>
  - SQL
  - Python
  - Java
  - C++
  - Cassandra
  - Spark
  - Hadoop
  - Tableau

#### Уровень 2 ($245k):<br>
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

#### Уровень 3 ($235k):<br>
  - Python
  - R
  - BigQuery
  - TensorFlow
  - PyTorch
  - Scikit-learn
  - Tableau
  - Looker

#### Уровень 4 ($230k):<br>
  - Snowflake
  - SQL
  - Python

        Самая сильная комбинация для получения высокооплачиваемой роли Специалиста по данным в этом наборе данных обычно включала:
          SQL + Python + Spark + C++/Java + Фреймворки машинного обучения

### 2.9 Для Инженера машинного обучения (Machine Learning Engineer)
#### Уровень 1 ($325k):<br>
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

#### Уровень 2 ($300k):<br>
  - TypeScript
  - Python
  - Golang

#### Уровень 3 ($262.5k):<br>
  - Python
  - Excel

#### Уровень 4 ($249k):<br>
  - MongoDB
  - Python

#### Уровень 5 ($240k):<br>
  - TensorFlow
  - PyTorch

        Самая сильная комбинация для получения высокооплачиваемой роли Инженера машинного обучения в этом наборе данных обычно включала:
          Python + Spark + Kubernetes + AWS/GCP + Docker + Airflow

### 2.10 Для Инженера-программиста (Software Engineer)
#### Уровень 1 ($225k):<br>
  - Python
  - JavaScript
  - TypeScript
  - AWS
  - Azure
  - Snowflake
  - Spark
  - React

#### Уровень 2 ($205k):<br>
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

#### Уровень 3 ($200k):<br>
  - MongoDB
  - TypeScript
  - Ruby

#### Уровень 4 ($191k):<br>
  - JavaScript
  - CSS

        Самая сильная комбинация для получения высокооплачиваемой роли Инженера-программиста в этом наборе данных обычно включала:
          Python + AWS + React + Snowflake + Spark

### 2.11 Инсайты о навыках для самых высокооплачиваемых вакансий
<img src="images\01_06_22.png"><br>
### <b>🔑 Ключевые выводы</b><br>
 
  - Python и SQL — бесспорные короли. Они встречаются почти в 90% всех вакансий во всех ролях. Если вы освоите эти два навыка, вы откроете для себя большую часть рынка;
  - MongoDB агрессивно нанимает: MongoDB встречается почти в каждой инженерной категории (Cloud, Data Engineering, Software Engineering, ML Platform);
  - Аномалия "Excel" в ML: В наборе данных для Machine Learning Engineer навык "excel" встречается 3 раза (для ролей в Acceler8 Talent и Harnham). Это крайне необычно для базовых ML-ролей (которые требуют PyTorch/TensorFlow) и указывает на ошибку парсинга данных в исходном наборе или на очень необычное описание вакансии, требующее финансового моделирования наряду с глубоким обучением.<br><br><br>

<a id="Pt.3RU"></a>
### 3. Самые востребованные навыки
Я использовал следующий запрос для анализа самых востребованных навыков:
```sql
    with home_jobs as (
        select job_id
        from job_postings_fact
        where 
            job_work_from_home IS true and
            job_title_short = 'Data Analyst' -- тип роли
    )

    SELECT
        skills_job_dim.skill_id,
        skills_dim.skills, 
        count(home_jobs.job_id) job_amount_per_skill
    FROM skills_job_dim
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
    INNER JOIN home_jobs ON home_jobs.job_id = skills_job_dim.job_id
    GROUP by skills_dim.skills, skills_job_dim.skill_id
    order by job_amount_per_skill DESC
    limit 5
```

### 3.1 Для Бизнес-аналитика
#### Рейтинг навыков:
  - SQL (1,266)
  - Excel (983)
  - Tableau (728)
  - Power BI (555)
  - Python (546)

        Работа с запросами к данным остается фундаментом: SQL доминирует над всеми остальными навыками, что подчеркивает его роль как основного языка для извлечения, трансформации и анализа данных в организациях.

        Бизнес-аналитика высоко ценится: Tableau и Power BI входят в топ-5, что демонстрирует высокий спрос со стороны работодателей на специалистов, которые могут превращать сырые данные в дашборды, отчеты и практические инсайты.

        Технические и бизнес-навыки должны сосуществовать: Хотя Excel остается основным бизнес-инструментом, наличие Python показывает, что работодатели все чаще ищут аналитиков, которые могут дополнить традиционную работу с таблицами автоматизацией, продвинутой аналитикой и возможностями обработки данных.

### 3.2 Для Облачного инженера
#### Рейтинг навыков:
  - Python (203)
  - AWS (190)
  - SQL (163)
  - Azure (130)
  - Kubernetes (94)

        - Автоматизация прежде всего: Python лидирует среди всех навыков, что указывает на то, что скриптинг и автоматизация являются фундаментальными для облачной инженерии.
        - Экспертиза в облачных платформах необходима: AWS и Azure занимают две из четырех верхних позиций, показывая, что облачные провайдеры остаются основой профессии.
        - Нативные облачные операции растут: Сильные позиции Kubernetes отражают растущий спрос на оркестрацию контейнеров и масштабируемое управление приложениями.

        В целом, идеальный профиль Облачного инженера сочетает в себе Python для автоматизации, AWS/Azure для управления инфраструктурой, SQL для взаимодействия с данными и Kubernetes для нативного облачного развертывания и оркестрации. Эта комбинация тесно связана с навыками, которые чаще всего запрашивают работодатели.

### 3.3 Для Аналитика данных
#### Рейтинг навыков:
  - SQL (7,291)
  - Excel (4,611)
  - Python (4,330)
  - Tableau (3,745)
  - Power BI (2,609)

        SQL — доминирующий базовый навык: Со значительным отрывом от всех остальных навыков, SQL остается самым востребованным, подтверждая, что извлечение данных и написание запросов находятся в центре почти каждой роли, связанной с данными.

        Сильный набор для аналитики находится в среднем эшелоне: Excel и Python тесно сгруппированы после SQL, показывая баланс между традиционным бизнес-анализом (Excel) и более продвинутыми, программируемыми рабочими процессами обработки данных (Python).

        Инструменты визуализации важны, но вторичны: Tableau и Power BI замыкают список, указывая на то, что, хотя создание дашбордов и отчетность критичны, они обычно идут после основных навыков работы с данными и анализа.

### 3.4 Для Старшего аналитика данных
#### Рейтинг навыков:
  - SQL (1,724)
  - Python (1,054)
  - Tableau (999)
  - Excel (700)
  - R (514)

        Манипуляция данными — это ключевая компетенция: SQL лидирует с значительным отрывом, подчеркивая, что способность получать доступ, очищать и управлять данными остается фундаментальной для аналитических ролей.

        Навыки программирования становятся все важнее: Python и R входят в топ-5, что указывает на высокий спрос на специалистов, которые могут выполнять статистический анализ, автоматизировать рабочие процессы и решать сложные задачи с данными, выходящие за рамки традиционных инструментов бизнес-аналитики.

        Визуализация данных создает бизнес-ценность: Видное место Tableau подчеркивает важность превращения аналитических находок в четкие визуализации, которые поддерживают принятие решений и эффективно доносят инсайты.

### 3.5 Для Инженера данных
#### Рейтинг навыков:
  - SQL (14,213)
  - Python (13,893)
  - AWS (8,570)
  - Azure (6,997)
  - Spark (6,612)

        Инженерия данных строится на основах обработки данных: SQL и Python лидируют в рейтинге с большим отрывом, показывая, что эффективная манипуляция, трансформация и автоматизация данных находятся в сердце современных рабочих процессов инженерии данных.

        Экспертиза в облаке стала стандартным требованием: AWS и Azure занимают две из пяти верхних позиций, отражая сдвиг отрасли в сторону облачных дата-платформ, решений для хранения данных и масштабируемой инфраструктуры.

        Технологии больших данных остаются критически важными: Сильные позиции Spark демонстрируют продолжающуюся важность распределенной обработки данных и масштабной аналитики, поскольку организации обрабатывают постоянно растущие объемы данных.

### 3.6 Для Старшего инженера данных
#### Рейтинг навыков:
  - Python (4,604)
  - SQL (4,488)
  - AWS (3,367)
  - Spark (2,423)
  - Azure (2,240)

        Программирование теперь является ведущей точкой входа: Python немного обгоняет SQL, показывая, что современные роли, связанные с данными, все чаще отдают приоритет скриптингу, автоматизации и разработке сквозных рабочих процессов, а не просто задачам написания запросов.

        Ключевые навыки инфраструктуры данных остаются тесно связанными: SQL, AWS и Azure находятся близко друг к другу по спросу, что указывает на то, что работодатели ожидают от кандидатов комфортной работы как с реляционными базами данных, так и с облачными средами без резких пробелов в специализации.

        Распределенная обработка — ключевое отличие: Присутствие Spark в топ-5 подтверждает, что масштабируемая обработка данных и возможности распределенных вычислений по-прежнему важны для более продвинутых или производственных ролей в сфере данных.

### 3.7 Для Специалиста по данным
#### Рейтинг навыков:
  - Python (10,390)
  - SQL (7,488)
  - R (4,674)
  - AWS (2,593)
  - Tableau (2,458)

        Программирование доминирует в современных аналитических рабочих процессах: Python явно лидирует в рейтинге, показывая, что работодатели отдают приоритет гибкому программированию общего назначения для автоматизации, обработки данных и продвинутого анализа. Сильные позиции R подтверждают продолжающуюся актуальность статистического программирования в аналитических ролях.

        Работа с запросами к данным остается непреложным фундаментом: SQL занимает второе место, подтверждая, что доступ к структурированным данным и запросы к базам данных по-прежнему являются основными требованиями практически для всех должностей, связанных с данными.

        Облако и визуализация завершают стек: AWS и Tableau замыкают топ-5, подчеркивая важность масштабируемой облачной инфраструктуры и способности визуально доносить инсайты через дашборды.

### 3.8 Для Старшего специалиста по данным
#### Рейтинг навыков:
  - Python (2,956)
  - SQL (2,185)
  - R (1,307)
  - AWS (866)
  - Spark (693)

        Программирование — доминирующее базовое требование: Python лидирует в списке, показывая, что работодатели все чаще ожидают, что кандидаты будут комфортно чувствовать себя с кодом для анализа данных, автоматизации и построения рабочих процессов, а не полагаться только на ручные инструменты.

        Навыки работы со структурированными данными остаются незаменимыми: SQL занимает второе место, подтверждая, что запросы к базам данных и извлечение данных остаются фундаментальными навыками практически для всех ролей, ориентированных на данные.

        Продвинутая аналитика и масштабируемые системы по-прежнему актуальны, но вторичны: R сохраняет сильные позиции для статистического анализа, в то время как AWS и Spark показывают продолжающийся спрос на облачную инфраструктуру и распределенную обработку данных, особенно в более продвинутых или производственно-ориентированных средах.

### 3.9 Для Инженера машинного обучения
#### Рейтинг навыков:
  - Python (1,230)
  - PyTorch (571)
  - TensorFlow (553)
  - AWS (548)
  - SQL (398)

        Python — фундамент современных рабочих процессов ИИ: Python явно лидирует, отражая его роль как основного языка для разработки машинного обучения, обучения моделей и экспериментов во всей экосистеме ИИ.

        Фреймворки глубокого обучения находятся в центре спроса: PyTorch и TensorFlow кажутся почти одинаково важными, показывая, что работодатели ожидают знакомства хотя бы с одним основным фреймворком глубокого обучения для создания и развертывания моделей нейронных сетей.

        Инженерия ИИ выходит за рамки моделирования в инфраструктуру: AWS и SQL подчеркивают, что готовое к продакшену машинное обучение — это не только модели, но и работа с облачной инфраструктурой и обработка конвейеров структурированных данных.

### 3.10 Для Инженера-программиста
#### Рейтинг навыков:
  - Python (1,318)
  - SQL (1,038)
  - AWS (1,007)
  - Java (741)
  - Kubernetes (618)

        Python лидирует в современной бэкенд- и data-driven разработке: Python занимает первую позицию, отражая его универсальность в автоматизации, бэкенд-сервисах, конвейерах данных и нативных облачных приложениях.

        Облачная инфраструктура так же важна, как и код: AWS и Kubernetes оба сильно представлены в топ-5, показывая, что работодатели все чаще ожидают, что разработчики будут работать в контейнеризированных, масштабируемых облачных средах, а не в изолированных системах.

        Многоязычные бэкенд-экосистемы остаются актуальными: SQL и Java сохраняют высокий спрос, указывая на то, что традиционные корпоративные системы и архитектуры, управляемые базами данных, по-прежнему являются основной частью ролей инженера-программиста.

### 3.11 Инсайты о самых востребованных навыках
<img src="images\02_23_15.png"><br>
### <b>🔑 Ключевые выводы</b>
- Монополия "Большой двойки": SQL и Python не просто популярны; они являются абсолютным фундаментом технологической экономики. Только Инженерия данных требует более 28 000 совместных упоминаний этих двух навыков;
- Смена инструментов при переходе на старшие позиции: Происходит безжалостный сдвиг по мере повышения грейда. В ролях аналитиков джуниор/мидл уровня BI-инструменты, такие как Excel, Tableau и Power BI, доминируют в топ-5. Но в старших ролях по работе с данными они полностью исчезают, заменяясь такими тяжеловесами, как Python, R и Spark. Рынок кричит: джуниоры строят дашборды, сеньоры строят архитектуры;
- PyTorch забирает корону ML: В категории Machine Learning Engineer PyTorch (571 вакансия) официально обогнал TensorFlow (553 вакансии);
- AWS — бесспорный король облаков: В категориях Cloud, Data, ML и Software Engineering AWS стабильно превосходит Azure по объему вакансий. Это облачный стандарт по умолчанию.<br><br><br>
<a id="Pt.4RU"></a>
### 4. Топ навыков (по уровню зарплаты)
Я использовал следующий запрос для анализа лучших навыков на основе зарплаты:
```sql
    SELECT
        skills,
        ROUND(AVG(salary_year_avg), 0) avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Software Engineer' -- тип роли
        AND salary_year_avg IS NOT NULL
    GROUP BY skills
    ORDER BY avg_salary DESC
    LIMIT 25
```

### 4.1 Для Бизнес-аналитика
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из трех категорий:
  <b>а) Специализированная бэкенд-разработка и высокопроизводительные системы:</b>
  - Chef
  - Ruby
  - Node.js
  - C
  - Phoenix
  - Electron

  <b>б) Распределенные системы, инфраструктура данных и облачная обработка:</b>
  - Hadoop
  - Airflow
  - NoSQL
  - MongoDB
  - Cassandra
  - Elasticsearch
  - Snowflake

  <b>в) Продвинутая аналитика, машинное обучение и научные вычисления:</b>
  - NumPy
  - Pandas
  - PyTorch
  - TensorFlow
  - Scikit-learn
  - Matlab
  - Seaborn
  - MXNet
  - Chainer
  - Julia

          В целом, этот набор данных предполагает, что самые высокие зарплаты определяются не столько знаниями программирования общего назначения, сколько экспертизой в системах, которые либо масштабируются до крупных распределенных сред, либо поддерживают продвинутое машинное обучение и интенсивные рабочие процессы с данными. Наличие как современных фреймворков ML, так и более старых инструментов научных вычислений также указывает на то, что работодатели по-прежнему платят премию за глубокие количественные и инженерные возможности, независимо от поколения технологий.

### 4.2 Для Облачного инженера
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из четырех категорий:

<b>а) Системное программирование и высокопроизводительная инженерия:</b>
- Rust
- C++
- Go
- Swift
- Java
- JavaScript

<b>б) Распределенные системы, облачная инфраструктура и платформы инженерии данных:</b>
- Spark
- Kafka
- Airflow
- Kubernetes
- Databricks
- Snowflake
- DynamoDB
- MongoDB
- Elasticsearch
- Neo4j
- PySpark
- SQL

<b>в) DevOps, наблюдаемость и экосистемы инженерной продуктивности:</b>
- Splunk
- Ansible
- Chef
- GitHub

<b>г) Продвинутая аналитика и научные вычисления (вспомогательный слой):</b>
- Matlab
- Looker

        В целом, этот набор данных предполагает, что самые высокие зарплаты сосредоточены среди инженеров, которые работают близко к границам производительности на уровне систем (Rust, C++, Go) или управляют крупномасштабными распределенными экосистемами данных (Spark, Kafka, облачные базы данных и платформы оркестрации). Сильные надбавки к зарплате также наблюдаются в возможностях DevOps и автоматизации инфраструктуры, что указывает на то, что работодатели придают наибольшее значение навыкам, которые улучшают масштабируемость, надежность, эффективность развертывания и операции с системами производственного уровня, а не только изолированной разработке приложений.

### 4.3 Для Аналитика данных
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из четырех категорий:

<b>а) Устаревшие системы, нишевая инфраструктура и области с высоким уровнем технического долга:</b>
- SVN
- Perl
- VMware
- Puppet
- Couchbase
- Bitbucket

<b>б) Облачная инфраструктура, автоматизация DevOps и инженерия распределенных систем:</b>
- Terraform
- Ansible
- Kafka
- Airflow
- GitLab
- Atlassian
- Twilio

<b>в) Машинное обучение, глубокое обучение и продвинутые инструменты ИИ:</b>
- Solidity
- Keras
- PyTorch
- TensorFlow
- Hugging Face
- MXNet
- DataRobot
- Scala
- Dplyr

<b>г) Кросс-платформенные высокопроизводительные бэкенд и системные языки:</b>
- Golang
- Scala

        В целом, этот набор данных предполагает неочевидную закономерность: самые высокие надбавки к зарплате сосредоточены не только в современных "горячих" технологиях, но и в глубокой экспертизе работы с устаревшими или узкоспециализированными системами (такими как SVN и VMware), где нехватка опытных инженеров повышает уровень компенсации. В то же время, сохраняется высокий спрос на облачную автоматизацию, распределенные системы и фреймворки ИИ/ML, что подтверждает, что самые высокооплачиваемые роли, как правило, находятся на пересечении надежности инфраструктуры, масштабируемости и продвинутых вычислительных возможностей, а не только разработки программного обеспечения общего назначения.

### 4.4 Для Старшего аналитика данных
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из четырех категорий:

<b>а) Устаревшие корпоративные системы, обслуживание инфраструктуры и среды с высоким трением:</b>
- VMware
- COBOL
- Perl
- PowerShell
- PHP
- jQuery
- Zoom
- Wire
- Yarn

<b>б) Масштабируемая бэкенд-инженерия и современные распределенные системы:</b>
- Go (Golang)
- Rust
- C++
- Node
- FastAPI
- GraphQL
- PostgreSQL
- Neo4j
- NoSQL
- Airflow
- Spark
- GitLab
- Phoenix

<b>в) Инженерия, ориентированная на данные, визуализация и инструменты аналитики:</b>
- Matplotlib

<b>г) Кроссплатформенная инженерия приложений и специализированная предметная инженерия:</b>
- Unity
- Swift

        В целом, этот набор данных подтверждает последовательную закономерность во всех выборках: самые высокие зарплаты определяются не столько популярностью, сколько дефицитом в сочетании с критически важной для бизнеса ответственностью. Чрезвычайно высокие надбавки к зарплате наблюдаются в устаревших корпоративных средах (VMware, COBOL), где относительно немного инженеров могут безопасно поддерживать, модернизировать или мигрировать критически важные системы. В то же время, сильная компенсация кластеризуется вокруг современной бэкенд-инженерии и инженерии распределенных систем (Go, Rust, FastAPI, GraphQL, Spark), где производительность, масштабируемость и надежность напрямую влияют на бизнес-результаты. Данные также показывают, что даже широко распространенные технологии могут требовать премиальной компенсации, когда они работают в критически важных слоях инфраструктуры, а не в общей разработке приложений.

### 4.5 Для Инженера данных
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из трех категорий:

<b>а) Специализированная бэкенд-инженерия:</b>
- Node.js
- MongoDB
- Cassandra

<b>б) Распределенные системы и облачная инфраструктура:</b>
- Kafka
- Kubernetes
- Ubuntu
- IBM Cloud

<b>в) Продвинутая аналитика и новые технологии:</b>
- ggplot2
- NumPy
- OpenCV
- Solidity

        В целом, этот набор данных предполагает, что рост зарплаты определяется не столько приобретением широко используемых инструментов, сколько развитием экспертизы в специализированных технических областях, где квалифицированные таланты остаются в дефиците. Сильные сигналы компенсации появляются вокруг бэкенд-инфраструктуры, распределенных платформ и продвинутых аналитических технологий, указывая на то, что работодатели все чаще вознаграждают навыки, которые обеспечивают масштабируемость, производительность и дифференцированные технические возможности.

### 4.6 Для Старшего инженера данных
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из четырех категорий:

<b>а) Экосистемы машинного обучения, глубокого обучения и компьютерного зрения:</b>
- MXNet
- PyTorch
- Keras
- TensorFlow
- OpenCV

<b>б) Инфраструктура данных, базы данных и крупномасштабные системы хранения:</b>
- Mongo
- Cassandra
- CouchDB
- SQLite
- MySQL
- Redis
- Redshift

<b>в) Системная инженерия, инструменты инфраструктуры и облачные платформы:</b>
- Arch
- Shell
- Terminal
- OpenStack
- Splunk

<b>г) Фреймворки приложений и экосистемы бэкенд-разработки:</b>
- Node
- Angular
- Kotlin

<b>д) Инструменты аналитики, экспериментов и продуктивности:</b>
- Matplotlib
- Jupyter
- Airtable
- Zoom

        В целом, этот набор данных предполагает, что самые высокие зарплаты стабильно кластеризуются вокруг трех основных сил: глубокой экспертизы машинного обучения, масштабируемой инфраструктуры данных и инженерии на уровне систем. Во всех выборках самая сильная премия исходит не от фронтенд-инструментов или инструментов общего назначения, а от навыков, которые либо обеспечивают крупномасштабные вычисления (фреймворки ML), либо управляют системами данных с высоким объемом (базы данных и распределенное хранилище), либо обеспечивают надежность и контроль на уровне инфраструктуры (shell, облачные платформы, инструменты наблюдаемости).

### 4.7 Для Специалиста по данным
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из четырех категорий:

<b>а) Корпоративные системы, инженерия платформ и инфраструктура с высоким уровнем доверия:</b>
- RedHat
- DynamoDB
- Neo4j
- BigQuery
- CodeCommit
- Airflow

<b>б) Продвинутый ИИ/ML, символьные вычисления и исследовательские фреймворки:</b>
- Watson
- Hugging Face
- Theano
- Solidity
- Haskell
- RShiny
- Dplyr

<b>в) Специализированная бэкенд-инженерия и современная разработка приложений:</b>
- Elixir
- Lua
- Ruby on Rails
- Objective-C
- Unity
- Unreal

<b>г) Платформы продуктивности и критически важные для рабочих процессов SaaS-экосистемы:</b>
- Asana
- Airtable
- Slack
- Notion
- Zoom
- Atlassian

В целом, этот набор данных продолжает стабильную закономерность: самые высокие зарплаты сосредоточены в областях, где экспертиза либо редка, либо глубоко специализирована, либо привязана к критически важным для миссии системам. Примечательным сигналом является сосуществование передовых инструментов ИИ (Hugging Face, Watson) с более старыми или нишевыми языками и платформами (Haskell, Objective-C, Ruby on Rails), что показывает, что компенсация определяется не столько "трендовостью" технологий, сколько дефицитом экспертизы и близостью к основной бизнес-инфраструктуре.

### 4.8 Для Старшего специалиста по данным
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из пяти категорий:

<b>а) Бэкенд-инженерия, системное программирование и сервисы с высокой надежностью:</b>
- C#
- Go
- Flask
- Express
- Linux
- Terminal

<b>б) Инфраструктура данных, распределенные системы и крупномасштабное хранилище:</b>
- Cassandra
- Neo4j
- Spark
- SQLite
- Airflow
- Ansible

<b>в) Инструменты Data Science, визуализации и аналитики:</b>
- Plotly
- Seaborn
- Matplotlib
- Jupyter
- Tidyverse

<b>г) Экосистемы совместной работы, DevOps и корпоративного SaaS:</b>
- GitLab
- Zoom
- RingCentral
- Airtable
- Planner

<b>д) ML/ИИ и прикладные интеллектуальные системы:</b>
- Watson
- Keras

В целом, этот набор данных подтверждает последовательную закономерность во всех выборках: самые высокие надбавки к зарплате определяются близостью к критически важным для продакшена системам, а не поверхностной популярностью инструментов. Сильная компенсация кластеризуется вокруг языков бэкенд-инженерии (C#, Go), распределенных систем данных (Spark, Cassandra, Neo4j) и операционных инструментов, обеспечивающих надежность и масштабируемость (Linux, Airflow, Ansible). В то же время, инструменты Data Science и визуализации остаются хорошо оплачиваемыми, когда они встроены в конвейеры принятия решений с высоким воздействием, в то время как корпоративные SaaS-платформы и коммуникационная инфраструктура отражают премию, придаваемую инструментам, которые напрямую поддерживают организационную продуктивность и бесперебойную работу.

### 4.9 Для Инженера машинного обучения
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из шести категорий:

<b>а) Функциональное программирование, проектирование систем и языки инженерии с высокой надежностью:</b>
- Haskell
- Clojure
- Scala
- Rust
- Go (Golang)
- Kotlin
- Swift
- C

<b>б) Инфраструктура данных, системы хранения и облачная аналитика:</b>
- PostgreSQL
- Redis
- Redshift
- BigQuery
- Airflow

<b>в) Бизнес-аналитика, отчетность и инструменты уровня принятия решений:</b>
- Looker
- Qlik
- Excel
- Sheets
- Spreadsheet

<b>г) DevOps, автоматизация и управление инфраструктурой:</b>
- Chef

<b>д) Бэкенд-фреймворки и экосистемы разработки приложений:</b>
- Flask
- TypeScript

<b>е) Продвинутый ИИ / прикладные инструменты ML:</b>
- Hugging Face
- Julia

В целом, этот набор данных показывает последовательную и все более четкую структуру во всех выборках: самые высокие надбавки к зарплате определяются дефицитом экспертизы в сочетании с близостью к критически важным для продакшена системам. Функциональные и системные языки (Haskell, Rust, Scala) остаются высоко вознаграждаемыми из-за их крутой кривой обучения и использования в средах с высокой надежностью. В то же время, облачная инфраструктура данных (PostgreSQL, BigQuery, Redis, Airflow) продолжает доминировать в компенсации, потому что она напрямую питает конвейеры аналитики и принятия решений. Даже "простые" инструменты, такие как Excel и Sheets, требуют высоких зарплат, когда они встроены в роли бизнес-аналитики с высоким воздействием, подтверждая, что ценность исходит не от самого инструмента, а от стратегического слоя, в котором он используется.

### 4.10 Для Инженера-программиста
#### Самые высокие надбавки к зарплате связаны с навыками, которые попадают в одну из шести категорий:

<b>а) Функциональное программирование, проектирование систем и языки инженерии с высокой надежностью:</b>
- Haskell
- Clojure
- Scala
- Rust
- Go (Golang)
- Kotlin
- Swift
- C

<b>б) Инфраструктура данных, системы хранения и облачная аналитика:</b>
- PostgreSQL
- Redis
- Redshift
- BigQuery
- Airflow

<b>в) Бизнес-аналитика, отчетность и инструменты уровня принятия решений:</b>
- Looker
- Qlik
- Excel
- Sheets
- Spreadsheet

<b>г) DevOps, автоматизация и управление инфраструктурой:</b>
- Chef

<b>д) Бэкенд-фреймворки и экосистемы разработки приложений:</b>
- Flask
- TypeScript

<b>е) Продвинутый ИИ / прикладные инструменты ML:</b>
- Hugging Face
- Julia

        В целом, этот набор данных показывает последовательную и все более четкую структуру во всех выборках: самые высокие надбавки к зарплате определяются дефицитом экспертизы в сочетании с близостью к критически важным для продакшена системам. Функциональные и системные языки (Haskell, Rust, Scala) остаются высоко вознаграждаемыми из-за их крутой кривой обучения и использования в средах с высокой надежностью. В то же время, облачная инфраструктура данных (PostgreSQL, BigQuery, Redis, Airflow) продолжает доминировать в компенсации, потому что она напрямую питает конвейеры аналитики и принятия решений. Даже "простые" инструменты, такие как Excel и Sheets, требуют высоких зарплат, когда они встроены в роли бизнес-аналитики с высоким воздействием, подтверждая, что ценность исходит не от самого инструмента, а от стратегического слоя, в котором он используется.


### 4.11 Инсайты о топе навыков (по уровню зарплаты)
### <b>🔑 Ключевые выводы</b>
- Системные и низкоуровневые языки доминируют в самых высоких зарплатах: Во всех ролях такие языки, как Rust, C++, C, Go и Swift, стабильно появляются в верхней части диапазонов компенсации. Это сигнализирует о том, что глубокие системные знания и инженерия, критичная к производительности, являются одними из самых финансово вознаграждаемых наборов навыков;<br><br>
- Навыки устаревшей и корпоративной инфраструктуры по-прежнему оплачиваются исключительно хорошо: Такие инструменты, как VMware ($375K), SVN ($400K выброс), Chef ($220K), Debian (~$196K) и Splunk (~$180K+), показывают, что обслуживание крупных, сложных корпоративных сред является высокодоходным — часто больше, чем современные "трендовые" инструменты;<br><br>
- Продвинутые распределенные системы = стабильный диапазон высоких доходов: Такие технологии, как Kafka, Cassandra, Spark, Redis, Kubernetes и Airflow, стабильно находятся в диапазоне ~$130K–$170K+ практически во всех ролях, что делает их самым надежным кластером навыков "базовой высокой зарплаты";<br><br>
- Фреймворки машинного обучения больше не являются премиальными дифференциаторами: PyTorch, TensorFlow, Keras, Scikit-learn, MXNet все кластеризуются вокруг схожих уровней зарплат (~$120K–$175K), что означает, что реальная премия теперь исходит от проектирования систем и развертывания, а не просто от создания моделей;<br><br>
- Инструменты дата-платформ формируют "средне-высший элитный уровень": Snowflake, Databricks, BigQuery, Redshift, Looker стабильно появляются в сильных зарплатных диапазонах (~$135K–$165K), отражая ценность облачных хранилищ данных и инфраструктуры аналитики;<br><br>
- Кросс-стековая универсальность определяет максимальную компенсацию: Самые высокооплачиваемые профили часто сочетают в себе бэкенд + данные + DevOps + облачные навыки (например, MongoDB + Go + Kubernetes + Kafka), показывая, что широта охвата уровней инфраструктуры ценнее, чем одна лишь специализация;<br><br>
- Неожиданные инструменты продуктивности появляются в высокооплачиваемых ролях: Такие инструменты, как Slack, Zoom, Airtable, Notion, Excel, появляются в более высоких зарплатных категориях в старших ролях ML и данных, что, вероятно, отражает позиции с упором на руководство или гибридные техническо-управленческие должности.<br><br><br>

<a id="Pt.5RU"></a>
### 5. Самый оптимальный навык для изучения
Я использовал следующий запрос для анализа наиболее оптимальных навыков для изучения:
```sql
    --Примечание: Я знаю, что этот запрос можно сделать короче*
    with high_demand AS (
        SELECT
            skills_dim.skill_id,
            skills_dim.skills, 
            count(skills_job_dim.job_id) job_amount_per_skill
        FROM job_postings_fact
        INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
        INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
        where 
            job_title_short = 'Data Analyst' -- тип роли
            AND salary_year_avg IS NOT NULL
        GROUP by skills_dim.skill_id
    ), top_paid AS (
        SELECT
            skills_dim.skill_id,
            ROUND(AVG(salary_year_avg), 0) avg_salary
        FROM job_postings_fact
        INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
        INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
        WHERE job_title_short = 'Data Analyst' -- тип роли
            AND salary_year_avg IS NOT NULL
        GROUP BY skills_dim.skill_id
    )

    SELECT high_demand.skill_id, high_demand.skills, job_amount_per_skill, avg_salary
    FROM high_demand
    INNER JOIN top_paid ON high_demand.skill_id = top_paid.skill_id
    WHERE job_amount_per_skill>20
    ORDER BY
        avg_salary DESC,
        job_amount_per_skill DESC
    limit 25
```

### 5.1 Для Бизнес-аналитика
#### <b>Лучший навык по категории</b>

<b>Самая высокая зарплата:</b> Snowflake

<b>Самый высокий спрос:</b> SQL

<b>Лучший баланс зарплаты и спроса:</b> Python

  Почему Python выделяется:

    - Очень высокий спрос (143 вакансии)
    - Зарплата от средней до высокой ($104k) с возможностью масштабирования вверх в продвинутых ролях
    - Выступает как навык-мультипликатор: открывает доступ к AWS, Snowflake, автоматизации, ML и ролям дата-инженера
    - Лучшая долгосрочная окупаемость инвестиций (ROI), потому что он связывает несколько высокооплачиваемых экосистем

### 5.2 Для Облачного инженера
#### <b>Лучший навык по категории:</b>

<b>Самая высокая зарплата:</b> Python
<b>Самый высокий спрос:</b> Python
<b>Лучший баланс зарплаты и спроса:</b> Python

Почему Python выделяется:

  - Лидирует как по спросу, так и по зарплате в этом наборе данных
  - Служит фундаментальным слоем как для облачных (AWS), так и для инженерных ролей
  - Повышает востребованность в нескольких областях, а не только в одной нише
  - Выступает как навык-шлюз в более высокооплачиваемые распределенные системы и работу по инженерии данных

### 5.3 Для Аналитика данных
#### <b>Лучший навык по категории</b>

<b>Самая высокая зарплата:</b> Kafka
<b>Самый высокий спрос:</b> Snowflake
<b>Лучший баланс зарплаты и спроса:</b> Spark  

#### <b>Почему Spark выделяется:</b>

- Чрезвычайно высокий спрос (187 вакансий)  
- Сильная зарплата (~$113k) с пространством для роста  
- Центральный компонент в современных стеках инженерии данных  
- Находится на пересечении пакетной обработки, потоковой передачи и конвейеров ML  
- Часто требуется наряду с Kafka, Airflow и Snowflake, что делает его "хаб-навыком"

### 5.4 Для Старшего аналитика данных
#### <b>Лучший навык по категории</b>

<b>Самая высокая зарплата:</b> Airflow

<b>Самый высокий спрос:</b> SQL

<b>Лучший баланс зарплаты и спроса:</b> Python

<b>Почему Python выделяется:</b>

  - Чрезвычайно высокий спрос (464 вакансии)  
  - Сильная зарплата (~$119k) с четкой мобильностью вверх  
  - Находится в центре почти каждого современного стека данных  
  - Позволяет работать с облаком (AWS), большими данными (Spark), оркестрацией (Airflow) и ML (Databricks)  
  - Выступает как универсальный навык "связующей ткани" в высокооплачиваемых ролях  

### 5.5 Для Инженера данных
#### <b>Лучший навык по категории</b>

<b>Самая высокая зарплата:</b> Kubernetes

<b>Самый высокий спрос:</b> Python

<b>Лучший баланс зарплаты и спроса:</b> Kafka

<b>Почему Kafka выделяется:</b>

  - Зарплата составляет почти $151k (намного выше, чем у Python, AWS, Snowflake)  
  - Спрос все еще значителен (134 вакансии)  
  - Часто требуется в продвинутых ролях инженерии данных и распределенных систем  
  - Сигнализирует об экспертизе за пределами начального уровня инженерии данных  

### 5.6 Для Старшего инженера данных
#### <b>Лучший навык по категории</b>

<b>Самая высокая зарплата:</b> Redshift ($156,521)

<b>Самый высокий спрос:</b> Python (1155 вакансий)

<b>Лучший баланс зарплаты и спроса:</b> Spark

<b>Почему Spark выделяется:</b>

  - Чрезвычайно высокий спрос (710 вакансий)  
  - Очень сильная зарплата (~$152k)  
  - Центральный слой исполнения для современных дата-платформ  
  - Связывает пакетную обработку, потоковую передачу (Kafka) и облачные хранилища (Snowflake/Redshift)  
  - Требуется в большой доле высокооплачиваемых ролей инженерии данных

### 5.7 Для Специалиста по данным
#### <b>Лучший навык по категории</b>

<b>Самая высокая зарплата:</b> Neo4j

<b>Самый высокий спрос:</b> SQL

<b>Лучший баланс зарплаты и спроса:</b> Spark

<b>Почему Spark выделяется:</b>

  - Чрезвычайно высокий спрос (946 вакансий)  
  - Очень сильная зарплата (~$144k)  
  - Центральный слой исполнения в конвейерах инженерии данных + ML  
  - Связывает облако (AWS/GCP), хранилище (Snowflake/BigQuery) и потоковую передачу (Kafka)  
  - Один из самых универсально требуемых навыков "сигнала сеньорного уровня"  

### 5.8 Для Старшего специалиста по данным
#### <b>Лучший навык по категории</b>

<b>Самая высокая зарплата:</b> C#

<b>Самый высокий спрос:</b> Python

<b>Лучший баланс зарплаты и спроса:</b> Spark

<b>Почему Spark выделяется:</b>

  - Сильный спрос (345 вакансий)  
  - Очень высокая зарплата (~$164k)  
  - Центральный движок исполнения на современных дата-платформах  
  - Связывает хранилище (SQL/Snowflake), потоковую передачу (Kafka), оркестрацию (Airflow) и рабочие процессы ML  
  - Один из самых последовательных навыков "сигнала старшего инженера" в наборе данных  

### 5.9 Для Инженера машинного обучения
#### <b>Лучший навык по категории</b>

<b>Самая высокая зарплата:</b> Scala

<b>Самый высокий спрос:</b> Python

<b>Лучший баланс зарплаты и спроса:</b> Spark

<b>Почему Spark выделяется:</b>

  - Сильный спрос (113 вакансий)  
  - Высокая зарплата (~$139k)  
  - Центральный движок обработки на современных дата-платформах  
  - Связывает облако (AWS/GCP), оркестрацию (Airflow), системы хранения и рабочие процессы ML  
  - Один из самых последовательно требуемых навыков в старших ролях инженерии данных  

### 5.10 Для Инженера-программиста
#### <b>Лучший навык по категории</b>

<b>Самая высокая зарплата:</b> Go ($142,748)

<b>Самый высокий спрос:</b> Python (204 вакансии)

<b>Лучший баланс зарплаты и спроса:</b> Go

<b>Почему Go выделяется:</b>

  - Сильная зарплата (~$143k) при солидном спросе (64 вакансии)  
  - Высокопроизводительный системный язык, используемый в облачной инфраструктуре и распределенных системах  
  - Часто встречается в ролях бэкенд-разработки, DevOps и платформенной инженерии  
  - Представляет собой навык "современного инженера инфраструктуры", а не устаревших систем

### 5.11 Инсайты о самом оптимальном навыке для изучения
### <b>🔑 Ключевые выводы</b>
- "Ядро стека с высокой зарплатой" удивительно последовательно во всех ролях
Python, AWS, Spark и Airflow неоднократно появляются в ролях Data, Engineering, ML и Senior с сильными зарплатами (~$120K–$150K+). Это не нишевые навыки — они формируют универсальный фундамент современных карьер в сфере данных и облаков;<br><br>
- Облако + Дата-платформы = реальный ускоритель зарплаты
Snowflake, Databricks, BigQuery, Redshift и Looker стабильно находятся в высокооплачиваемых диапазонах во всех ролях (часто $130K–$160K+ в старших треках). Рынок явно вознаграждает людей, которые могут работать с управляемой инфраструктурой данных, а не только с кодингом;<br><br>
- Навыки распределенных систем доминируют в высокооплачиваемой инженерии
Kafka, Spark, Kubernetes и Hadoop часто встречаются в ролях Data Engineer и Senior с одними из самых высоких зарплат в наборе данных (часто $150K+). Эти навыки определяют "инженерию масштаба" — и именно там находится максимальная компенсация;<br><br>
- BI-инструменты ценны на старте, но теряют стратегический вес в старших ролях
Tableau, Power BI, Excel, SSRS и PowerPoint распространены в ролях аналитиков, но резко падают в треках Senior/Engineering. Они помогают войти в профессию, но не обеспечивают долгосрочный рост зарплаты;<br><br>
- Go, Scala и Java — тихие, но мощные ускорители зарплаты
Хотя они не самые часто упоминаемые, эти языки стабильно коррелируют с высокооплачиваемыми ролями в инженерии и данных, особенно в распределенных системах и средах с упором на бэкенд;<br><br>
- Фреймворки ИИ/ML — сильные, но специализированные мультипликаторы высоких зарплат
PyTorch, TensorFlow и Scikit-learn появляются в основном в треках Data Science / ML Engineer с высокими зарплатами (~$133K–$160K+), но они более специфичны для ролей, чем фундаментальны;<br><br>
- Из данных вытекает четкий "оптимальный путь обучения"
Стек навыков с наивысшей окупаемостью инвестиций (ROI) — это не один инструмент, а комбинация:

      Python + SQL + Cloud (AWS/GCP/Azure) + Data Platform (Snowflake/Databricks) + Distributed Systems (Spark/Kafka)
<br><br><br>

<a id="ConclRU"></a>
## Заключение
По всему набору данных вырисовывается четкая картина: высокооплачиваемые роли сосредоточены в США и компаниях с удаленным форматом работы, при этом крупные технологические компании (Big Tech: Meta, Google, Netflix), крупные финансовые учреждения и стартапы, ориентированные на ИИ, стабильно поднимают потолки зарплат.<br><br>  
Хотя позиции Data Scientist и Data Engineer доминируют в верхних зарплатных диапазонах, реальным драйвером компенсации является не название должности, а глубина технического стека — особенно в облаке, распределенных системах и инфраструктуре данных. Стабильное "ядро стека" из Python, SQL, AWS, Spark и Airflow появляется практически в каждой высокооплачиваемой роли, формируя базовую линию для современных карьер в сфере данных и инженерии, в то время как облачные дата-платформы, такие как Snowflake, Databricks, BigQuery и Redshift, выступают сильными ускорителями зарплаты. В отличие от них, BI-инструменты, такие как Excel, Tableau и Power BI, важны как энэйблеры начального уровня, но теряют стратегическую ценность на старших уровнях, где они заменяются системными технологиями, такими как Kafka, Kubernetes и Spark.<br><br>  
Самые высокие уровни компенсации стабильно связаны с навыками, ориентированными на системы и производительность (Go, Rust, C++, Scala), и владением крупномасштабной инфраструктурой, а не чистым моделированием ML, поскольку такие фреймворки, как PyTorch и TensorFlow, теперь кластеризуются в схожих зарплатных диапазонах без значительной дифференциации.<br><br>  
В целом, данные показывают четкий карьерный сигнал: ранний успех приходит с инструментами BI и аналитики, но долгосрочный рост зарплаты обеспечивается переходом к облачной архитектуре, распределенным системам и глубине кросс-стековой инженерии, где универсальность на уровнях бэкенда, данных и DevOps дает самые высокие финансовые дивиденды.