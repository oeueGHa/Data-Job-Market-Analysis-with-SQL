with high_demand AS (
    SELECT
        skills_dim.skill_id,
        skills_dim.skills, 
        count(skills_job_dim.job_id) job_amount_per_skill
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
    where 
        job_title_short = 'Software Engineer'
        AND salary_year_avg IS NOT NULL
        --AND job_work_from_home IS true --delete mb
    GROUP by skills_dim.skill_id
), top_paid AS (
    SELECT
        skills_dim.skill_id,
        ROUND(AVG(salary_year_avg), 0) avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Software Engineer'
        AND salary_year_avg IS NOT NULL
        --AND job_work_from_home IS true --delete mb
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
___FOR BUSINESS ANALYST___
    Top contenders

    Python
    143 job postings (highest demand among programming/analytics tools)
    $104,277 average salary
    Most versatile core skill in the dataset
    Used across data science, automation, backend systems, and analytics pipelines
    Clear “foundation skill” for almost every higher-paying stack

    SQL
    312 postings (highest demand overall)
    $95,292 average salary
    Absolute baseline requirement for almost all data roles
    Not high-paying on its own, but essential gateway skill
    Without SQL, most other high-value skills are inaccessible

    Tableau
    212 postings
    $98,794 average salary
    Strong demand in BI and reporting roles
    Often paired with SQL + Excel in analyst pipelines
    Good entry point into business intelligence careers

    Power BI
    139 postings
    $92,059 average salary
    Microsoft ecosystem BI tool
    Strong enterprise adoption, especially in corporate environments
    Good demand-to-salary balance in traditional analytics roles

    R
    73 postings
    $105,969 average salary
    Strong statistical and research-oriented language
    Higher salary than most BI tools despite lower demand
    Common in academia, biotech, and advanced analytics roles

    Snowflake
    34 postings
    $112,543 average salary
    High-end modern data platform
    Strong salary signal for its demand level
    Common in cloud data engineering and warehouse architecture

    AWS
    25 postings
    $105,996 average salary
    Core cloud infrastructure skill
    High ceiling roles, especially when combined with Python + data engineering tools
    Low posting count here likely underrepresents real market demand

    Go
    33 postings
    $105,701 average salary
    Strong systems and backend language
    Used in high-performance infrastructure and distributed systems
    Signals more engineering-heavy, less “pure analytics” roles

    Looker
    25 postings
    $110,581 average salary
    Modern BI / data modeling tool
    Higher salary than Tableau and Power BI relative to demand
    Often used in data product and analytics engineering teams

    SAP
    34 postings
    $86,547 average salary
    Enterprise ERP ecosystem skill
    Stable demand but lower ceiling compared to modern data stack tools
    More legacy corporate environments

    Best skill by category

    Highest salary: Snowflake ($112,543)

    Highest demand: SQL (312 postings)

    Best balance of salary and demand: Python

    Why Python stands out:

    Very strong demand (143 postings)
    Mid-to-high salary ($104k) with room for scaling upward in advanced roles
    Acts as a multiplier skill: unlocks AWS, Snowflake, automation, ML, and data engineering roles
    Best long-term ROI because it connects multiple high-paying ecosystems

    Key insight:
    The dataset shows a clear split:

    “Foundation layer”: SQL, Excel, Tableau, Power BI (high demand, lower pay ceiling)
    “Growth layer”: Python, R (moderate demand, higher ceiling)
    “Premium layer”: Snowflake, AWS, Go, Looker (lower demand, higher salary)

    Real optimization strategy:
    SQL + Python is the core combo that unlocks access to nearly all higher-paying skills in the dataset.



___FOR CLOUD ENGINEER___
    Top contenders

    Python
    29 job postings (highest demand in this dataset)
    $111,594 average salary
    Strong general-purpose skill with high ceiling
    Used across data engineering, analytics, automation, ML, and backend systems
    Clear “core multiplier” skill that unlocks higher-paying roles

    AWS
    22 job postings
    $104,171 average salary
    Key cloud infrastructure platform
    Essential for modern data engineering and scalable system design
    Often paired with Python in production-grade environments

    Best skill by category

    Highest salary: Python ($111,594)
    Highest demand: Python (29 postings)
    Best balance of salary and demand: Python

    Why Python stands out:

    Leads both in demand and salary in this dataset
    Serves as a foundational layer for both cloud (AWS) and engineering roles
    Increases employability across multiple domains, not just one niche
    Acts as a gateway skill into higher-paying distributed systems and data engineering work

    Key insight:
    Even in a very small sample, the pattern is consistent: Python dominates because it is not just a tool, but a universal skill that amplifies every other technology it connects to.



___FOR DATA ANALYST___
    Top contenders

    Kafka
    40 job postings
    $129,999 average salary
    Top-tier salary signal in distributed systems
    Core tool for real-time data pipelines and event streaming
    Strong indicator of senior-level data engineering roles

    Spark
    187 postings (highest demand in this dataset)
    $113,002 average salary
    Backbone of big data processing at scale
    Very strong balance of demand + solid salary
    Common in nearly all modern data engineering stacks

    Airflow
    71 postings
    $116,387 average salary
    Orchestration standard for data pipelines
    Key glue skill connecting ingestion, processing, and warehousing systems
    Strong demand in production data engineering environments

    Snowflake
    241 postings (extremely high demand)
    $111,578 average salary
    Modern cloud data warehouse leader
    One of the most widely adopted enterprise data platforms
    Strong “must-know” skill in analytics engineering roles

    Databricks
    102 postings
    $112,881 average salary
    Unified analytics and ML platform
    Closely tied to Spark ecosystem
    High-value skill for cloud-based data engineering

    GCP
    78 postings
    $113,065 average salary
    Major cloud platform alongside AWS and Azure
    Strong salary for its demand level
    Often appears in cloud-native data engineering roles

    Hadoop
    140 postings
    $110,888 average salary
    Still relevant in legacy + hybrid big data systems
    Lower growth than Spark/Snowflake but still widely present
    Often coexists with Spark in enterprise environments

    Pandas
    90 postings
    $110,767 average salary
    Core Python data analysis library
    Important for data science and preprocessing workflows
    Signals strong Python ecosystem competence

    Linux
    58 postings
    $114,883 average salary
    Foundational infrastructure skill
    Essential for backend, DevOps, and data engineering environments
    Indirect but critical enabler for higher-level systems work

    Nosql
    108 postings
    $108,331 average salary
    Broad category covering document and key-value databases
    Important for scalable system design and flexible data storage

    Best skill by category

    Highest salary: Kafka ($129,999)

    Highest demand: Snowflake (241 postings)

    Best balance of salary and demand: Spark

    Why Spark stands out:

    Extremely high demand (187 postings)
    Strong salary (~$113k) with room for growth
    Central component in modern data engineering stacks
    Sits at the intersection of batch processing, streaming, and ML pipelines
    Often required alongside Kafka, Airflow, and Snowflake, making it a “hub skill”

    Key insight:
    This dataset clearly shows a “modern data platform stack” emerging:

    Streaming layer: Kafka
    Processing layer: Spark
    Orchestration: Airflow
    Storage/Warehouse: Snowflake / Redshift
    Cloud layer: AWS / GCP / Databricks

    Real optimization strategy:
    If you want maximum ROI, the most powerful combo is:

    Kafka + Spark + Airflow + Snowflake

    This combination maps directly to the highest-paying data engineering roles in the dataset.



___FOR SENIOR DATA ANALYST___
    Top contenders

    Python
    464 job postings (highest demand among programming/analytics skills)
    $119,402 average salary
    Clear universal foundation skill across data engineering, analytics, ML, and automation
    Acts as a “multiplier” for almost every other high-value tool in the stack

    SQL
    809 postings (highest demand overall in the dataset)
    $115,025 average salary
    Absolute core requirement for virtually all data roles
    Not the highest ceiling alone, but the most critical entry gate into high-paying stacks

    Tableau
    496 postings
    $113,467 average salary
    Dominant BI visualization tool in enterprise analytics
    Strong pairing with SQL for reporting and dashboard-heavy roles
    High demand shows continued importance of BI in corporate environments

    R
    264 postings
    $117,259 average salary
    Strong statistical and research-focused language
    Higher salary than most BI tools despite lower ecosystem breadth
    Especially relevant in analytics-heavy, academic, and experimental roles

    Airflow
    29 postings
    $134,561 average salary
    Highest salary in this dataset
    Key orchestration tool for production data pipelines
    Strong signal of senior-level data engineering responsibility

    Spark
    44 postings
    $132,649 average salary
    Core distributed computing engine for big data processing
    High salary reflects demand for scalable data infrastructure expertise
    Central to modern data engineering stacks

    AWS
    81 postings
    $122,668 average salary
    Leading cloud infrastructure platform
    Essential for production-grade data systems and scalable architecture
    Commonly paired with Python + Spark in high-paying roles

    Go
    73 postings
    $121,705 average salary
    High-performance systems language
    Used in distributed systems, backend services, and infrastructure tooling
    Signals engineering-heavy, non-entry-level roles

    Looker
    130 postings
    $121,147 average salary
    Modern BI and data modeling platform
    Higher salary efficiency compared to Tableau relative to demand
    Common in analytics engineering and data product teams

    Databricks
    36 postings
    $120,659 average salary
    Unified analytics + ML platform built on Spark
    Strong enterprise adoption in cloud data engineering stacks
    High-value skill for modern data platform roles

    Hadoop
    45 postings
    $119,348 average salary
    Still present in enterprise legacy + hybrid big data systems
    Gradually being replaced by Spark/Snowflake but remains relevant

    Snowflake
    116 postings
    $115,572 average salary
    Leading cloud data warehouse platform
    Very strong demand + stable salary combination
    Key pillar of modern analytics engineering ecosystems

    Best skill by category

    Highest salary: Airflow ($134,561)

    Highest demand: SQL (809 postings)

    Best balance of salary and demand: Python

    Why Python stands out:

    Extremely high demand (464 postings)
    Strong salary (~$119k) with clear upward mobility
    Sits at the center of nearly every modern data stack
    Enables work across cloud (AWS), big data (Spark), orchestration (Airflow), and ML (Databricks)
    Acts as the universal “connective tissue” skill in high-paying roles

    Key insight:
    This dataset confirms a mature modern data ecosystem:

    Foundation layer: SQL, Python
    Visualization layer: Tableau, Looker
    Processing layer: Spark, Hadoop
    Orchestration layer: Airflow
    Cloud layer: AWS
    Warehouse layer: Snowflake
    Platform layer: Databricks

    Real optimization strategy:
    The highest ROI skill stack is:

    SQL + Python + Spark + Airflow + AWS

    This combination consistently maps to the highest-paying and most in-demand data engineering roles across the dataset.



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



___FOR SENIOR DATA ENGINEER___
    Top contenders

    Python
    1155 job postings (highest demand overall in this dataset)
    $148,771 average salary
    Ultimate universal skill across data engineering, ML, automation, and backend systems
    Core “entry key” to almost every high-paying modern tech stack
    Even at massive scale, maintains very strong salary levels

    AWS
    887 postings
    $150,197 average salary
    Leading cloud infrastructure platform
    One of the most consistently high-paying and high-demand enterprise skills
    Central to production systems, data engineering, and distributed architectures

    Spark
    710 postings
    $151,854 average salary
    Core big data processing engine
    Extremely strong balance of demand + salary
    Foundational skill for large-scale data engineering and analytics systems

    Snowflake
    499 postings
    $153,597 average salary
    Modern cloud data warehouse leader
    Strong enterprise adoption and high salary ceiling
    Key pillar of modern analytics engineering ecosystems

    Kafka
    447 postings
    $154,923 average salary
    Top-tier distributed streaming platform
    Very strong salary signal for senior engineering roles
    Critical for real-time data pipelines and event-driven architectures

    Scala
    428 postings
    $153,975 average salary
    High-performance language for distributed systems (often Spark ecosystem)
    Strong presence in large-scale data engineering teams
    Signals advanced backend + data infrastructure expertise

    Redshift
    396 postings
    $156,521 average salary
    AWS-based data warehouse solution
    High salary reflects enterprise-scale analytics demand
    Strong overlap with Snowflake-style architecture roles

    Hadoop
    387 postings
    $153,628 average salary
    Legacy but still widely used big data framework
    Often present in hybrid enterprise environments with Spark migration paths

    NOSQL
    346 postings
    $154,714 average salary
    Broad category of scalable database systems
    Important for distributed system design and flexible data storage architectures

    Airflow
    339 postings
    $148,477 average salary
    Standard orchestration tool for production data pipelines
    Essential glue layer in modern data engineering stacks

    Kubernetes
    168 postings
    $150,748 average salary
    Core container orchestration platform
    Critical infrastructure skill for scalable cloud-native systems
    Strong signal of DevOps + platform engineering capability

    Best skill by category

    Highest salary: Redshift ($156,521)

    Highest demand: Python (1155 postings)

    Best balance of salary and demand: Spark

    Why Spark stands out:

    Extremely high demand (710 postings)
    Very strong salary (~$152k)
    Central execution layer for modern data platforms
    Bridges batch processing, streaming (Kafka), and cloud warehouses (Snowflake/Redshift)
    Required in a large share of high-paying data engineering roles

    Key insight:
    This dataset clearly represents a mature “enterprise data platform stack”:

    Programming layer: Python, Scala, Java
    Cloud layer: AWS
    Processing layer: Spark, Hadoop
    Streaming layer: Kafka
    Orchestration layer: Airflow, Kubernetes
    Storage layer: Snowflake, Redshift, NoSQL

    Real optimization strategy:
    The highest ROI skill stack remains:

    Python + SQL + Spark + Kafka + AWS + Airflow

    This combination consistently maps to the most senior, highest-paying data engineering and platform engineering roles in the dataset.



___FOR DATA SCIENTIST___
    Top contenders

    Python (implicit in stack, not in this slice but reflected via ML tools like PyTorch / scikit-learn)
    High demand ecosystem presence (PyTorch 564, scikit-learn 392)
    ~$145k+ range via ML/data engineering stack proxy skills
    Core backbone for ML, automation, and data engineering pipelines
    Acts as the “entry layer” into almost every high-paying cluster here

    SQL
    3151 postings (by far highest demand in the entire dataset)
    $138,430 average salary
    Absolute universal requirement for data-driven roles
    Not the highest ceiling alone, but the strongest gateway skill in the market
    Every other high-paying skill depends on it indirectly

    AWS
    1016 postings
    $138,861 average salary
    Dominant cloud platform in enterprise systems
    Critical for scalable data engineering + backend infrastructure
    Forms the base layer for most modern high-paying stacks

    Spark
    946 postings
    $144,399 average salary
    Core distributed processing engine for big data workloads
    Strong balance of massive demand + high compensation
    Central hub in almost all modern data platforms

    TensorFlow
    641 postings
    $143,440 average salary
    Major deep learning framework
    Strong signal for AI/ML engineering roles
    High salary reflects specialized ML expertise demand

    PyTorch
    564 postings
    $145,989 average salary
    Modern dominant deep learning framework
    Higher salary signal than TensorFlow in many roles
    Key tool in research + production ML systems

    Scikit-learn
    392 postings
    $141,777 average salary
    Core classical ML library
    Important for applied data science pipelines
    Often paired with Python for production ML workflows

    Snowflake
    313 postings
    $142,691 average salary
    Leading cloud data warehouse platform
    Strong enterprise adoption and stable high-paying demand
    Key component in modern analytics engineering stacks

    GCP
    244 postings
    $141,092 average salary
    Major cloud platform alongside AWS
    Strong salary-to-demand ratio
    Common in modern cloud-native data architectures

    Kafka
    138 postings
    $139,741 average salary
    Core event streaming platform
    Critical for real-time data systems and distributed architectures
    Often paired with Spark + Airflow in senior roles

    BigQuery
    135 postings
    $149,292 average salary
    High-value Google cloud analytics warehouse
    Strong salary signal relative to demand
    Common in data analytics + cloud engineering roles

    Neo4j
    32 postings
    $163,971 average salary (highest in dataset)
    Graph database specialization
    Very niche but extremely high-paying expertise
    Used in fraud detection, recommendation systems, and knowledge graphs

    Best skill by category

    Highest salary: Neo4j ($163,971)

    Highest demand: SQL (3151 postings)

    Best balance of salary and demand: Spark

    Why Spark stands out:

    Extremely high demand (946 postings)
    Very strong salary (~$144k)
    Central execution layer across data engineering + ML pipelines
    Bridges cloud (AWS/GCP), storage (Snowflake/BigQuery), and streaming (Kafka)
    One of the most universally required “senior signal” skills

    Key insight:
    This dataset shows a full convergence of three major ecosystems:

    Data engineering core: SQL, Spark, AWS
    Cloud analytics: Snowflake, BigQuery, GCP
    ML/AI stack: PyTorch, TensorFlow, scikit-learn
    Streaming + infra: Kafka, Airflow
    Specialized niche: Neo4j (highest salary, lowest scale)

    Real optimization strategy:
    The strongest ROI path is still:

    SQL + Python + Spark + AWS + Kafka + ML framework (PyTorch or TensorFlow)

    This combination positions you across both:

    high-demand enterprise data engineering roles
    high-salary AI/ML engineering roles



___FOR SENIOR DATA SCIENTIST___
    Top contenders

    Python
    1304 job postings (highest demand in this dataset)
    $154,960 average salary
    Core universal language across data engineering, AI/ML, and backend systems
    Acts as the primary “multiplier skill” for almost every high-paying tech stack
    Still maintains very strong salary at extreme scale of demand

    SQL
    1024 postings
    $154,285 average salary
    Most essential skill across all data-driven roles
    Gatekeeper for analytics, data engineering, and BI positions
    Nearly every other high-value skill depends on it

    Spark
    345 postings
    $164,094 average salary
    Core distributed data processing engine
    Very strong salary signal with still significant demand
    Central to modern large-scale data engineering systems

    Airflow
    97 postings
    $163,440 average salary
    High-end orchestration tool for production data pipelines
    Strong indicator of senior-level data engineering roles
    Critical glue layer in modern cloud data stacks

    Go
    144 postings
    $168,254 average salary
    High-performance systems language
    Used in distributed systems, backend infrastructure, and cloud-native services
    Strong signal of engineering-heavy, high-complexity roles

    C#
    21 postings
    $204,903 average salary (highest in dataset)
    Extremely high-paying niche skill
    Often tied to specialized enterprise, fintech, or legacy high-value systems
    Very low demand but elite compensation signal

    Plotly
    28 postings
    $175,633 average salary
    High-end data visualization tool
    Used in analytics-heavy and research-driven environments
    Strong salary signal for niche data storytelling roles

    Seaborn
    26 postings
    $172,961 average salary
    Statistical visualization library for Python
    Signals advanced analytics + data science roles
    Higher compensation than most BI tools due to specialization

    Matplotlib
    54 postings
    $168,607 average salary
    Foundational Python visualization library
    Used heavily in scientific computing and ML workflows
    Strong signal of applied data science work

    PyTorch
    208 postings
    $159,627 average salary
    Leading deep learning framework
    Core for modern AI/ML engineering roles
    Strong balance of demand and high compensation

    TensorFlow
    239 postings
    $156,255 average salary
    Major ML framework for production AI systems
    Slightly broader enterprise adoption than PyTorch in this dataset
    Still a key pillar of ML engineering stacks

    Hadoop
    165 postings
    $158,518 average salary
    Legacy big data framework still present in enterprise systems
    Often coexists with Spark in hybrid architectures
    Gradually declining but still high-paying skill

    Databricks
    90 postings
    $156,029 average salary
    Unified analytics + ML platform
    Strong modern data engineering ecosystem skill
    Closely tied to Spark-based workflows

    Pandas
    158 postings
    $155,137 average salary
    Core Python data manipulation library
    Essential for data science and preprocessing pipelines
    Signals strong Python-based analytics capability

    Best skill by category

    Highest salary: C# ($204,903)

    Highest demand: Python (1304 postings)

    Best balance of salary and demand: Spark

    Why Spark stands out:

    Strong demand (345 postings)
    Very high salary (~$164k)
    Central execution engine across modern data platforms
    Connects storage (SQL/Snowflake), streaming (Kafka), orchestration (Airflow), and ML workflows
    One of the most consistent “senior engineer signal” skills in the dataset

    Key insight:
    This dataset shows a clear split between three tiers:

    Foundation layer: SQL, Python (mass adoption, essential entry skills)
    Execution layer: Spark, Airflow, Databricks (core data engineering systems)
    Premium niche layer: C#, Go, Plotly, Seaborn (high salary, lower demand, specialized roles)

    Real optimization strategy:
    The most robust high-ROI path remains:

    SQL + Python + Spark + Airflow + (PyTorch or TensorFlow)

    This combination consistently positions candidates for senior data engineering and ML engineering roles with 
    both high demand and strong salary ceilings.



___FOR MACHINE LEARNING ENGINEER___
    Top contenders

    Python
    391 job postings
    $129,781 average salary
    Core universal skill across data engineering, analytics, and ML
    Still one of the strongest “entry + scaling” skills in the dataset
    Serves as the foundation for almost every higher-paying tool here

    SQL (implicit in stack, not listed in this slice but structurally essential in this ecosystem)
    112 postings (as adjacent relational skill presence)
    $136,859 average salary (for SQL in this slice)
    Fundamental requirement for all data roles
    Acts as the gateway skill into Spark, Airflow, cloud, and BI systems

    Spark
    113 postings
    $138,904 average salary
    Core distributed data processing engine
    Strong balance of demand + high compensation
    Central to large-scale data engineering pipelines

    Airflow
    54 postings
    $144,821 average salary
    High-value orchestration tool for production data systems
    Strong signal of senior data engineering responsibility
    Connects ingestion → processing → storage workflows

    Scala
    40 postings
    $157,451 average salary
    High-performance language heavily tied to Spark ecosystem
    Signals advanced distributed systems engineering roles
    High salary reflects senior-level technical specialization

    Hadoop
    40 postings
    $139,614 average salary
    Legacy big data framework still used in enterprise environments
    Often coexists with Spark in hybrid architectures
    Stable but gradually replaced by newer systems

    Kubernetes
    89 postings
    $133,817 average salary
    Core container orchestration platform
    Critical infrastructure skill for cloud-native systems
    Strong signal of DevOps + platform engineering capability

    Docker
    110 postings
    $129,329 average salary
    Essential containerization tool
    Entry-level infrastructure skill for modern cloud systems
    Often paired with Kubernetes in production stacks

    AWS
    174 postings
    $129,832 average salary
    Dominant cloud infrastructure platform
    Foundational layer for most high-paying data engineering roles
    High demand across almost all enterprise systems

    GCP
    58 postings
    $134,617 average salary
    Major cloud platform alongside AWS
    Strong salary-to-demand ratio
    Common in modern cloud-native data architectures

    TensorFlow
    195 postings
    $133,798 average salary
    Major deep learning framework
    Strong demand for production ML systems
    Enterprise-heavy adoption in AI workloads

    PyTorch
    190 postings
    $133,475 average salary
    Leading deep learning framework in modern ML engineering
    Slightly more research/modern stack bias than TensorFlow
    Strong AI/ML career signal

    Databricks
    41 postings
    $132,198 average salary
    Unified analytics + ML platform
    Closely tied to Spark-based architectures
    High-value modern data engineering skill

    Kafka
    31 postings
    $132,143 average salary
    Core event streaming platform
    Critical for real-time distributed systems
    Often appears in senior data engineering stacks

    Pandas
    61 postings
    $129,913 average salary
    Core Python data manipulation library
    Essential for data science and preprocessing workflows
    Signals strong Python-based analytics capability

    Best skill by category

    Highest salary: Scala ($157,451)

    Highest demand: Python (391 postings)

    Best balance of salary and demand: Spark

    Why Spark stands out:

    Strong demand (113 postings)
    High salary (~$139k)
    Central processing engine across modern data platforms
    Bridges cloud (AWS/GCP), orchestration (Airflow), storage systems, and ML workflows
    One of the most consistently required skills in senior data engineering roles

    Key insight:
    This dataset shows a mature and highly structured “cloud data engineering stack”:

    Foundation layer: SQL, Python
    Processing layer: Spark, Hadoop, Scala
    Infrastructure layer: Docker, Kubernetes, AWS
    Orchestration layer: Airflow
    ML layer: TensorFlow, PyTorch
    Platform layer: Databricks, Kafka

    Real optimization strategy:
    The highest ROI path remains:

    SQL + Python + Spark + AWS + Airflow + Kubernetes

    This combination consistently leads to the most stable, high-paying senior roles in data engineering and 
    platform engineering.



___FOR SOFTWARE ENGINEER___
    Top contenders

    Go
    64 job postings
    $142,748 average salary
    High-performance systems language
    Strong signal of backend, infrastructure, and distributed systems roles
    Excellent salary-to-demand ratio in cloud-native engineering stacks

    Python
    204 job postings
    $118,825 average salary
    Core universal skill across data engineering, ML, and automation
    Still one of the most important “entry + scaling” skills
    Foundation layer for most higher-paying tools in this dataset

    AWS
    123 job postings
    $120,502 average salary
    Dominant cloud infrastructure platform
    Essential for production data systems and backend architecture
    Common baseline requirement across senior engineering roles

    Java
    118 job postings
    $113,141 average salary
    Enterprise backend standard
    Strong presence in large-scale distributed systems
    Often paired with Spark, Kafka, and Hadoop ecosystems

    JavaScript
    61 job postings
    $114,526 average salary
    Core web development language
    Important for full-stack and product engineering roles
    Often paired with Node.js and React in modern stacks

    Node.js
    22 job postings
    $136,657 average salary
    Backend JavaScript runtime
    Strong salary for relatively low demand (niche senior roles)
    Common in scalable API and backend service architectures

    TypeScript
    28 postings
    $133,581 average salary
    Typed superset of JavaScript
    Signals modern frontend + backend engineering maturity
    Higher salary reflects demand for scalable web applications

    React
    39 postings
    $130,953 average salary
    Leading frontend UI library
    Core skill in modern product engineering
    Strong demand in full-stack and frontend-heavy roles

    Airflow
    23 postings
    $132,163 average salary
    High-value data pipeline orchestration tool
    Signals senior data engineering responsibilities
    Critical glue in modern data infrastructure stacks

    Snowflake
    25 postings
    $129,335 average salary
    Modern cloud data warehouse platform
    Key enterprise analytics engineering tool
    Strong salary for relatively moderate demand

    C++
    48 postings
    $128,525 average salary
    High-performance systems programming language
    Used in low-latency systems, trading, and infrastructure
    Strong niche engineering compensation

    Kafka
    48 postings
    $127,329 average salary
    Core distributed streaming platform
    Essential for real-time data systems
    Common in senior data engineering stacks

    Hadoop
    37 postings
    $121,938 average salary
    Legacy big data framework
    Still present in enterprise environments
    Often coexists with Spark migration stacks

    Azure
    79 postings
    $113,856 average salary
    Major cloud platform alongside AWS and GCP
    Strong enterprise adoption, especially corporate environments
    Solid demand across data and backend roles

    TensorFlow
    31 postings
    $113,066 average salary
    Deep learning framework for production ML
    Signals AI/ML engineering capability
    Often used in enterprise ML pipelines

    Kubernetes
    54 postings
    $110,222 average salary
    Core container orchestration system
    Critical infrastructure skill for cloud-native systems
    Important but more generalist compared to niche data tools

    Best skill by category

    Highest salary: Go ($142,748)

    Highest demand: Python (204 postings)

    Best balance of salary and demand: Go

    Why Go stands out:

    Strong salary (~$143k) with solid demand (64 postings)
    High-performance systems language used in cloud infrastructure and distributed systems
    Frequently appears in backend, DevOps, and platform engineering roles
    Represents a “modern infrastructure engineer” skill rather than legacy systems
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
    "skill_id": 80,
    "skills": "snowflake",
    "job_amount_per_skill": "34",
    "avg_salary": "112543"
  },
  {
    "skill_id": 185,
    "skills": "looker",
    "job_amount_per_skill": "25",
    "avg_salary": "110581"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "25",
    "avg_salary": "105996"
  },
  {
    "skill_id": 5,
    "skills": "r",
    "job_amount_per_skill": "73",
    "avg_salary": "105969"
  },
  {
    "skill_id": 8,
    "skills": "go",
    "job_amount_per_skill": "33",
    "avg_salary": "105701"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "143",
    "avg_salary": "104277"
  },
  {
    "skill_id": 74,
    "skills": "azure",
    "job_amount_per_skill": "22",
    "avg_salary": "103836"
  },
  {
    "skill_id": 7,
    "skills": "sas",
    "job_amount_per_skill": "37",
    "avg_salary": "100308"
  },
  {
    "skill_id": 186,
    "skills": "sas",
    "job_amount_per_skill": "37",
    "avg_salary": "100308"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "job_amount_per_skill": "212",
    "avg_salary": "98794"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "312",
    "avg_salary": "95292"
  },
  {
    "skill_id": 79,
    "skills": "oracle",
    "job_amount_per_skill": "37",
    "avg_salary": "93139"
  },
  {
    "skill_id": 215,
    "skills": "flow",
    "job_amount_per_skill": "51",
    "avg_salary": "92445"
  },
  {
    "skill_id": 183,
    "skills": "power bi",
    "job_amount_per_skill": "139",
    "avg_salary": "92059"
  },
  {
    "skill_id": 197,
    "skills": "ssrs",
    "job_amount_per_skill": "23",
    "avg_salary": "91102"
  },
  {
    "skill_id": 61,
    "skills": "sql server",
    "job_amount_per_skill": "30",
    "avg_salary": "89868"
  },
  {
    "skill_id": 196,
    "skills": "powerpoint",
    "job_amount_per_skill": "74",
    "avg_salary": "88182"
  },
  {
    "skill_id": 181,
    "skills": "excel",
    "job_amount_per_skill": "226",
    "avg_salary": "87212"
  },
  {
    "skill_id": 188,
    "skills": "word",
    "job_amount_per_skill": "51",
    "avg_salary": "87075"
  },
  {
    "skill_id": 189,
    "skills": "sap",
    "job_amount_per_skill": "34",
    "avg_salary": "86547"
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
    "job_amount_per_skill": "29",
    "avg_salary": "111594"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "22",
    "avg_salary": "104171"
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
    "skill_id": 98,
    "skills": "kafka",
    "job_amount_per_skill": "40",
    "avg_salary": "129999"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "job_amount_per_skill": "24",
    "avg_salary": "120647"
  },
  {
    "skill_id": 96,
    "skills": "airflow",
    "job_amount_per_skill": "71",
    "avg_salary": "116387"
  },
  {
    "skill_id": 3,
    "skills": "scala",
    "job_amount_per_skill": "59",
    "avg_salary": "115480"
  },
  {
    "skill_id": 169,
    "skills": "linux",
    "job_amount_per_skill": "58",
    "avg_salary": "114883"
  },
  {
    "skill_id": 234,
    "skills": "confluence",
    "job_amount_per_skill": "62",
    "avg_salary": "114153"
  },
  {
    "skill_id": 95,
    "skills": "pyspark",
    "job_amount_per_skill": "49",
    "avg_salary": "114058"
  },
  {
    "skill_id": 62,
    "skills": "mongodb",
    "job_amount_per_skill": "26",
    "avg_salary": "113608"
  },
  {
    "skill_id": 18,
    "skills": "mongodb",
    "job_amount_per_skill": "26",
    "avg_salary": "113608"
  },
  {
    "skill_id": 81,
    "skills": "gcp",
    "job_amount_per_skill": "78",
    "avg_salary": "113065"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "187",
    "avg_salary": "113002"
  },
  {
    "skill_id": 75,
    "skills": "databricks",
    "job_amount_per_skill": "102",
    "avg_salary": "112881"
  },
  {
    "skill_id": 210,
    "skills": "git",
    "job_amount_per_skill": "74",
    "avg_salary": "112250"
  },
  {
    "skill_id": 80,
    "skills": "snowflake",
    "job_amount_per_skill": "241",
    "avg_salary": "111578"
  },
  {
    "skill_id": 6,
    "skills": "shell",
    "job_amount_per_skill": "44",
    "avg_salary": "111496"
  },
  {
    "skill_id": 168,
    "skills": "unix",
    "job_amount_per_skill": "37",
    "avg_salary": "111123"
  },
  {
    "skill_id": 97,
    "skills": "hadoop",
    "job_amount_per_skill": "140",
    "avg_salary": "110888"
  },
  {
    "skill_id": 93,
    "skills": "pandas",
    "job_amount_per_skill": "90",
    "avg_salary": "110767"
  },
  {
    "skill_id": 137,
    "skills": "phoenix",
    "job_amount_per_skill": "23",
    "avg_salary": "109259"
  },
  {
    "skill_id": 25,
    "skills": "php",
    "job_amount_per_skill": "29",
    "avg_salary": "109052"
  },
  {
    "skill_id": 2,
    "skills": "nosql",
    "job_amount_per_skill": "108",
    "avg_salary": "108331"
  },
  {
    "skill_id": 141,
    "skills": "express",
    "job_amount_per_skill": "96",
    "avg_salary": "108221"
  },
  {
    "skill_id": 78,
    "skills": "redshift",
    "job_amount_per_skill": "90",
    "avg_salary": "107969"
  },
  {
    "skill_id": 233,
    "skills": "jira",
    "job_amount_per_skill": "145",
    "avg_salary": "107931"
  },
  {
    "skill_id": 94,
    "skills": "numpy",
    "job_amount_per_skill": "54",
    "avg_salary": "107398"
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
    "skill_id": 96,
    "skills": "airflow",
    "job_amount_per_skill": "29",
    "avg_salary": "134561"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "44",
    "avg_salary": "132649"
  },
  {
    "skill_id": 4,
    "skills": "java",
    "job_amount_per_skill": "25",
    "avg_salary": "131636"
  },
  {
    "skill_id": 26,
    "skills": "c",
    "job_amount_per_skill": "28",
    "avg_salary": "129017"
  },
  {
    "skill_id": 93,
    "skills": "pandas",
    "job_amount_per_skill": "21",
    "avg_salary": "126297"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "81",
    "avg_salary": "122668"
  },
  {
    "skill_id": 8,
    "skills": "go",
    "job_amount_per_skill": "73",
    "avg_salary": "121705"
  },
  {
    "skill_id": 185,
    "skills": "looker",
    "job_amount_per_skill": "130",
    "avg_salary": "121147"
  },
  {
    "skill_id": 75,
    "skills": "databricks",
    "job_amount_per_skill": "36",
    "avg_salary": "120659"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "464",
    "avg_salary": "119402"
  },
  {
    "skill_id": 97,
    "skills": "hadoop",
    "job_amount_per_skill": "45",
    "avg_salary": "119348"
  },
  {
    "skill_id": 74,
    "skills": "azure",
    "job_amount_per_skill": "65",
    "avg_salary": "119279"
  },
  {
    "skill_id": 5,
    "skills": "r",
    "job_amount_per_skill": "264",
    "avg_salary": "117259"
  },
  {
    "skill_id": 78,
    "skills": "redshift",
    "job_amount_per_skill": "46",
    "avg_salary": "116238"
  },
  {
    "skill_id": 199,
    "skills": "spss",
    "job_amount_per_skill": "43",
    "avg_salary": "115731"
  },
  {
    "skill_id": 80,
    "skills": "snowflake",
    "job_amount_per_skill": "116",
    "avg_salary": "115572"
  },
  {
    "skill_id": 233,
    "skills": "jira",
    "job_amount_per_skill": "53",
    "avg_salary": "115339"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "809",
    "avg_salary": "115025"
  },
  {
    "skill_id": 79,
    "skills": "oracle",
    "job_amount_per_skill": "85",
    "avg_salary": "113685"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "job_amount_per_skill": "496",
    "avg_salary": "113467"
  },
  {
    "skill_id": 186,
    "skills": "sas",
    "job_amount_per_skill": "121",
    "avg_salary": "112827"
  },
  {
    "skill_id": 7,
    "skills": "sas",
    "job_amount_per_skill": "121",
    "avg_salary": "112827"
  },
  {
    "skill_id": 77,
    "skills": "bigquery",
    "job_amount_per_skill": "37",
    "avg_salary": "112331"
  },
  {
    "skill_id": 61,
    "skills": "sql server",
    "job_amount_per_skill": "80",
    "avg_salary": "112120"
  },
  {
    "skill_id": 215,
    "skills": "flow",
    "job_amount_per_skill": "64",
    "avg_salary": "109178"
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



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR SENIOR DATA ENGINEER___
[
  {
    "skill_id": 24,
    "skills": "mongo",
    "job_amount_per_skill": "119",
    "avg_salary": "172808"
  },
  {
    "skill_id": 63,
    "skills": "cassandra",
    "job_amount_per_skill": "163",
    "avg_salary": "167398"
  },
  {
    "skill_id": 6,
    "skills": "shell",
    "job_amount_per_skill": "204",
    "avg_salary": "162862"
  },
  {
    "skill_id": 56,
    "skills": "mysql",
    "job_amount_per_skill": "204",
    "avg_salary": "158864"
  },
  {
    "skill_id": 26,
    "skills": "c",
    "job_amount_per_skill": "35",
    "avg_salary": "158155"
  },
  {
    "skill_id": 193,
    "skills": "splunk",
    "job_amount_per_skill": "21",
    "avg_salary": "157547"
  },
  {
    "skill_id": 55,
    "skills": "redis",
    "job_amount_per_skill": "34",
    "avg_salary": "157461"
  },
  {
    "skill_id": 78,
    "skills": "redshift",
    "job_amount_per_skill": "396",
    "avg_salary": "156521"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "job_amount_per_skill": "22",
    "avg_salary": "155510"
  },
  {
    "skill_id": 98,
    "skills": "kafka",
    "job_amount_per_skill": "447",
    "avg_salary": "154923"
  },
  {
    "skill_id": 2,
    "skills": "nosql",
    "job_amount_per_skill": "346",
    "avg_salary": "154714"
  },
  {
    "skill_id": 13,
    "skills": "c++",
    "job_amount_per_skill": "39",
    "avg_salary": "154624"
  },
  {
    "skill_id": 3,
    "skills": "scala",
    "job_amount_per_skill": "428",
    "avg_salary": "153975"
  },
  {
    "skill_id": 97,
    "skills": "hadoop",
    "job_amount_per_skill": "387",
    "avg_salary": "153628"
  },
  {
    "skill_id": 80,
    "skills": "snowflake",
    "job_amount_per_skill": "499",
    "avg_salary": "153597"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "710",
    "avg_salary": "151854"
  },
  {
    "skill_id": 4,
    "skills": "java",
    "job_amount_per_skill": "502",
    "avg_salary": "151468"
  },
  {
    "skill_id": 213,
    "skills": "kubernetes",
    "job_amount_per_skill": "168",
    "avg_salary": "150748"
  },
  {
    "skill_id": 93,
    "skills": "pandas",
    "job_amount_per_skill": "64",
    "avg_salary": "150488"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "887",
    "avg_salary": "150197"
  },
  {
    "skill_id": 94,
    "skills": "numpy",
    "job_amount_per_skill": "26",
    "avg_salary": "150049"
  },
  {
    "skill_id": 185,
    "skills": "looker",
    "job_amount_per_skill": "71",
    "avg_salary": "149742"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "1155",
    "avg_salary": "148771"
  },
  {
    "skill_id": 96,
    "skills": "airflow",
    "job_amount_per_skill": "339",
    "avg_salary": "148477"
  },
  {
    "skill_id": 168,
    "skills": "unix",
    "job_amount_per_skill": "44",
    "avg_salary": "146918"
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
    "skill_id": 58,
    "skills": "neo4j",
    "job_amount_per_skill": "32",
    "avg_salary": "163971"
  },
  {
    "skill_id": 96,
    "skills": "airflow",
    "job_amount_per_skill": "144",
    "avg_salary": "155878"
  },
  {
    "skill_id": 118,
    "skills": "theano",
    "job_amount_per_skill": "25",
    "avg_salary": "153133"
  },
  {
    "skill_id": 77,
    "skills": "bigquery",
    "job_amount_per_skill": "135",
    "avg_salary": "149292"
  },
  {
    "skill_id": 219,
    "skills": "atlassian",
    "job_amount_per_skill": "23",
    "avg_salary": "148715"
  },
  {
    "skill_id": 141,
    "skills": "express",
    "job_amount_per_skill": "89",
    "avg_salary": "148333"
  },
  {
    "skill_id": 185,
    "skills": "looker",
    "job_amount_per_skill": "186",
    "avg_salary": "147538"
  },
  {
    "skill_id": 8,
    "skills": "go",
    "job_amount_per_skill": "316",
    "avg_salary": "147466"
  },
  {
    "skill_id": 101,
    "skills": "pytorch",
    "job_amount_per_skill": "564",
    "avg_salary": "145989"
  },
  {
    "skill_id": 3,
    "skills": "scala",
    "job_amount_per_skill": "381",
    "avg_salary": "145056"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "946",
    "avg_salary": "144399"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "job_amount_per_skill": "641",
    "avg_salary": "143440"
  },
  {
    "skill_id": 191,
    "skills": "microstrategy",
    "job_amount_per_skill": "31",
    "avg_salary": "143343"
  },
  {
    "skill_id": 105,
    "skills": "gdpr",
    "job_amount_per_skill": "21",
    "avg_salary": "142981"
  },
  {
    "skill_id": 80,
    "skills": "snowflake",
    "job_amount_per_skill": "313",
    "avg_salary": "142691"
  },
  {
    "skill_id": 63,
    "skills": "cassandra",
    "job_amount_per_skill": "47",
    "avg_salary": "142419"
  },
  {
    "skill_id": 26,
    "skills": "c",
    "job_amount_per_skill": "280",
    "avg_salary": "142278"
  },
  {
    "skill_id": 106,
    "skills": "scikit-learn",
    "job_amount_per_skill": "392",
    "avg_salary": "141777"
  },
  {
    "skill_id": 81,
    "skills": "gcp",
    "job_amount_per_skill": "244",
    "avg_salary": "141092"
  },
  {
    "skill_id": 144,
    "skills": "ruby",
    "job_amount_per_skill": "33",
    "avg_salary": "140927"
  },
  {
    "skill_id": 30,
    "skills": "ruby",
    "job_amount_per_skill": "33",
    "avg_salary": "140927"
  },
  {
    "skill_id": 25,
    "skills": "php",
    "job_amount_per_skill": "29",
    "avg_salary": "140790"
  },
  {
    "skill_id": 98,
    "skills": "kafka",
    "job_amount_per_skill": "138",
    "avg_salary": "139741"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "1016",
    "avg_salary": "138861"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "3151",
    "avg_salary": "138430"
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
    "skill_id": 14,
    "skills": "c#",
    "job_amount_per_skill": "21",
    "avg_salary": "204903"
  },
  {
    "skill_id": 112,
    "skills": "plotly",
    "job_amount_per_skill": "28",
    "avg_salary": "175633"
  },
  {
    "skill_id": 120,
    "skills": "seaborn",
    "job_amount_per_skill": "26",
    "avg_salary": "172961"
  },
  {
    "skill_id": 108,
    "skills": "matplotlib",
    "job_amount_per_skill": "54",
    "avg_salary": "168607"
  },
  {
    "skill_id": 8,
    "skills": "go",
    "job_amount_per_skill": "144",
    "avg_salary": "168254"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "345",
    "avg_salary": "164094"
  },
  {
    "skill_id": 96,
    "skills": "airflow",
    "job_amount_per_skill": "97",
    "avg_salary": "163440"
  },
  {
    "skill_id": 102,
    "skills": "jupyter",
    "job_amount_per_skill": "48",
    "avg_salary": "163059"
  },
  {
    "skill_id": 169,
    "skills": "linux",
    "job_amount_per_skill": "35",
    "avg_salary": "161967"
  },
  {
    "skill_id": 100,
    "skills": "keras",
    "job_amount_per_skill": "64",
    "avg_salary": "161855"
  },
  {
    "skill_id": 141,
    "skills": "express",
    "job_amount_per_skill": "26",
    "avg_salary": "161373"
  },
  {
    "skill_id": 13,
    "skills": "c++",
    "job_amount_per_skill": "60",
    "avg_salary": "160653"
  },
  {
    "skill_id": 15,
    "skills": "matlab",
    "job_amount_per_skill": "45",
    "avg_salary": "160535"
  },
  {
    "skill_id": 101,
    "skills": "pytorch",
    "job_amount_per_skill": "208",
    "avg_salary": "159627"
  },
  {
    "skill_id": 106,
    "skills": "scikit-learn",
    "job_amount_per_skill": "121",
    "avg_salary": "159425"
  },
  {
    "skill_id": 97,
    "skills": "hadoop",
    "job_amount_per_skill": "165",
    "avg_salary": "158518"
  },
  {
    "skill_id": 215,
    "skills": "flow",
    "job_amount_per_skill": "49",
    "avg_salary": "158255"
  },
  {
    "skill_id": 216,
    "skills": "github",
    "job_amount_per_skill": "52",
    "avg_salary": "157371"
  },
  {
    "skill_id": 26,
    "skills": "c",
    "job_amount_per_skill": "53",
    "avg_salary": "157295"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "job_amount_per_skill": "239",
    "avg_salary": "156255"
  },
  {
    "skill_id": 75,
    "skills": "databricks",
    "job_amount_per_skill": "90",
    "avg_salary": "156029"
  },
  {
    "skill_id": 93,
    "skills": "pandas",
    "job_amount_per_skill": "158",
    "avg_salary": "155137"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "1304",
    "avg_salary": "154960"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "1024",
    "avg_salary": "154285"
  },
  {
    "skill_id": 210,
    "skills": "git",
    "job_amount_per_skill": "144",
    "avg_salary": "153732"
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
    "skill_id": 181,
    "skills": "excel",
    "job_amount_per_skill": "24",
    "avg_salary": "159622"
  },
  {
    "skill_id": 3,
    "skills": "scala",
    "job_amount_per_skill": "40",
    "avg_salary": "157451"
  },
  {
    "skill_id": 96,
    "skills": "airflow",
    "job_amount_per_skill": "54",
    "avg_salary": "144821"
  },
  {
    "skill_id": 97,
    "skills": "hadoop",
    "job_amount_per_skill": "40",
    "avg_salary": "139614"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "113",
    "avg_salary": "138904"
  },
  {
    "skill_id": 4,
    "skills": "java",
    "job_amount_per_skill": "106",
    "avg_salary": "137184"
  },
  {
    "skill_id": 0,
    "skills": "sql",
    "job_amount_per_skill": "112",
    "avg_salary": "136859"
  },
  {
    "skill_id": 81,
    "skills": "gcp",
    "job_amount_per_skill": "58",
    "avg_salary": "134617"
  },
  {
    "skill_id": 213,
    "skills": "kubernetes",
    "job_amount_per_skill": "89",
    "avg_salary": "133817"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "job_amount_per_skill": "195",
    "avg_salary": "133798"
  },
  {
    "skill_id": 101,
    "skills": "pytorch",
    "job_amount_per_skill": "190",
    "avg_salary": "133475"
  },
  {
    "skill_id": 75,
    "skills": "databricks",
    "job_amount_per_skill": "41",
    "avg_salary": "132198"
  },
  {
    "skill_id": 98,
    "skills": "kafka",
    "job_amount_per_skill": "31",
    "avg_salary": "132143"
  },
  {
    "skill_id": 94,
    "skills": "numpy",
    "job_amount_per_skill": "50",
    "avg_salary": "131226"
  },
  {
    "skill_id": 8,
    "skills": "go",
    "job_amount_per_skill": "60",
    "avg_salary": "131067"
  },
  {
    "skill_id": 93,
    "skills": "pandas",
    "job_amount_per_skill": "61",
    "avg_salary": "129913"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "174",
    "avg_salary": "129832"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "391",
    "avg_salary": "129781"
  },
  {
    "skill_id": 214,
    "skills": "docker",
    "job_amount_per_skill": "110",
    "avg_salary": "129329"
  },
  {
    "skill_id": 106,
    "skills": "scikit-learn",
    "job_amount_per_skill": "74",
    "avg_salary": "125570"
  },
  {
    "skill_id": 210,
    "skills": "git",
    "job_amount_per_skill": "52",
    "avg_salary": "123278"
  },
  {
    "skill_id": 100,
    "skills": "keras",
    "job_amount_per_skill": "58",
    "avg_salary": "122580"
  },
  {
    "skill_id": 13,
    "skills": "c++",
    "job_amount_per_skill": "75",
    "avg_salary": "121363"
  },
  {
    "skill_id": 216,
    "skills": "github",
    "job_amount_per_skill": "22",
    "avg_salary": "121090"
  },
  {
    "skill_id": 95,
    "skills": "pyspark",
    "job_amount_per_skill": "22",
    "avg_salary": "120748"
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
    "skill_id": 8,
    "skills": "go",
    "job_amount_per_skill": "64",
    "avg_salary": "142748"
  },
  {
    "skill_id": 145,
    "skills": "node.js",
    "job_amount_per_skill": "22",
    "avg_salary": "136657"
  },
  {
    "skill_id": 17,
    "skills": "typescript",
    "job_amount_per_skill": "28",
    "avg_salary": "133581"
  },
  {
    "skill_id": 96,
    "skills": "airflow",
    "job_amount_per_skill": "23",
    "avg_salary": "132163"
  },
  {
    "skill_id": 110,
    "skills": "react",
    "job_amount_per_skill": "39",
    "avg_salary": "130953"
  },
  {
    "skill_id": 80,
    "skills": "snowflake",
    "job_amount_per_skill": "25",
    "avg_salary": "129335"
  },
  {
    "skill_id": 13,
    "skills": "c++",
    "job_amount_per_skill": "48",
    "avg_salary": "128525"
  },
  {
    "skill_id": 98,
    "skills": "kafka",
    "job_amount_per_skill": "48",
    "avg_salary": "127329"
  },
  {
    "skill_id": 97,
    "skills": "hadoop",
    "job_amount_per_skill": "37",
    "avg_salary": "121938"
  },
  {
    "skill_id": 76,
    "skills": "aws",
    "job_amount_per_skill": "123",
    "avg_salary": "120502"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "job_amount_per_skill": "204",
    "avg_salary": "118825"
  },
  {
    "skill_id": 211,
    "skills": "jenkins",
    "job_amount_per_skill": "26",
    "avg_salary": "117378"
  },
  {
    "skill_id": 233,
    "skills": "jira",
    "job_amount_per_skill": "25",
    "avg_salary": "116497"
  },
  {
    "skill_id": 92,
    "skills": "spark",
    "job_amount_per_skill": "69",
    "avg_salary": "115754"
  },
  {
    "skill_id": 3,
    "skills": "scala",
    "job_amount_per_skill": "36",
    "avg_salary": "115009"
  },
  {
    "skill_id": 9,
    "skills": "javascript",
    "job_amount_per_skill": "61",
    "avg_salary": "114526"
  },
  {
    "skill_id": 74,
    "skills": "azure",
    "job_amount_per_skill": "79",
    "avg_salary": "113856"
  },
  {
    "skill_id": 2,
    "skills": "nosql",
    "job_amount_per_skill": "29",
    "avg_salary": "113337"
  },
  {
    "skill_id": 4,
    "skills": "java",
    "job_amount_per_skill": "118",
    "avg_salary": "113141"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "job_amount_per_skill": "31",
    "avg_salary": "113066"
  },
  {
    "skill_id": 212,
    "skills": "terraform",
    "job_amount_per_skill": "21",
    "avg_salary": "112905"
  },
  {
    "skill_id": 81,
    "skills": "gcp",
    "job_amount_per_skill": "47",
    "avg_salary": "112875"
  },
  {
    "skill_id": 14,
    "skills": "c#",
    "job_amount_per_skill": "33",
    "avg_salary": "112873"
  },
  {
    "skill_id": 169,
    "skills": "linux",
    "job_amount_per_skill": "34",
    "avg_salary": "111317"
  },
  {
    "skill_id": 213,
    "skills": "kubernetes",
    "job_amount_per_skill": "54",
    "avg_salary": "110222"
  }
]
**/

