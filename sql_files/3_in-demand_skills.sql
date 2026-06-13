with home_jobs as (
    select job_id
    from job_postings_fact
    where 
        job_work_from_home IS true and
        --job_title like '%Data%'
        job_title_short = 'Data Analyst'
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
 (!!!NB: jobs from home!!!)

___FOR BUSINESS ANALYST___
  Skill Ranking:
  SQL (1,266)
  Excel (983)
  Tableau (728)
  Power BI (555)
  Python (546)

  The ranking reveals three major themes:

  Data querying remains the foundation: SQL dominates all other skills, highlighting its role as the primary 
  language for extracting, transforming, and analyzing data across organizations.

  Business intelligence is highly valued: Tableau and Power BI both appear in the top five, 
  demonstrating strong employer demand for professionals who can transform raw data into dashboards, reports, and actionable insights.

  Technical and business skills must coexist: While Excel remains a core business tool, 
  Python's presence shows that employers increasingly seek analysts who can complement 
  traditional spreadsheet work with automation, advanced analytics, and data processing capabilities.



___CLOUD ENGINEER___
  Skill Ranking:
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



___FOR DATA ANALYST___
  Skill Ranking:
  SQL (7,291)
  Excel (4,611)
  Python (4,330)
  Tableau (3,745)
  Power BI (2,609)

  The ranking shows three key themes:

  SQL is the dominant baseline skill: With a significant lead over all other skills, SQL remains the most in-demand capability, confirming that data extraction and querying are at the center of almost every data-related role.

  A strong analytics toolkit sits in the middle tier: Excel and Python are closely grouped after SQL, showing a balance between traditional business analysis (Excel) and more advanced, programmable data workflows (Python).

  Visualization tools are essential but secondary: Tableau and Power BI round out the list, indicating that while dashboarding and reporting are critical, they typically come after core data handling and analysis skills.



___FOR SENIOR DATA ANALYST___
  Skill Ranking:
  SQL (1,724)
  Python (1,054)
  Tableau (999)
  Excel (700)
  R (514)

  The ranking reveals three major themes:

  Data manipulation is the core competency: SQL leads by a significant margin, emphasizing that the ability to access, 
  clean, and manage data remains fundamental across analytical roles.

  Programming skills are increasingly important: Python and R both rank in the top five, indicating strong demand for 
  professionals who can perform statistical analysis, automate workflows, and handle complex data tasks beyond traditional business intelligence tools.

  Data storytelling drives business value: Tableau’s prominent position highlights the importance of transforming 
  analytical findings into clear visualizations that support decision-making and communicate insights effectively.



___FOR DATA ENGINEER___
  Skill Ranking:
  SQL (14,213)
  Python (13,893)
  AWS (8,570)
  Azure (6,997)
  Spark (6,612)

  The ranking reveals three major themes:

  Data engineering is built on data processing fundamentals: SQL and Python lead the ranking by a wide margin, 
  showing that efficient data manipulation, transformation, and automation are at the heart of modern data engineering 
  workflows.

  Cloud expertise has become a standard requirement: AWS and Azure occupy two of the top five positions, reflecting 
  the industry's shift toward cloud-based data platforms, storage solutions, and scalable infrastructure.

  Big data technologies remain critical: Spark's strong presence demonstrates the continued importance of distributed data
  processing and large-scale analytics as organizations handle ever-growing volumes of data.



___FOR SENIOR DATA ENGINEER___
  Skill Ranking:
  Python (4,604)
  SQL (4,488)
  AWS (3,367)
  Spark (2,423)
  Azure (2,240)

  The ranking reveals three major themes:

  Programming is now the leading entry point: Python slightly surpasses SQL, showing that modern data roles increasingly 
  prioritize scripting, automation, and end-to-end workflow development over pure querying tasks.

  Core data infrastructure skills remain tightly clustered: SQL, AWS, and Azure all sit close together in demand, 
  indicating that employers expect candidates to be comfortable working across both relational databases and cloud 
  environments without sharp specialization gaps.

  Distributed processing is a key differentiator: Spark’s presence in the top five confirms that large-scale data 
  handling and distributed computing capabilities are still important for more advanced or production-level data roles.



___FOR DATA SCIENTIST___
  Skill Ranking:
  Python (10,390)
  SQL (7,488)
  R (4,674)
  AWS (2,593)
  Tableau (2,458)

  The ranking reveals three major themes:

  Programming dominates modern analytics workflows: Python clearly leads the ranking, showing that employers prioritize 
  flexible, general-purpose programming for automation, data processing, and advanced analysis. R’s strong position 
  reinforces the continued relevance of statistical programming in analytical roles.

  Data querying remains a non-negotiable foundation: SQL holds second place, confirming that structured data access and 
  database querying are still core requirements across nearly all data-related positions.

  Cloud and visualization complete the stack: AWS and Tableau round out the top five, highlighting the importance of 
  scalable cloud infrastructure and the ability to communicate insights visually through dashboards.



___FOR SENIOR DATA SCIENTIST___
  Skill Ranking:
  Python (2,956)
  SQL (2,185)
  R (1,307)
  AWS (866)
  Spark (693)

  The ranking reveals three major themes:

  Programming is the dominant entry requirement: Python leads the list, showing that employers increasingly expect 
  candidates to be comfortable with coding for data analysis, automation, and workflow building rather than relying only 
  on manual tools.

  Structured data skills remain essential: SQL holds second place, confirming that database querying and data extraction 
  remain foundational skills across virtually all data-focused roles.

  Advanced analytics and scalable systems are still relevant but secondary: R maintains a strong position for statistical
  analysis, while AWS and Spark show continued demand for cloud-based infrastructure and distributed data processing, 
  especially in more advanced or production-oriented environments.

___FOR MACHINE LEARNING ENGINEER___
  Skill Ranking:
  Python (1,230)
  PyTorch (571)
  TensorFlow (553)
  AWS (548)
  SQL (398)

  The ranking reveals three major themes:

  Python is the foundation of modern AI workflows: Python clearly leads, reflecting its role as the primary language for 
  machine learning development, model training, and experimentation across the AI ecosystem.

  Deep learning frameworks are central to demand: PyTorch and TensorFlow appear almost equally important, showing that 
  employers expect familiarity with at least one major deep learning framework for building and deploying neural network 
  models.

  AI engineering extends beyond modeling into infrastructure: AWS and SQL highlight that production-ready machine 
  learning is not just about models, but also about working with cloud infrastructure and handling structured data 
  pipelines.



___FOR SOFTWARE ENGINEER___
  Skill Ranking:
  Python (1,318)
  SQL (1,038)
  AWS (1,007)
  Java (741)
  Kubernetes (618)

  The ranking reveals three major themes:

  Python leads modern backend and data-driven development: Python holds the top position, reflecting its 
  versatility across automation, backend services, data pipelines, and cloud-native applications.

  Cloud infrastructure is as important as coding: AWS and Kubernetes both appear strongly in the top five, 
  showing that employers increasingly expect developers to work within containerized, scalable cloud environments 
  rather than standalone systems.

  Multi-language backend ecosystems remain relevant: SQL and Java maintain strong demand, indicating that 
  traditional enterprise systems and database-driven architectures are still a core part of software engineering roles.
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
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "1266"
  },
  {
    "skill_id": 181,
    "skills": "excel",
    "job_amount_per_skill": "983"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "job_amount_per_skill": "728"
  },
  {
    "skill_id": 183,
    "skills": "power bi",
    "job_amount_per_skill": "555"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "546"
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



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR DATA ANALYST___
[
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "7291"
  },
  {
    "skill_id": 181,
    "skills": "excel",
    "job_amount_per_skill": "4611"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "4330"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "job_amount_per_skill": "3745"
  },
  {
    "skill_id": 183,
    "skills": "power bi",
    "job_amount_per_skill": "2609"
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
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "1724"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "1054"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "job_amount_per_skill": "999"
  },
  {
    "skill_id": 181,
    "skills": "excel",
    "job_amount_per_skill": "700"
  },
  {
    "skill_id": 5,
    "skills": "r",
    "job_amount_per_skill": "514"
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
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "14213"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "13893"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "8570"
  },
  {
    "skill_id": 74,
    "skills": "azure",
    "job_amount_per_skill": "6997"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "6612"
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
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "4604"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "4488"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "3367"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "2423"
  },
  {
    "skill_id": 74,
    "skills": "azure",
    "job_amount_per_skill": "2240"
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
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "10390"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "7488"
  },
  {
    "skill_id": 5,
    "skills": "r",
    "job_amount_per_skill": "4674"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "2593"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "job_amount_per_skill": "2458"
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
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "2956"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "2185"
  },
  {
    "skill_id": 5,
    "skills": "r",
    "job_amount_per_skill": "1307"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "866"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "693"
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
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "1230"
  },
  {
    "skill_id": 101,
    "skills": "pytorch",
    "job_amount_per_skill": "571"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "job_amount_per_skill": "553"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "548"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "398"
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
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "1318"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "1038"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "1007"
  },
  {
    "skill_id": 4,
    "skills": "java",
    "job_amount_per_skill": "741"
  },
  {
    "skill_id": 213,
    "skills": "kubernetes",
    "job_amount_per_skill": "618"
  }
]
**/