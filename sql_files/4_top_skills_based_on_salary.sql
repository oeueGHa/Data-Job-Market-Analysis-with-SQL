SELECT
    --job_postings_fact.job_id,
    skills,
    ROUND(AVG(salary_year_avg), 0) avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Engineer'
    AND salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 25

/**
___FOR DATA ENGINEER___
The strongest salary premiums are attached to skills that fall into one of three categories:

_Specialized backend engineering:
Node.js
MongoDB
Cassandra

_Distributed systems & cloud infrastructure:
Kafka
Kubernetes
Ubuntu
IBM Cloud

_Advanced analytics & emerging technologies:
ggplot2
NumPy
OpenCV
Solidity

Overall, this dataset suggests that salary growth comes less from learning common tools and more
from developing expertise in specialized domains where qualified talent is harder to find.



=============================================

___DATA ENGINEEER OUTPUT___
[
  {
    "skills": "node",
    "avg_salary": "181862"
  },
  {
    "skills": "mongo",
    "avg_salary": "179403"
  },
  {
    "skills": "ggplot2",
    "avg_salary": "176250"
  },
  {
    "skills": "solidity",
    "avg_salary": "166250"
  },
  {
    "skills": "vue",
    "avg_salary": "159375"
  },
  {
    "skills": "codecommit",
    "avg_salary": "155000"
  },
  {
    "skills": "ubuntu",
    "avg_salary": "154455"
  },
  {
    "skills": "clojure",
    "avg_salary": "153663"
  },
  {
    "skills": "cassandra",
    "avg_salary": "150255"
  },
  {
    "skills": "rust",
    "avg_salary": "147771"
  },
  {
    "skills": "drupal",
    "avg_salary": "147500"
  },
  {
    "skills": "perl",
    "avg_salary": "145540"
  },
  {
    "skills": "next.js",
    "avg_salary": "145000"
  },
  {
    "skills": "angular",
    "avg_salary": "143319"
  },
  {
    "skills": "scala",
    "avg_salary": "143161"
  },
  {
    "skills": "kafka",
    "avg_salary": "143086"
  },
  {
    "skills": "gdpr",
    "avg_salary": "142369"
  },
  {
    "skills": "shell",
    "avg_salary": "141725"
  },
  {
    "skills": "macos",
    "avg_salary": "141617"
  },
  {
    "skills": "numpy",
    "avg_salary": "141605"
  },
  {
    "skills": "opencv",
    "avg_salary": "141250"
  },
  {
    "skills": "atlassian",
    "avg_salary": "140644"
  },
  {
    "skills": "ibm cloud",
    "avg_salary": "140547"
  },
  {
    "skills": "splunk",
    "avg_salary": "140156"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "140092"
  }
]
**/