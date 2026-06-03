with home_jobs as (
    select job_id
    from job_postings_fact
    where 
        job_work_from_home IS true and
        --job_title like '%Data%'
        job_title_short = 'Cloud Engineer'
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

/**
___CLOUD ENGINEER___
Skill Ranking (!!!NB: jobs from home!!!):
1. Python (203)
2. AWS (190)
3. SQL (163)
4. Azure (130)
5. Kubernetes (94)

The ranking reveals three major themes:

Automation first: Python leads all skills, indicating that scripting and automation are fundamental to cloud engineering.
Cloud platform expertise is essential: AWS and Azure occupy two of the top four positions, showing that cloud providers remain the backbone of the profession.
Cloud-native operations are growing: Kubernetes' strong showing reflects increasing demand for container orchestration and scalable application management.

Overall, the ideal Cloud Engineer profile combines Python for automation, AWS/Azure for infrastructure management, 
SQL for data interaction, and Kubernetes for cloud-native deployment and orchestration. 
This combination aligns closely with the skills most frequently requested by employers.



==============================

___CLOUD ENGINEER OUTPUT___
[
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "203"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "190"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "163"
  },
  {
    "skill_id": 74,
    "skills": "azure",
    "job_amount_per_skill": "130"
  },
  {
    "skill_id": 213,
    "skills": "kubernetes",
    "job_amount_per_skill": "94"
  }
]
**/