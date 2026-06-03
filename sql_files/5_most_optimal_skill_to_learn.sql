with high_demand AS (
    SELECT
        skills_dim.skill_id,
        skills_dim.skills, 
        count(skills_job_dim.job_id) job_amount_per_skill
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
    where 
        job_title_short = 'Data Engineer'
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home IS true --delete mb
    GROUP by skills_dim.skill_id
), top_paid AS (
    SELECT
        skills_dim.skill_id,
        ROUND(AVG(salary_year_avg), 0) avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Data Engineer'
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home IS true --delete mb
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

/**
___FOR DATA ENGINEER___
Top contenders

_Python
535 job postings (highest demand)
$132,200 average salary
Most versatile skill in the list
Used in data engineering, analytics, ML, automation, and cloud

_AWS
367 postings
$132,865 average salary
Core cloud platform
Appears in a huge number of high-paying roles

_Spark
237 postings
$139,838 average salary
Strong salary and strong demand
Core technology for big data processing

_Snowflake
202 postings
$134,373 average salary
One of the strongest modern data platform skills
Excellent salary-to-demand balance

_Kafka
134 postings
$150,549 average salary
Outstanding combination of demand and compensation
Common in senior data engineering and platform engineering roles
Best skill by category

Highest salary: Kubernetes ($158,190)

Highest demand: Python (535 postings)

Best balance of salary and demand: Kafka

Why Kafka stands out:
Salary is nearly $151k (much higher than Python, AWS, Snowflake)
Demand is still substantial (134 postings)
Often required in advanced data engineering and distributed systems roles
Signals expertise beyond entry-level data engineering



=====================================================================================

___DATA ENGINEER OUTPUT___
[
  {
    "skill_id": 213,
    "skills": "kubernetes",
    "job_amount_per_skill": "56",
    "avg_salary": "158190"
  },
  {
    "skill_id": 98,
    "skills": "kafka",
    "job_amount_per_skill": "134",
    "avg_salary": "150549"
  },
  {
    "skill_id": 212,
    "skills": "terraform",
    "job_amount_per_skill": "44",
    "avg_salary": "146057"
  },
  {
    "skill_id": 93,
    "skills": "pandas",
    "job_amount_per_skill": "38",
    "avg_salary": "144656"
  },
  {
    "skill_id": 59,
    "skills": "elasticsearch",
    "job_amount_per_skill": "21",
    "avg_salary": "144102"
  },
  {
    "skill_id": 3,
    "skills": "scala",
    "job_amount_per_skill": "113",
    "avg_salary": "141777"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "237",
    "avg_salary": "139838"
  },
  {
    "skill_id": 95,
    "skills": "pyspark",
    "job_amount_per_skill": "64",
    "avg_salary": "139428"
  },
  {
    "skill_id": 64,
    "skills": "dynamodb",
    "job_amount_per_skill": "27",
    "avg_salary": "138883"
  },
  {
    "skill_id": 62,
    "skills": "mongodb",
    "job_amount_per_skill": "32",
    "avg_salary": "138569"
  },
  {
    "skill_id": 18,
    "skills": "mongodb",
    "job_amount_per_skill": "32",
    "avg_salary": "138569"
  },
  {
    "skill_id": 96,
    "skills": "airflow",
    "job_amount_per_skill": "151",
    "avg_salary": "138518"
  },
  {
    "skill_id": 4,
    "skills": "java",
    "job_amount_per_skill": "139",
    "avg_salary": "138087"
  },
  {
    "skill_id": 97,
    "skills": "hadoop",
    "job_amount_per_skill": "98",
    "avg_salary": "137707"
  },
  {
    "skill_id": 2,
    "skills": "nosql",
    "job_amount_per_skill": "93",
    "avg_salary": "136430"
  },
  {
    "skill_id": 6,
    "skills": "shell",
    "job_amount_per_skill": "34",
    "avg_salary": "135499"
  },
  {
    "skill_id": 185,
    "skills": "looker",
    "job_amount_per_skill": "30",
    "avg_salary": "134614"
  },
  {
    "skill_id": 80,
    "skills": "snowflake",
    "job_amount_per_skill": "202",
    "avg_salary": "134373"
  },
  {
    "skill_id": 12,
    "skills": "bash",
    "job_amount_per_skill": "25",
    "avg_salary": "134315"
  },
  {
    "skill_id": 214,
    "skills": "docker",
    "job_amount_per_skill": "64",
    "avg_salary": "134286"
  },
  {
    "skill_id": 81,
    "skills": "gcp",
    "job_amount_per_skill": "76",
    "avg_salary": "133388"
  },
  {
    "skill_id": 211,
    "skills": "jenkins",
    "job_amount_per_skill": "26",
    "avg_salary": "133017"
  },
  {
    "skill_id": 78,
    "skills": "redshift",
    "job_amount_per_skill": "141",
    "avg_salary": "132980"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "367",
    "avg_salary": "132865"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "535",
    "avg_salary": "132200"
  }
]
**/

