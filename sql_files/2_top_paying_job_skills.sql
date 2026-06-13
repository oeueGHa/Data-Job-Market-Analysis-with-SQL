WITH top_paying_jobs AS(
    SELECT 
        job_postings_fact.job_id,
        job_title,
        salary_year_avg,
        company_dim.name company_name
    FROM job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE job_title_short = 'Senior Data Engineer'
        AND job_location = 'Anywhere'
        AND salary_year_avg IS NOT NULL
    --ORDER BY salary_year_avg DESC
    --LIMIT 10
)

SELECT
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON skills_job_dim.job_id = top_paying_jobs.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
 ORDER BY salary_year_avg DESC
 LIMIT 30

 /**

___FOR BUSINESS ANALYST___
  Tier 1: Must-Have Skills:
    SQL
    Python
    Excel

  Tier 2: High-Value BI Skills:
    Tableau
    Looker
    Power BI

  Tier 3: Analytics & Statistical Skills:
    SAS
    R

  Tier 4: Cloud & Data Platform Skills:
    BigQuery
    GCP
    Snowflake
    Azure
    AWS

  Tier 5: Collaboration & Workflow Tools:
    Git
    Jira
    Confluence

  The strongest combination for landing a top-paying Business Analyst role in 2023 was typically: 
    SQL + Python + Excel + a BI tool (Tableau/Looker), 
    *cloud-platform experience providing an additional salary advantage.



___FOR CLOUD ENGINEER___
  Tier 1: Core High-Paying Engineering Skills
    Python
    Go
    C++
    Java

  Tier 2: Infrastructure & Systems Skills
    Linux
    Kubernetes
    Docker
    Splunk

  Tier 3: Cloud Platform Skills
    GCP
    AWS
    Azure

  Tier 4: Database & Data Platform Skills
    MongoDB
    SQL
    Kafka
    Elasticsearch

  Tier 5: Data Engineering Skills
    Spark
    PySpark
    Airflow
    Snowflake
    BigQuery
    Redshift

  Tier 6: Analytics & Visualization Skills
    Tableau
    Looker

  The strongest combination for landing a top-paying engineering role in this dataset was typically:
   Python + Go/C++ + Linux + Cloud (GCP/AWS/Azure) + Kubernetes + MongoDB



___FOR DATA ANALYST___
  Recommended Skill Stack Based on This Dataset

  If your goal is to qualify for top-paying analyst positions, prioritize:

  Tier 1 (Essential):
    SQL
    Python
    Tableau or Power BI
    Excel

  Tier 2 (High Salary Boost):
    Snowflake
    AWS
    Azure
    Pandas

  Tier 3 (Senior-Level Differentiators):
    Databricks
    PySpark
    Git/GitLab
    Jira/Confluence
    Overall Conclusion

  The dataset shows that the highest-paying data analyst jobs in 2023 rewarded a combination of:
    SQL + Python + Visualization + Cloud/Data Platform skills

  Analysts who added cloud technologies (AWS, Azure, Snowflake, Databricks) and engineering workflows commanded the highest salaries. 
  SQL remains the universal requirement, while Python is the strongest differentiator for moving into senior and director-level analyst roles.



___FOR SENIOR DATA ANALYST___
  Tier 1: Must-Have Analytics Skills
    SQL
    Python
  Tier 2: Statistical & Data Science Skills
    R
    Spark
    Jupyter
    Keras
  Tier 3: Cloud & Data Platform Skills
    AWS
    BigQuery

  Tier 4: BI & Reporting Skills
    Tableau

  Tier 5: Software Engineering & Development Skills
    FastAPI
    Flask
    Scala
    Golang
    Rust
    JavaScript
    HTML
    CSS
    Angular

  Tier 6: Collaboration & Business Tools
    Jira
    Zoom

  The strongest combination for landing a top-paying Senior Data Analyst / Applied Scientist role in this dataset was typically:
    SQL + Python + R + Cloud/Data Platform experience (AWS or BigQuery)



___FOR DATA ENGINEER___
  Tier 1:
    Python
    SQL
  Tier 2:
    Spark
    PySpark
    Hadoop
    Kafka
  Tier 3:
    Pandas
    NumPy
    TensorFlow
    PyTorch
    Keras
    R
  Tier 4:
    Kubernetes
    Azure
  Tier 5:
    Scala

  The strongest combination for landing a top-paying Data Engineer role in this dataset was typically:
    Python + Spark + PySpark + Hadoop + Kafka + Kubernetes



___FOR SENIOR DATA ENGINEER___
  Tier 1: Top-Paying Job Skills ($240k–236k)
    MongoDB
    Python
    NoSQL
    Java
    Shell
    JavaScript
    Cassandra
    AWS
    Azure
    Spark
    Kafka

  Tier 2: High-Paying Job Skills ($225k)
    Python
    MongoDB
    AWS
    Azure

  Tier 3: Senior Leadership Data Platform Skills ($220k)
    SQL
    Python
    AWS
    Redshift
    Snowflake
    Airflow

  Tier 4: Collaboration & Engineering Management Skills ($220k)
    GitHub
    Jira
    Confluence

  The strongest combination for landing a top-paying Data Engineering role in this dataset was typically:
    Python + MongoDB + AWS + Spark + Kafka



___FOR DATA SCIENTIST___
  Tier 1 ($550k–525k)
      SQL
      Python

  Tier 2 ($375k)
      SQL
      Python
      Java
      Cassandra
      Spark
      Hadoop
      Tableau

  Tier 3 ($320k)
      AWS
      Azure
      TensorFlow
      Keras
      PyTorch
      Scikit-learn
      DataRobot

  Tier 4 ($300k)
      Python
      SQL
      Scala
      Java
      Spark
      TensorFlow
      PyTorch
      Kubernetes
      AWS
      GCP
      Pandas
      NumPy

  The strongest combination for landing a top-paying role in this dataset was typically:
      SQL + Python + Spark + TensorFlow/PyTorch



___FOR SENIOR DATA SCIENTIST___
  Tier 1 ($375k)
      SQL
      Python
      Java
      C++
      Cassandra
      Spark
      Hadoop
      Tableau

  Tier 2 ($245k)
      Python
      SQL
      R
      Scala
      Java
      C++
      Spark
      Airflow
      TensorFlow
      PyTorch

  Tier 3 ($235k)
      Python
      R
      BigQuery
      TensorFlow
      PyTorch
      Scikit-learn
      Tableau
      Looker

  Tier 4 ($230k)
      Snowflake
      SQL
      Python

  The strongest combination for landing a top-paying Data Scientist role in this dataset was typically:
      SQL + Python + Spark + C++/Java + Machine Learning Frameworks



___FOR MACHINE LEARNING ENGINEER___
  Tier 1 ($325k)
      SQL
      Python
      Airflow
      Spark
      Kubernetes
      GCP
      AWS
      Java
      Docker
      Ansible
      Chef
      Terraform
      Excel
      Scala

  Tier 2 ($300k)
      TypeScript
      Python
      Golang

  Tier 3 ($262.5k)
      Python
      Excel

  Tier 4 ($249k)
      MongoDB
      Python

  Tier 5 ($240k)
      TensorFlow
      PyTorch

  The strongest combination for landing a top-paying Machine Learning Engineer role in this dataset was typically:
      Python + Spark + Kubernetes + AWS/GCP + Docker + Airflow



___FOR SOFTWARE ENGINEER___
  Tier 1 ($225k)
      Python
      JavaScript
      TypeScript
      AWS
      Azure
      Snowflake
      Spark
      React

  Tier 2 ($205k)
      Python
      AWS
      GCP
      Elasticsearch
      DynamoDB
      Snowflake
      Pandas
      Airflow
      React
      GraphQL
      Node.js

  Tier 3 ($200k)
      MongoDB
      TypeScript
      Ruby

  Tier 4 ($191k)
      JavaScript
      CSS

  The strongest combination for landing a top-paying Software Engineer role in this dataset was typically:
      Python + AWS + React + Snowflake + Spark


||
||
||
===========================================================================================================================================

===========================================================================================================================================

===========================================================================================================================================

===========================================================================================================================================

===========================================================================================================================================

===========================================================================================================================================

===========================================================================================================================================

==========================================================================================================================================================



___OUTPUT FOR BUSINESS ANALYST___
[
  {
    "job_id": 502610,
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "company_name": "Noom",
    "skills": "sql"
  },
  {
    "job_id": 502610,
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "company_name": "Noom",
    "skills": "python"
  },
  {
    "job_id": 502610,
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "company_name": "Noom",
    "skills": "excel"
  },
  {
    "job_id": 502610,
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "company_name": "Noom",
    "skills": "tableau"
  },
  {
    "job_id": 502610,
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "company_name": "Noom",
    "skills": "looker"
  },
  {
    "job_id": 502610,
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "company_name": "Noom",
    "skills": "chef"
  },
  {
    "job_id": 112859,
    "job_title": "Manager II, Applied Science - Marketplace Dynamics",
    "salary_year_avg": "214500.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 17458,
    "job_title": "Senior Economy Designer",
    "salary_year_avg": "190000.0",
    "company_name": "Harnham",
    "skills": "sql"
  },
  {
    "job_id": 17458,
    "job_title": "Senior Economy Designer",
    "salary_year_avg": "190000.0",
    "company_name": "Harnham",
    "skills": "python"
  },
  {
    "job_id": 17458,
    "job_title": "Senior Economy Designer",
    "salary_year_avg": "190000.0",
    "company_name": "Harnham",
    "skills": "r"
  },
  {
    "job_id": 416185,
    "job_title": "Staff Revenue Operations Analyst",
    "salary_year_avg": "170500.0",
    "company_name": "Gladly",
    "skills": "excel"
  },
  {
    "job_id": 1099753,
    "job_title": "REMOTE - Business Intelligence Analyst (Leadership Role) - GCP",
    "salary_year_avg": "162500.0",
    "company_name": "CyberCoders",
    "skills": "sql"
  },
  {
    "job_id": 1099753,
    "job_title": "REMOTE - Business Intelligence Analyst (Leadership Role) - GCP",
    "salary_year_avg": "162500.0",
    "company_name": "CyberCoders",
    "skills": "python"
  },
  {
    "job_id": 1099753,
    "job_title": "REMOTE - Business Intelligence Analyst (Leadership Role) - GCP",
    "salary_year_avg": "162500.0",
    "company_name": "CyberCoders",
    "skills": "bigquery"
  },
  {
    "job_id": 1099753,
    "job_title": "REMOTE - Business Intelligence Analyst (Leadership Role) - GCP",
    "salary_year_avg": "162500.0",
    "company_name": "CyberCoders",
    "skills": "gcp"
  },
  {
    "job_id": 1099753,
    "job_title": "REMOTE - Business Intelligence Analyst (Leadership Role) - GCP",
    "salary_year_avg": "162500.0",
    "company_name": "CyberCoders",
    "skills": "looker"
  },
  {
    "job_id": 1099753,
    "job_title": "REMOTE - Business Intelligence Analyst (Leadership Role) - GCP",
    "salary_year_avg": "162500.0",
    "company_name": "CyberCoders",
    "skills": "word"
  },
  {
    "job_id": 1099753,
    "job_title": "REMOTE - Business Intelligence Analyst (Leadership Role) - GCP",
    "salary_year_avg": "162500.0",
    "company_name": "CyberCoders",
    "skills": "sheets"
  },
  {
    "job_id": 1313937,
    "job_title": "Manager Analytics and Reporting",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "sql"
  },
  {
    "job_id": 1313937,
    "job_title": "Manager Analytics and Reporting",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "excel"
  },
  {
    "job_id": 1313937,
    "job_title": "Manager Analytics and Reporting",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "tableau"
  },
  {
    "job_id": 106225,
    "job_title": "Business Strategy Analyst Senior (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "USAA",
    "skills": "sql"
  },
  {
    "job_id": 106225,
    "job_title": "Business Strategy Analyst Senior (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "USAA",
    "skills": "python"
  },
  {
    "job_id": 106225,
    "job_title": "Business Strategy Analyst Senior (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "USAA",
    "skills": "r"
  },
  {
    "job_id": 106225,
    "job_title": "Business Strategy Analyst Senior (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "USAA",
    "skills": "sas"
  },
  {
    "job_id": 106225,
    "job_title": "Business Strategy Analyst Senior (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "USAA",
    "skills": "phoenix"
  },
  {
    "job_id": 106225,
    "job_title": "Business Strategy Analyst Senior (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "USAA",
    "skills": "excel"
  },
  {
    "job_id": 106225,
    "job_title": "Business Strategy Analyst Senior (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "USAA",
    "skills": "tableau"
  },
  {
    "job_id": 106225,
    "job_title": "Business Strategy Analyst Senior (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "USAA",
    "skills": "sas"
  },
  {
    "job_id": 661103,
    "job_title": "Marketing Analytics Manager",
    "salary_year_avg": "134550.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "tableau"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR CLOUD ENGINEER___
[
  {
    "job_id": 26505,
    "job_title": "Lead Engineer, Test Infrastructure",
    "salary_year_avg": "204000.0",
    "company_name": "MongoDB",
    "skills": "python"
  },
  {
    "job_id": 26505,
    "job_title": "Lead Engineer, Test Infrastructure",
    "salary_year_avg": "204000.0",
    "company_name": "MongoDB",
    "skills": "java"
  },
  {
    "job_id": 26505,
    "job_title": "Lead Engineer, Test Infrastructure",
    "salary_year_avg": "204000.0",
    "company_name": "MongoDB",
    "skills": "go"
  },
  {
    "job_id": 26505,
    "job_title": "Lead Engineer, Test Infrastructure",
    "salary_year_avg": "204000.0",
    "company_name": "MongoDB",
    "skills": "c++"
  },
  {
    "job_id": 26505,
    "job_title": "Lead Engineer, Test Infrastructure",
    "salary_year_avg": "204000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 26505,
    "job_title": "Lead Engineer, Test Infrastructure",
    "salary_year_avg": "204000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1743693,
    "job_title": "Staff Engineer, Service Architecture",
    "salary_year_avg": "197500.0",
    "company_name": "MongoDB",
    "skills": "c++"
  },
  {
    "job_id": 1743693,
    "job_title": "Staff Engineer, Service Architecture",
    "salary_year_avg": "197500.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1743693,
    "job_title": "Staff Engineer, Service Architecture",
    "salary_year_avg": "197500.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "linux"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "gcp"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "python"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "java"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "go"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "javascript"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "azure"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "kubernetes"
  },
  {
    "job_id": 221257,
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "salary_year_avg": "182500.0",
    "company_name": "MongoDB",
    "skills": "splunk"
  },
  {
    "job_id": 1380951,
    "job_title": "Senior Mobile Engineer",
    "salary_year_avg": "180000.0",
    "company_name": "Rune Labs",
    "skills": "swift"
  },
  {
    "job_id": 451674,
    "job_title": "Server Engineer",
    "salary_year_avg": "140000.0",
    "company_name": "Ascendion",
    "skills": "linux"
  },
  {
    "job_id": 451674,
    "job_title": "Server Engineer",
    "salary_year_avg": "140000.0",
    "company_name": "Ascendion",
    "skills": "c++"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "python"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "go"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "elasticsearch"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "aws"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "gcp"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "spark"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "pyspark"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "kafka"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "docker"
  },
  {
    "job_id": 815908,
    "job_title": "Senior Infrastructure Engineer",
    "salary_year_avg": "120000.0",
    "company_name": "Egen",
    "skills": "sql"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "sql"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "azure"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "aws"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "bigquery"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "redshift"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "snowflake"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "gcp"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "airflow"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "tableau"
  },
  {
    "job_id": 526608,
    "job_title": "Customer Success Engineer",
    "salary_year_avg": "110000.0",
    "company_name": "Bigeye",
    "skills": "looker"
  },
  {
    "job_id": 425496,
    "job_title": "Customer Engineer, Computer Vision",
    "salary_year_avg": "100000.0",
    "company_name": "Scaleai",
    "skills": "typescript"
  },
  {
    "job_id": 425496,
    "job_title": "Customer Engineer, Computer Vision",
    "salary_year_avg": "100000.0",
    "company_name": "Scaleai",
    "skills": "python"
  },
  {
    "job_id": 1436913,
    "job_title": "Cloud Engineer",
    "salary_year_avg": "90000.0",
    "company_name": "Zyreoneconsulting LLC",
    "skills": "aws"
  },
  {
    "job_id": 1436913,
    "job_title": "Cloud Engineer",
    "salary_year_avg": "90000.0",
    "company_name": "Zyreoneconsulting LLC",
    "skills": "python"
  },
  {
    "job_id": 1436913,
    "job_title": "Cloud Engineer",
    "salary_year_avg": "90000.0",
    "company_name": "Zyreoneconsulting LLC",
    "skills": "docker"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR DATA ANALYST___
[
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "sql"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "python"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "r"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "azure"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "databricks"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "aws"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "pandas"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "pyspark"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "jupyter"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "excel"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "tableau"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "power bi"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "powerpoint"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "sql"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "python"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "r"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "hadoop"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "sql"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "crystal"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "oracle"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "flow"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "sql"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "python"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "go"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "snowflake"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "pandas"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "numpy"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "excel"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "tableau"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "gitlab"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "sql"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "python"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "azure"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "aws"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "oracle"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "snowflake"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "tableau"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "power bi"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "sap"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "jenkins"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "bitbucket"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "atlassian"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "jira"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "confluence"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "sql"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "python"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "r"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "git"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "bitbucket"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "atlassian"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "jira"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "confluence"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "sql"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "python"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "go"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "snowflake"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "pandas"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "numpy"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "excel"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "tableau"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "gitlab"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "salary_year_avg": "184000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "salary_year_avg": "184000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "salary_year_avg": "184000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR SENIOR DATA ANALYST___
[
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "python"
  },
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "html"
  },
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "css"
  },
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "aws"
  },
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "keras"
  },
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "angular"
  },
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "flask"
  },
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "fastapi"
  },
  {
    "job_id": 1638595,
    "job_title": "Senior Data Analyst",
    "salary_year_avg": "185000.0",
    "company_name": "Patterned Learning AI",
    "skills": "windows"
  },
  {
    "job_id": 1501155,
    "job_title": "Senior Applied Scientist - Delivery",
    "salary_year_avg": "184000.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1501155,
    "job_title": "Senior Applied Scientist - Delivery",
    "salary_year_avg": "184000.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1501155,
    "job_title": "Senior Applied Scientist - Delivery",
    "salary_year_avg": "184000.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 564064,
    "job_title": "Sr Applied Scientist, Special Projects",
    "salary_year_avg": "184000.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 564064,
    "job_title": "Sr Applied Scientist, Special Projects",
    "salary_year_avg": "184000.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 813346,
    "job_title": "Senior Data Analyst, GTM (South Bay, CA or Remote)",
    "salary_year_avg": "181000.0",
    "company_name": "Zoom Video Communications",
    "skills": "sql"
  },
  {
    "job_id": 813346,
    "job_title": "Senior Data Analyst, GTM (South Bay, CA or Remote)",
    "salary_year_avg": "181000.0",
    "company_name": "Zoom Video Communications",
    "skills": "python"
  },
  {
    "job_id": 813346,
    "job_title": "Senior Data Analyst, GTM (South Bay, CA or Remote)",
    "salary_year_avg": "181000.0",
    "company_name": "Zoom Video Communications",
    "skills": "r"
  },
  {
    "job_id": 813346,
    "job_title": "Senior Data Analyst, GTM (South Bay, CA or Remote)",
    "salary_year_avg": "181000.0",
    "company_name": "Zoom Video Communications",
    "skills": "tableau"
  },
  {
    "job_id": 813346,
    "job_title": "Senior Data Analyst, GTM (South Bay, CA or Remote)",
    "salary_year_avg": "181000.0",
    "company_name": "Zoom Video Communications",
    "skills": "jira"
  },
  {
    "job_id": 813346,
    "job_title": "Senior Data Analyst, GTM (South Bay, CA or Remote)",
    "salary_year_avg": "181000.0",
    "company_name": "Zoom Video Communications",
    "skills": "zoom"
  },
  {
    "job_id": 511999,
    "job_title": "Senior Data Analyst, Bot Management and Anti-Fraud",
    "salary_year_avg": "178500.0",
    "company_name": "Fastly",
    "skills": "sql"
  },
  {
    "job_id": 511999,
    "job_title": "Senior Data Analyst, Bot Management and Anti-Fraud",
    "salary_year_avg": "178500.0",
    "company_name": "Fastly",
    "skills": "python"
  },
  {
    "job_id": 511999,
    "job_title": "Senior Data Analyst, Bot Management and Anti-Fraud",
    "salary_year_avg": "178500.0",
    "company_name": "Fastly",
    "skills": "scala"
  },
  {
    "job_id": 511999,
    "job_title": "Senior Data Analyst, Bot Management and Anti-Fraud",
    "salary_year_avg": "178500.0",
    "company_name": "Fastly",
    "skills": "javascript"
  },
  {
    "job_id": 511999,
    "job_title": "Senior Data Analyst, Bot Management and Anti-Fraud",
    "salary_year_avg": "178500.0",
    "company_name": "Fastly",
    "skills": "golang"
  },
  {
    "job_id": 511999,
    "job_title": "Senior Data Analyst, Bot Management and Anti-Fraud",
    "salary_year_avg": "178500.0",
    "company_name": "Fastly",
    "skills": "rust"
  },
  {
    "job_id": 511999,
    "job_title": "Senior Data Analyst, Bot Management and Anti-Fraud",
    "salary_year_avg": "178500.0",
    "company_name": "Fastly",
    "skills": "bigquery"
  },
  {
    "job_id": 511999,
    "job_title": "Senior Data Analyst, Bot Management and Anti-Fraud",
    "salary_year_avg": "178500.0",
    "company_name": "Fastly",
    "skills": "spark"
  },
  {
    "job_id": 511999,
    "job_title": "Senior Data Analyst, Bot Management and Anti-Fraud",
    "salary_year_avg": "178500.0",
    "company_name": "Fastly",
    "skills": "jupyter"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR DATA ENGINEER___
[
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "python"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "spark"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "pandas"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "numpy"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "pyspark"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "hadoop"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "kafka"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "kubernetes"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "python"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "spark"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "pandas"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "numpy"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "pyspark"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "hadoop"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "kafka"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills": "kubernetes"
  },
  {
    "job_id": 270455,
    "job_title": "Data Engineer",
    "salary_year_avg": "300000.0",
    "company_name": "Durlston Partners",
    "skills": "sql"
  },
  {
    "job_id": 270455,
    "job_title": "Data Engineer",
    "salary_year_avg": "300000.0",
    "company_name": "Durlston Partners",
    "skills": "python"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills": "spark"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills": "hadoop"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills": "kafka"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills": "tensorflow"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills": "keras"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills": "pytorch"
  },
  {
    "job_id": 561728,
    "job_title": "Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "AI Startup",
    "skills": "python"
  },
  {
    "job_id": 561728,
    "job_title": "Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "AI Startup",
    "skills": "scala"
  },
  {
    "job_id": 561728,
    "job_title": "Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "AI Startup",
    "skills": "r"
  },
  {
    "job_id": 561728,
    "job_title": "Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "AI Startup",
    "skills": "azure"
  },
  {
    "job_id": 595768,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills": "python"
  },
  {
    "job_id": 595768,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills": "scala"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR SENIOR DATA ENGINEER___
[
  {
    "job_id": 125352,
    "job_title": "Senior Staff Engineer, Insights and Telemetry (InTel)",
    "salary_year_avg": "240000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 125352,
    "job_title": "Senior Staff Engineer, Insights and Telemetry (InTel)",
    "salary_year_avg": "240000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "python"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "nosql"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "java"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "shell"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "javascript"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "cassandra"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "azure"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "aws"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "spark"
  },
  {
    "job_id": 9791,
    "job_title": "Senior Lead Data Engineer (Remote-Eligible)",
    "salary_year_avg": "236500.0",
    "company_name": "Capital One",
    "skills": "kafka"
  },
  {
    "job_id": 236847,
    "job_title": "Senior Data Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Cybernetic Search",
    "skills": "python"
  },
  {
    "job_id": 236847,
    "job_title": "Senior Data Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Cybernetic Search",
    "skills": "mongodb"
  },
  {
    "job_id": 236847,
    "job_title": "Senior Data Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Cybernetic Search",
    "skills": "mongodb"
  },
  {
    "job_id": 236847,
    "job_title": "Senior Data Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Cybernetic Search",
    "skills": "azure"
  },
  {
    "job_id": 236847,
    "job_title": "Senior Data Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Cybernetic Search",
    "skills": "aws"
  },
  {
    "job_id": 1260479,
    "job_title": "Senior Staff Engineer, Insights and Telemetry (InTel)",
    "salary_year_avg": "224000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1260479,
    "job_title": "Senior Staff Engineer, Insights and Telemetry (InTel)",
    "salary_year_avg": "224000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1622062,
    "job_title": "Senior Staff Engineer, Insights and Telemetry (InTel)",
    "salary_year_avg": "224000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1622062,
    "job_title": "Senior Staff Engineer, Insights and Telemetry (InTel)",
    "salary_year_avg": "224000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 633388,
    "job_title": "Senior Manager of Data Engineering",
    "salary_year_avg": "220000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 633388,
    "job_title": "Senior Manager of Data Engineering",
    "salary_year_avg": "220000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 633388,
    "job_title": "Senior Manager of Data Engineering",
    "salary_year_avg": "220000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "aws"
  },
  {
    "job_id": 633388,
    "job_title": "Senior Manager of Data Engineering",
    "salary_year_avg": "220000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "redshift"
  },
  {
    "job_id": 633388,
    "job_title": "Senior Manager of Data Engineering",
    "salary_year_avg": "220000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 633388,
    "job_title": "Senior Manager of Data Engineering",
    "salary_year_avg": "220000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "airflow"
  },
  {
    "job_id": 633388,
    "job_title": "Senior Manager of Data Engineering",
    "salary_year_avg": "220000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "github"
  },
  {
    "job_id": 633388,
    "job_title": "Senior Manager of Data Engineering",
    "salary_year_avg": "220000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "jira"
  },
  {
    "job_id": 633388,
    "job_title": "Senior Manager of Data Engineering",
    "salary_year_avg": "220000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "confluence"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR DATA SCIENTIST___
[
  {
    "job_id": 40145,
    "job_title": "Staff Data Scientist/Quant Researcher",
    "salary_year_avg": "550000.0",
    "company_name": "Selby Jennings",
    "skills": "sql"
  },
  {
    "job_id": 40145,
    "job_title": "Staff Data Scientist/Quant Researcher",
    "salary_year_avg": "550000.0",
    "company_name": "Selby Jennings",
    "skills": "python"
  },
  {
    "job_id": 1714768,
    "job_title": "Staff Data Scientist - Business Analytics",
    "salary_year_avg": "525000.0",
    "company_name": "Selby Jennings",
    "skills": "sql"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "sql"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "python"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "java"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "cassandra"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "spark"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "hadoop"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "tableau"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "salary_year_avg": "320000.0",
    "company_name": "Teramind",
    "skills": "azure"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "salary_year_avg": "320000.0",
    "company_name": "Teramind",
    "skills": "aws"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "salary_year_avg": "320000.0",
    "company_name": "Teramind",
    "skills": "tensorflow"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "salary_year_avg": "320000.0",
    "company_name": "Teramind",
    "skills": "keras"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "salary_year_avg": "320000.0",
    "company_name": "Teramind",
    "skills": "pytorch"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "salary_year_avg": "320000.0",
    "company_name": "Teramind",
    "skills": "scikit-learn"
  },
  {
    "job_id": 126218,
    "job_title": "Director Level - Product Management - Data Science",
    "salary_year_avg": "320000.0",
    "company_name": "Teramind",
    "skills": "datarobot"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "salary_year_avg": "300000.0",
    "company_name": "Walmart",
    "skills": "scala"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "salary_year_avg": "300000.0",
    "company_name": "Walmart",
    "skills": "java"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "salary_year_avg": "300000.0",
    "company_name": "Walmart",
    "skills": "spark"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "salary_year_avg": "300000.0",
    "company_name": "Walmart",
    "skills": "tensorflow"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "salary_year_avg": "300000.0",
    "company_name": "Walmart",
    "skills": "pytorch"
  },
  {
    "job_id": 226011,
    "job_title": "Distinguished Data Scientist",
    "salary_year_avg": "300000.0",
    "company_name": "Walmart",
    "skills": "kubernetes"
  },
  {
    "job_id": 457991,
    "job_title": "Head of Battery Data Science",
    "salary_year_avg": "300000.0",
    "company_name": "Lawrence Harvey",
    "skills": "python"
  },
  {
    "job_id": 457991,
    "job_title": "Head of Battery Data Science",
    "salary_year_avg": "300000.0",
    "company_name": "Lawrence Harvey",
    "skills": "aws"
  },
  {
    "job_id": 457991,
    "job_title": "Head of Battery Data Science",
    "salary_year_avg": "300000.0",
    "company_name": "Lawrence Harvey",
    "skills": "gcp"
  },
  {
    "job_id": 129924,
    "job_title": "Director of Data Science",
    "salary_year_avg": "300000.0",
    "company_name": "Storm4",
    "skills": "python"
  },
  {
    "job_id": 129924,
    "job_title": "Director of Data Science",
    "salary_year_avg": "300000.0",
    "company_name": "Storm4",
    "skills": "pandas"
  },
  {
    "job_id": 129924,
    "job_title": "Director of Data Science",
    "salary_year_avg": "300000.0",
    "company_name": "Storm4",
    "skills": "numpy"
  },
  {
    "job_id": 38905,
    "job_title": "Principal Data Scientist",
    "salary_year_avg": "300000.0",
    "company_name": "Storm5",
    "skills": "sql"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR SENIOR DATA SCIENTIST___
[
  {
    "job_id": 627602,
    "job_title": "Senior Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "sql"
  },
  {
    "job_id": 627602,
    "job_title": "Senior Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "python"
  },
  {
    "job_id": 627602,
    "job_title": "Senior Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "java"
  },
  {
    "job_id": 627602,
    "job_title": "Senior Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "c++"
  },
  {
    "job_id": 627602,
    "job_title": "Senior Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "cassandra"
  },
  {
    "job_id": 627602,
    "job_title": "Senior Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "spark"
  },
  {
    "job_id": 627602,
    "job_title": "Senior Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "hadoop"
  },
  {
    "job_id": 627602,
    "job_title": "Senior Data Scientist",
    "salary_year_avg": "375000.0",
    "company_name": "Algo Capital Group",
    "skills": "tableau"
  },
  {
    "job_id": 1118358,
    "job_title": "Sr. Staff Tech Lead, Core ML Data Science",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "python"
  },
  {
    "job_id": 1118358,
    "job_title": "Sr. Staff Tech Lead, Core ML Data Science",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "scala"
  },
  {
    "job_id": 1118358,
    "job_title": "Sr. Staff Tech Lead, Core ML Data Science",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "java"
  },
  {
    "job_id": 1118358,
    "job_title": "Sr. Staff Tech Lead, Core ML Data Science",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "c++"
  },
  {
    "job_id": 1118358,
    "job_title": "Sr. Staff Tech Lead, Core ML Data Science",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "spark"
  },
  {
    "job_id": 1118358,
    "job_title": "Sr. Staff Tech Lead, Core ML Data Science",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "airflow"
  },
  {
    "job_id": 1118358,
    "job_title": "Sr. Staff Tech Lead, Core ML Data Science",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "tensorflow"
  },
  {
    "job_id": 1118358,
    "job_title": "Sr. Staff Tech Lead, Core ML Data Science",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "pytorch"
  },
  {
    "job_id": 223269,
    "job_title": "Senior Staff Data Scientist - Inference, Marketing Technology",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "sql"
  },
  {
    "job_id": 223269,
    "job_title": "Senior Staff Data Scientist - Inference, Marketing Technology",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "python"
  },
  {
    "job_id": 223269,
    "job_title": "Senior Staff Data Scientist - Inference, Marketing Technology",
    "salary_year_avg": "245000.0",
    "company_name": "Airbnb",
    "skills": "r"
  },
  {
    "job_id": 666561,
    "job_title": "Senior Data Scientist (Remote)",
    "salary_year_avg": "235000.0",
    "company_name": "Movable Ink",
    "skills": "python"
  },
  {
    "job_id": 666561,
    "job_title": "Senior Data Scientist (Remote)",
    "salary_year_avg": "235000.0",
    "company_name": "Movable Ink",
    "skills": "r"
  },
  {
    "job_id": 666561,
    "job_title": "Senior Data Scientist (Remote)",
    "salary_year_avg": "235000.0",
    "company_name": "Movable Ink",
    "skills": "bigquery"
  },
  {
    "job_id": 666561,
    "job_title": "Senior Data Scientist (Remote)",
    "salary_year_avg": "235000.0",
    "company_name": "Movable Ink",
    "skills": "tensorflow"
  },
  {
    "job_id": 666561,
    "job_title": "Senior Data Scientist (Remote)",
    "salary_year_avg": "235000.0",
    "company_name": "Movable Ink",
    "skills": "pytorch"
  },
  {
    "job_id": 666561,
    "job_title": "Senior Data Scientist (Remote)",
    "salary_year_avg": "235000.0",
    "company_name": "Movable Ink",
    "skills": "scikit-learn"
  },
  {
    "job_id": 666561,
    "job_title": "Senior Data Scientist (Remote)",
    "salary_year_avg": "235000.0",
    "company_name": "Movable Ink",
    "skills": "tableau"
  },
  {
    "job_id": 666561,
    "job_title": "Senior Data Scientist (Remote)",
    "salary_year_avg": "235000.0",
    "company_name": "Movable Ink",
    "skills": "looker"
  },
  {
    "job_id": 499503,
    "job_title": "Industry Senior Principal Sales Engineer, Data Science",
    "salary_year_avg": "230625.0",
    "company_name": "Snowflake",
    "skills": "snowflake"
  },
  {
    "job_id": 1197837,
    "job_title": "Senior Director, Data Science - Property",
    "salary_year_avg": "230400.5",
    "company_name": "Liberty Mutual Insurance",
    "skills": "sql"
  },
  {
    "job_id": 1197837,
    "job_title": "Senior Director, Data Science - Property",
    "salary_year_avg": "230400.5",
    "company_name": "Liberty Mutual Insurance",
    "skills": "python"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR MACHINE LEARNING ENGINEER___
[
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "sql"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "python"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "airflow"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "spark"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "kubernetes"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "gcp"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "aws"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "java"
  },
  {
    "job_id": 1352714,
    "job_title": "Principal Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Storm5",
    "skills": "docker"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "python"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "ansible"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "chef"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "docker"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "kubernetes"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "terraform"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "excel"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "aws"
  },
  {
    "job_id": 1480102,
    "job_title": "Senior Machine Learning Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Harnham",
    "skills": "scala"
  },
  {
    "job_id": 901491,
    "job_title": "Machine Learning Engineer",
    "salary_year_avg": "300000.0",
    "company_name": "orbit",
    "skills": "typescript"
  },
  {
    "job_id": 901491,
    "job_title": "Machine Learning Engineer",
    "salary_year_avg": "300000.0",
    "company_name": "orbit",
    "skills": "python"
  },
  {
    "job_id": 901491,
    "job_title": "Machine Learning Engineer",
    "salary_year_avg": "300000.0",
    "company_name": "orbit",
    "skills": "golang"
  },
  {
    "job_id": 751285,
    "job_title": "Machine Learning Researcher",
    "salary_year_avg": "262500.0",
    "company_name": "Acceler8 Talent",
    "skills": "excel"
  },
  {
    "job_id": 589335,
    "job_title": "Principal Machine Learning Research Scientist (Deep Learning)",
    "salary_year_avg": "262500.0",
    "company_name": "Acceler8 Talent",
    "skills": "excel"
  },
  {
    "job_id": 589335,
    "job_title": "Principal Machine Learning Research Scientist (Deep Learning)",
    "salary_year_avg": "262500.0",
    "company_name": "Acceler8 Talent",
    "skills": "python"
  },
  {
    "job_id": 751285,
    "job_title": "Machine Learning Researcher",
    "salary_year_avg": "262500.0",
    "company_name": "Acceler8 Talent",
    "skills": "python"
  },
  {
    "job_id": 367792,
    "job_title": "Director of Engineering, ML Platform",
    "salary_year_avg": "249000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 367792,
    "job_title": "Director of Engineering, ML Platform",
    "salary_year_avg": "249000.0",
    "company_name": "MongoDB",
    "skills": "python"
  },
  {
    "job_id": 367792,
    "job_title": "Director of Engineering, ML Platform",
    "salary_year_avg": "249000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 67310,
    "job_title": "Machine Learning Engineer",
    "salary_year_avg": "240000.0",
    "company_name": "Acceler8 Talent",
    "skills": "tensorflow"
  },
  {
    "job_id": 67310,
    "job_title": "Machine Learning Engineer",
    "salary_year_avg": "240000.0",
    "company_name": "Acceler8 Talent",
    "skills": "pytorch"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR SOFTWARE ENGINEER___
[
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Datavant",
    "skills": "python"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Datavant",
    "skills": "javascript"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Datavant",
    "skills": "typescript"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Datavant",
    "skills": "azure"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Datavant",
    "skills": "aws"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Datavant",
    "skills": "snowflake"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Datavant",
    "skills": "spark"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "salary_year_avg": "225000.0",
    "company_name": "Datavant",
    "skills": "react"
  },
  {
    "job_id": 365528,
    "job_title": "Engineering",
    "salary_year_avg": "205000.0",
    "company_name": "Huckleberry Labs",
    "skills": "python"
  },
  {
    "job_id": 365528,
    "job_title": "Engineering",
    "salary_year_avg": "205000.0",
    "company_name": "Huckleberry Labs",
    "skills": "aws"
  },
  {
    "job_id": 365528,
    "job_title": "Engineering",
    "salary_year_avg": "205000.0",
    "company_name": "Huckleberry Labs",
    "skills": "gcp"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "python"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "elasticsearch"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "dynamodb"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "aws"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "snowflake"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "pandas"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "airflow"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "react"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "graphql"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "salary_year_avg": "205000.0",
    "company_name": "SmarterDx",
    "skills": "node.js"
  },
  {
    "job_id": 1231528,
    "job_title": "Senior Software Engineer, Server Security",
    "salary_year_avg": "200000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1231528,
    "job_title": "Senior Software Engineer, Server Security",
    "salary_year_avg": "200000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1398776,
    "job_title": "Senior Software Engineer, Cluster Scalability",
    "salary_year_avg": "200000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1398776,
    "job_title": "Senior Software Engineer, Cluster Scalability",
    "salary_year_avg": "200000.0",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 64759,
    "job_title": "Senior Ruby Engineer - Analytics Platform - $190-210k+",
    "salary_year_avg": "200000.0",
    "company_name": "Orbis",
    "skills": "typescript"
  },
  {
    "job_id": 64759,
    "job_title": "Senior Ruby Engineer - Analytics Platform - $190-210k+",
    "salary_year_avg": "200000.0",
    "company_name": "Orbis",
    "skills": "ruby"
  },
  {
    "job_id": 64759,
    "job_title": "Senior Ruby Engineer - Analytics Platform - $190-210k+",
    "salary_year_avg": "200000.0",
    "company_name": "Orbis",
    "skills": "ruby"
  },
  {
    "job_id": 946351,
    "job_title": "Staff Frontend Engineer",
    "salary_year_avg": "191000.0",
    "company_name": "Webflow",
    "skills": "javascript"
  },
  {
    "job_id": 946351,
    "job_title": "Staff Frontend Engineer",
    "salary_year_avg": "191000.0",
    "company_name": "Webflow",
    "skills": "css"
  }
]

 **/