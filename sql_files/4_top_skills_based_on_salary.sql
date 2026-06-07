SELECT
    --job_postings_fact.job_id,
    skills,
    ROUND(AVG(salary_year_avg), 0) avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Software Engineer'
    AND salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 25

/**
___FOR BUSINESS ANALYST___
  The strongest salary premiums are attached to skills that fall into one of three categories:

  Specialized backend engineering & high-performance systems:
  Chef
  Ruby
  Node.js
  C
  Phoenix
  Electron

  Distributed systems, data infrastructure & cloud-scale processing:
  Hadoop
  Airflow
  NoSQL
  MongoDB
  Cassandra
  Elasticsearch
  Snowflake

  Advanced analytics, machine learning & scientific computing:
  NumPy
  Pandas
  PyTorch
  TensorFlow
  Scikit-learn
  Matlab
  Seaborn
  MXNet
  Chainer
  Julia

  Overall, this dataset suggests that the highest salaries are driven less by general-purpose programming knowledge and 
  more by expertise in systems that either scale to large distributed environments or support advanced machine learning 
  and data-intensive workflows. The presence of both modern ML frameworks and older scientific computing tools also 
  indicates that employers still pay a premium for deep quantitative and engineering capability, regardless of technology
  generation.



___FOR CLOUD ENGINEER___
  The strongest salary premiums are attached to skills that fall into one of three categories:

  Systems programming & high-performance engineering:
  Rust
  C++
  Go
  Swift
  Java
  JavaScript

  Distributed systems, cloud infrastructure & data engineering platforms:
  Spark
  Kafka
  Airflow
  Kubernetes
  Databricks
  Snowflake
  DynamoDB
  MongoDB
  Elasticsearch
  Neo4j
  Pyspark
  SQL

  DevOps, observability & engineering productivity ecosystems:
  Splunk
  Ansible
  Chef
  GitHub

  Advanced analytics & scientific computing (supporting layer):
  Matlab
  Looker

  Overall, this dataset suggests that the highest salaries are concentrated in engineers who can work close to 
  systems-level performance (Rust, C++, Go) or operate large-scale distributed data ecosystems (Spark, Kafka, 
  cloud databases and orchestration tools). DevOps and infrastructure automation tools also command strong premiums, 
  reinforcing that companies pay most for skills that directly support scalability, reliability, and production-grade 
  systems rather than isolated application development.



___FOR DATA ANALYST___
  The strongest salary premiums are attached to skills that fall into one of three categories:

  Legacy systems, niche infrastructure & high-leverage technical debt domains:
  SVN
  Perl
  VMware
  Puppet
  Couchbase
  Bitbucket

  Cloud infrastructure, DevOps automation & distributed systems engineering:
  Terraform
  Ansible
  Kafka
  Airflow
  GitLab
  Atlassian
  Twilio

  Machine learning, deep learning & advanced AI tooling:
  Solidity
  Keras
  PyTorch
  TensorFlow
  Hugging Face
  MXNet
  Datarobot
  Scala
  Dplyr

  Cross-cutting high-performance backend & systems languages:
  Golang
  Scala

  Overall, this dataset suggests a non-obvious pattern: the highest salary premiums are not only concentrated in 
  modern “hot” technologies, but also in deep expertise with legacy or highly specialized 
  systems (such as SVN and VMware), where scarcity of skilled engineers drives compensation upward. 
  At the same time, strong demand remains for cloud automation, distributed systems, and AI/ML frameworks, 
  reinforcing that top-paying roles sit at the intersection of infrastructure reliability, scalability, and 
  advanced computation rather than general-purpose development skills.



___FOR SENIOR DATA ANALYST___
  The strongest salary premiums are attached to skills that fall into one of three categories:

  Legacy enterprise systems, infrastructure maintenance & high-friction environments:
  VMware
  COBOL
  Perl
  PowerShell
  PHP
  jQuery
  Zoom
  Wire
  Yarn

  Scalable backend engineering & modern distributed systems:
  Go (Golang)
  Rust
  C++
  Node
  FastAPI
  GraphQL
  PostgreSQL
  Neo4j
  NoSQL
  Airflow
  Spark
  GitLab
  Phoenix

  Data-heavy engineering, visualization & analytics tooling:
  Matplotlib

  Cross-platform application & specialized domain engineering:
  Unity
  Swift

  Overall, this dataset reinforces a consistent pattern across all samples: the highest salaries are not tied to 
  popularity, but to scarcity combined with business-critical responsibility. Extremely high premiums appear in legacy 
  enterprise environments (VMware, COBOL), where few engineers can maintain or modernize systems safely. At the same time,
  strong compensation clusters around modern backend and distributed systems engineering (Go, Rust, FastAPI, GraphQL, 
  Spark), where performance, scalability, and reliability are essential. The data also shows that even widely known 
  tools can command high pay when they sit in critical infrastructure paths rather than general application development.



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



___FOR SENIOR DATA ENGINEER___
  The strongest salary premiums are attached to skills that fall into one of three categories:

  Machine learning, deep learning & computer vision ecosystems:
  MXNet
  PyTorch
  Keras
  TensorFlow
  OpenCV

  Data infrastructure, databases & large-scale storage systems:
  Mongo
  Cassandra
  CouchDB
  SQLite
  MySQL
  Redis
  Redshift

  Systems engineering, infrastructure tooling & cloud platforms:
  Arch
  Shell
  Terminal
  OpenStack
  Splunk

  Application frameworks & backend development ecosystems:
  Node
  Angular
  Kotlin

  Analytics, experimentation & productivity tooling:
  Matplotlib
  Jupyter
  Airtable
  Zoom

  Overall, this dataset suggests that the highest salaries consistently cluster around three forces: deep machine 
  learning expertise, scalable data infrastructure, and systems-level engineering. Across all samples, the most reliable
  premium comes not from front-end or general-purpose tooling, but from skills that either power large-scale 
  computation (ML frameworks), manage high-volume data systems (databases and distributed storage), or ensure 
  reliability and control at the infrastructure layer (shell, cloud platforms, observability tools).



___FOR DATA SCIENTIST___
  The strongest salary premiums are attached to skills that fall into one of three categories:

  Enterprise systems, platform engineering & high-trust infrastructure:
  RedHat
  DynamoDB
  Neo4j
  BigQuery
  CodeCommit
  Airflow

  Advanced AI/ML, symbolic computing & research-heavy frameworks:
  Watson
  Hugging Face
  Theano
  Solidity
  Haskell
  RShiny
  Dplyr

  Specialized backend engineering & modern application development:
  Elixir
  Lua
  Ruby on Rails
  Objective-C
  Unity
  Unreal

  Productivity platforms & workflow-critical SaaS ecosystems:
  Asana
  Airtable
  Slack
  Notion
  Zoom
  Atlassian

  Overall, this dataset continues a stable pattern: the highest salaries are concentrated in domains where expertise 
  is either rare, deeply specialized, or tied to mission-critical systems. A notable signal here is the coexistence of 
  cutting-edge AI tooling (Hugging Face, Watson) with older or niche languages and platforms (Haskell, Objective-C, 
  Ruby on Rails), showing that compensation is driven less by technology “trendiness” and more by how hard it is to 
  replace the expertise and how close it sits to core business operations or infrastructure reliability.



___FOR SENIOR DATA SCIENTIST___
  The strongest salary premiums are attached to skills that fall into one of three categories:

  Backend engineering, systems programming & high-reliability services:
  C#
  Go
  Flask
  Express
  Linux
  Terminal

  Data infrastructure, distributed systems & large-scale storage:
  Cassandra
  Neo4j
  Spark
  SQLite
  Airflow
  Ansible

  Data science, visualization & analytical tooling:
  Plotly
  Seaborn
  Matplotlib
  Jupyter
  Tidyverse

  Collaboration, DevOps & enterprise SaaS ecosystems:
  GitLab
  Zoom
  RingCentral
  Airtable
  Planner

  ML/AI & applied intelligent systems:
  Watson
  Keras

  Overall, this dataset reinforces a consistent pattern across all samples: the highest salary premiums are driven 
  by proximity to production-critical systems rather than surface-level popularity of tools. Strong compensation 
  clusters around backend engineering languages (C#, Go), distributed data systems (Spark, Cassandra, Neo4j), and 
  operational tooling that ensures reliability and scalability (Linux, Airflow, Ansible). At the same time, data 
  science and visualization tools remain well-compensated when embedded in high-impact decision pipelines, while 
  enterprise SaaS platforms and communication infrastructure reflect the premium placed on tools that directly support 
  organizational productivity and uptime.



___FOR MACHINE LEARNING ENGINEER___
  The strongest salary premiums are attached to skills that fall into one of three categories:

  Functional programming, systems design & high-reliability engineering languages:
  Haskell
  Clojure
  Scala
  Rust
  Go (Golang)
  Kotlin
  Swift
  C

  Data infrastructure, storage systems & cloud-scale analytics:
  PostgreSQL
  Redis
  Redshift
  BigQuery
  Airflow

  Business intelligence, reporting & decision-layer tooling:
  Looker
  Qlik
  Excel
  Sheets
  Spreadsheet

  DevOps, automation & infrastructure management:
  Chef

  Backend frameworks & application development ecosystems:
  Flask
  TypeScript

  Advanced AI / applied ML tooling:
  Hugging Face
  Julia

  Overall, this dataset shows a consistent and increasingly clear structure across all samples: the highest salary 
  premiums are driven by scarcity of expertise combined with proximity to production-critical systems. Functional and 
  systems-level languages (Haskell, Rust, Scala) remain highly rewarded due to their steep learning curve and use in 
  high-reliability environments. At the same time, cloud-scale data infrastructure (PostgreSQL, BigQuery, Redis, Airflow)
  continues to dominate compensation because it directly powers analytics and decision-making pipelines. Interestingly,
  even “simple” tools like Excel and Sheets command strong salaries when embedded in high-impact business intelligence
  roles, reinforcing the idea that value comes less from the tool itself and more from the strategic layer it 
  operates in.



___FOR SOFTWARE ENGINEER___
  The strongest salary premiums are attached to skills that fall into one of three categories:

  Low-level systems engineering, performance-critical computing & infrastructure control:
  Assembly
  C
  Debian
  Go (Golang)
  Clojure
  Julia

  Distributed data systems, databases & cloud-scale storage engineering:
  Cassandra
  Neo4j
  Couchbase
  DynamoDB
  Aurora
  Mongo

  Backend engineering & application infrastructure frameworks:
  Node
  Node.js
  Express
  ASP.NET Core
  Ruby on Rails
  Next.js

  Business intelligence, workflow tooling & enterprise platforms:
  Looker
  Alteryx
  Workfront
  SharePoint
  Atlassian

  Data analysis & visualization tooling:
  Matplotlib

  Overall, this dataset continues to show a stable and repeatable pattern: the highest salary premiums are consistently 
  concentrated in skills that sit close to system performance, data infrastructure, and production-critical backend 
  services. Low-level and systems languages (Assembly, C, Go) remain highly compensated due to scarcity and technical 
  depth, while distributed databases and cloud storage systems (Cassandra, DynamoDB, Neo4j) reflect strong demand for 
  scalable data architectures. At the same time, mainstream backend frameworks and enterprise tooling still command 
  strong salaries when they are embedded in core business systems rather than peripheral applications.



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
    "skills": "chef",
    "avg_salary": "220000"
  },
  {
    "skills": "numpy",
    "avg_salary": "157500"
  },
  {
    "skills": "ruby",
    "avg_salary": "150000"
  },
  {
    "skills": "hadoop",
    "avg_salary": "139201"
  },
  {
    "skills": "julia",
    "avg_salary": "136100"
  },
  {
    "skills": "airflow",
    "avg_salary": "135410"
  },
  {
    "skills": "phoenix",
    "avg_salary": "135248"
  },
  {
    "skills": "electron",
    "avg_salary": "131000"
  },
  {
    "skills": "c",
    "avg_salary": "123329"
  },
  {
    "skills": "pytorch",
    "avg_salary": "120333"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120333"
  },
  {
    "skills": "seaborn",
    "avg_salary": "120000"
  },
  {
    "skills": "matlab",
    "avg_salary": "120000"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "120000"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "120000"
  },
  {
    "skills": "nosql",
    "avg_salary": "119330"
  },
  {
    "skills": "mongodb",
    "avg_salary": "118667"
  },
  {
    "skills": "snowflake",
    "avg_salary": "112543"
  },
  {
    "skills": "looker",
    "avg_salary": "110581"
  },
  {
    "skills": "pandas",
    "avg_salary": "110558"
  },
  {
    "skills": "node.js",
    "avg_salary": "110000"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "110000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "110000"
  },
  {
    "skills": "chainer",
    "avg_salary": "110000"
  },
  {
    "skills": "cassandra",
    "avg_salary": "108488"
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
    "skills": "rust",
    "avg_salary": "221844"
  },
  {
    "skills": "outlook",
    "avg_salary": "195000"
  },
  {
    "skills": "c++",
    "avg_salary": "186832"
  },
  {
    "skills": "splunk",
    "avg_salary": "182500"
  },
  {
    "skills": "swift",
    "avg_salary": "180000"
  },
  {
    "skills": "matlab",
    "avg_salary": "157650"
  },
  {
    "skills": "github",
    "avg_salary": "154800"
  },
  {
    "skills": "mongodb",
    "avg_salary": "150343"
  },
  {
    "skills": "go",
    "avg_salary": "145934"
  },
  {
    "skills": "looker",
    "avg_salary": "137283"
  },
  {
    "skills": "databricks",
    "avg_salary": "136300"
  },
  {
    "skills": "neo4j",
    "avg_salary": "136000"
  },
  {
    "skills": "java",
    "avg_salary": "135925"
  },
  {
    "skills": "snowflake",
    "avg_salary": "135244"
  },
  {
    "skills": "javascript",
    "avg_salary": "133924"
  },
  {
    "skills": "airflow",
    "avg_salary": "133167"
  },
  {
    "skills": "spark",
    "avg_salary": "132054"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "130640"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "130517"
  },
  {
    "skills": "sql",
    "avg_salary": "128678"
  },
  {
    "skills": "kafka",
    "avg_salary": "128614"
  },
  {
    "skills": "chef",
    "avg_salary": "125253"
  },
  {
    "skills": "ansible",
    "avg_salary": "125253"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "119951"
  },
  {
    "skills": "pyspark",
    "avg_salary": "117500"
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
    "skills": "svn",
    "avg_salary": "400000"
  },
  {
    "skills": "solidity",
    "avg_salary": "179000"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "golang",
    "avg_salary": "155000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "149000"
  },
  {
    "skills": "dplyr",
    "avg_salary": "147633"
  },
  {
    "skills": "vmware",
    "avg_salary": "147500"
  },
  {
    "skills": "terraform",
    "avg_salary": "146734"
  },
  {
    "skills": "twilio",
    "avg_salary": "138500"
  },
  {
    "skills": "gitlab",
    "avg_salary": "134126"
  },
  {
    "skills": "kafka",
    "avg_salary": "129999"
  },
  {
    "skills": "puppet",
    "avg_salary": "129820"
  },
  {
    "skills": "keras",
    "avg_salary": "127013"
  },
  {
    "skills": "pytorch",
    "avg_salary": "125226"
  },
  {
    "skills": "perl",
    "avg_salary": "124686"
  },
  {
    "skills": "ansible",
    "avg_salary": "124370"
  },
  {
    "skills": "hugging face",
    "avg_salary": "123950"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120647"
  },
  {
    "skills": "cassandra",
    "avg_salary": "118407"
  },
  {
    "skills": "notion",
    "avg_salary": "118092"
  },
  {
    "skills": "atlassian",
    "avg_salary": "117966"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "116712"
  },
  {
    "skills": "airflow",
    "avg_salary": "116387"
  },
  {
    "skills": "scala",
    "avg_salary": "115480"
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
    "skills": "vmware",
    "avg_salary": "375000"
  },
  {
    "skills": "yarn",
    "avg_salary": "340000"
  },
  {
    "skills": "fastapi",
    "avg_salary": "185000"
  },
  {
    "skills": "golang",
    "avg_salary": "178500"
  },
  {
    "skills": "rust",
    "avg_salary": "178500"
  },
  {
    "skills": "cobol",
    "avg_salary": "175000"
  },
  {
    "skills": "neo4j",
    "avg_salary": "165000"
  },
  {
    "skills": "no-sql",
    "avg_salary": "165000"
  },
  {
    "skills": "perl",
    "avg_salary": "164738"
  },
  {
    "skills": "postgresql",
    "avg_salary": "152412"
  },
  {
    "skills": "graphql",
    "avg_salary": "151950"
  },
  {
    "skills": "node",
    "avg_salary": "150000"
  },
  {
    "skills": "powershell",
    "avg_salary": "145000"
  },
  {
    "skills": "php",
    "avg_salary": "144490"
  },
  {
    "skills": "phoenix",
    "avg_salary": "142918"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "142829"
  },
  {
    "skills": "unity",
    "avg_salary": "140000"
  },
  {
    "skills": "jquery",
    "avg_salary": "138867"
  },
  {
    "skills": "zoom",
    "avg_salary": "137556"
  },
  {
    "skills": "gitlab",
    "avg_salary": "136068"
  },
  {
    "skills": "wire",
    "avg_salary": "134646"
  },
  {
    "skills": "airflow",
    "avg_salary": "134561"
  },
  {
    "skills": "c++",
    "avg_salary": "133925"
  },
  {
    "skills": "spark",
    "avg_salary": "132649"
  },
  {
    "skills": "swift",
    "avg_salary": "132500"
  }
]



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR DATA ENGINEEER___
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



_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________
_______________________________________________________________________________________________________________________________________________________________________________________________________



___OUTPUT FOR SENIOR DATA ENGINEER___
[
  {
    "skills": "arch",
    "avg_salary": "249000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "230000"
  },
  {
    "skills": "airtable",
    "avg_salary": "180000"
  },
  {
    "skills": "pytorch",
    "avg_salary": "175671"
  },
  {
    "skills": "keras",
    "avg_salary": "173700"
  },
  {
    "skills": "mongo",
    "avg_salary": "172808"
  },
  {
    "skills": "zoom",
    "avg_salary": "171545"
  },
  {
    "skills": "couchdb",
    "avg_salary": "170000"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "167500"
  },
  {
    "skills": "cassandra",
    "avg_salary": "167398"
  },
  {
    "skills": "sqlite",
    "avg_salary": "163333"
  },
  {
    "skills": "shell",
    "avg_salary": "162862"
  },
  {
    "skills": "terminal",
    "avg_salary": "162500"
  },
  {
    "skills": "mysql",
    "avg_salary": "158864"
  },
  {
    "skills": "node",
    "avg_salary": "158250"
  },
  {
    "skills": "c",
    "avg_salary": "158155"
  },
  {
    "skills": "angular",
    "avg_salary": "158008"
  },
  {
    "skills": "splunk",
    "avg_salary": "157547"
  },
  {
    "skills": "redis",
    "avg_salary": "157461"
  },
  {
    "skills": "kotlin",
    "avg_salary": "157105"
  },
  {
    "skills": "redshift",
    "avg_salary": "156521"
  },
  {
    "skills": "jupyter",
    "avg_salary": "156346"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "155510"
  },
  {
    "skills": "openstack",
    "avg_salary": "155500"
  },
  {
    "skills": "opencv",
    "avg_salary": "155000"
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
    "skills": "asana",
    "avg_salary": "215477"
  },
  {
    "skills": "airtable",
    "avg_salary": "201143"
  },
  {
    "skills": "redhat",
    "avg_salary": "189500"
  },
  {
    "skills": "watson",
    "avg_salary": "187417"
  },
  {
    "skills": "elixir",
    "avg_salary": "170824"
  },
  {
    "skills": "lua",
    "avg_salary": "170500"
  },
  {
    "skills": "slack",
    "avg_salary": "168219"
  },
  {
    "skills": "solidity",
    "avg_salary": "166980"
  },
  {
    "skills": "ruby on rails",
    "avg_salary": "166500"
  },
  {
    "skills": "rshiny",
    "avg_salary": "166436"
  },
  {
    "skills": "notion",
    "avg_salary": "165636"
  },
  {
    "skills": "objective-c",
    "avg_salary": "164500"
  },
  {
    "skills": "neo4j",
    "avg_salary": "163971"
  },
  {
    "skills": "dplyr",
    "avg_salary": "163111"
  },
  {
    "skills": "hugging face",
    "avg_salary": "160868"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "160581"
  },
  {
    "skills": "haskell",
    "avg_salary": "157500"
  },
  {
    "skills": "unity",
    "avg_salary": "156881"
  },
  {
    "skills": "airflow",
    "avg_salary": "155878"
  },
  {
    "skills": "codecommit",
    "avg_salary": "154684"
  },
  {
    "skills": "unreal",
    "avg_salary": "153278"
  },
  {
    "skills": "theano",
    "avg_salary": "153133"
  },
  {
    "skills": "zoom",
    "avg_salary": "151677"
  },
  {
    "skills": "bigquery",
    "avg_salary": "149292"
  },
  {
    "skills": "atlassian",
    "avg_salary": "148715"
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
    "skills": "c#",
    "avg_salary": "204903"
  },
  {
    "skills": "neo4j",
    "avg_salary": "189233"
  },
  {
    "skills": "cassandra",
    "avg_salary": "184289"
  },
  {
    "skills": "gitlab",
    "avg_salary": "184233"
  },
  {
    "skills": "ringcentral",
    "avg_salary": "182500"
  },
  {
    "skills": "vue",
    "avg_salary": "177462"
  },
  {
    "skills": "plotly",
    "avg_salary": "175633"
  },
  {
    "skills": "zoom",
    "avg_salary": "174755"
  },
  {
    "skills": "seaborn",
    "avg_salary": "172961"
  },
  {
    "skills": "watson",
    "avg_salary": "172380"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "168607"
  },
  {
    "skills": "planner",
    "avg_salary": "168500"
  },
  {
    "skills": "tidyverse",
    "avg_salary": "168375"
  },
  {
    "skills": "go",
    "avg_salary": "168254"
  },
  {
    "skills": "ansible",
    "avg_salary": "166075"
  },
  {
    "skills": "terminal",
    "avg_salary": "165000"
  },
  {
    "skills": "sqlite",
    "avg_salary": "164500"
  },
  {
    "skills": "spark",
    "avg_salary": "164094"
  },
  {
    "skills": "flask",
    "avg_salary": "163912"
  },
  {
    "skills": "airflow",
    "avg_salary": "163440"
  },
  {
    "skills": "jupyter",
    "avg_salary": "163059"
  },
  {
    "skills": "airtable",
    "avg_salary": "162667"
  },
  {
    "skills": "linux",
    "avg_salary": "161967"
  },
  {
    "skills": "keras",
    "avg_salary": "161855"
  },
  {
    "skills": "express",
    "avg_salary": "161373"
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
    "skills": "haskell",
    "avg_salary": "213000"
  },
  {
    "skills": "chef",
    "avg_salary": "207050"
  },
  {
    "skills": "sheets",
    "avg_salary": "195000"
  },
  {
    "skills": "spreadsheet",
    "avg_salary": "190000"
  },
  {
    "skills": "kotlin",
    "avg_salary": "184500"
  },
  {
    "skills": "slack",
    "avg_salary": "183850"
  },
  {
    "skills": "looker",
    "avg_salary": "166000"
  },
  {
    "skills": "clojure",
    "avg_salary": "166000"
  },
  {
    "skills": "golang",
    "avg_salary": "164492"
  },
  {
    "skills": "swift",
    "avg_salary": "163000"
  },
  {
    "skills": "excel",
    "avg_salary": "159622"
  },
  {
    "skills": "scala",
    "avg_salary": "157451"
  },
  {
    "skills": "rust",
    "avg_salary": "156907"
  },
  {
    "skills": "redis",
    "avg_salary": "155290"
  },
  {
    "skills": "julia",
    "avg_salary": "151050"
  },
  {
    "skills": "typescript",
    "avg_salary": "149684"
  },
  {
    "skills": "postgresql",
    "avg_salary": "149603"
  },
  {
    "skills": "redshift",
    "avg_salary": "148120"
  },
  {
    "skills": "airflow",
    "avg_salary": "144821"
  },
  {
    "skills": "bigquery",
    "avg_salary": "143461"
  },
  {
    "skills": "c",
    "avg_salary": "142345"
  },
  {
    "skills": "unify",
    "avg_salary": "142233"
  },
  {
    "skills": "qlik",
    "avg_salary": "140000"
  },
  {
    "skills": "flask",
    "avg_salary": "139938"
  },
  {
    "skills": "hugging face",
    "avg_salary": "139687"
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
    "skills": "cassandra",
    "avg_salary": "213333"
  },
  {
    "skills": "debian",
    "avg_salary": "196500"
  },
  {
    "skills": "neo4j",
    "avg_salary": "183840"
  },
  {
    "skills": "couchbase",
    "avg_salary": "166250"
  },
  {
    "skills": "assembly",
    "avg_salary": "157188"
  },
  {
    "skills": "asp.net core",
    "avg_salary": "155000"
  },
  {
    "skills": "ruby on rails",
    "avg_salary": "149500"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "148813"
  },
  {
    "skills": "node",
    "avg_salary": "145147"
  },
  {
    "skills": "aurora",
    "avg_salary": "144561"
  },
  {
    "skills": "express",
    "avg_salary": "143816"
  },
  {
    "skills": "go",
    "avg_salary": "142748"
  },
  {
    "skills": "julia",
    "avg_salary": "142500"
  },
  {
    "skills": "workfront",
    "avg_salary": "142430"
  },
  {
    "skills": "sharepoint",
    "avg_salary": "141454"
  },
  {
    "skills": "clojure",
    "avg_salary": "140000"
  },
  {
    "skills": "next.js",
    "avg_salary": "138433"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "137675"
  },
  {
    "skills": "mongo",
    "avg_salary": "137502"
  },
  {
    "skills": "alteryx",
    "avg_salary": "137500"
  },
  {
    "skills": "golang",
    "avg_salary": "136685"
  },
  {
    "skills": "node.js",
    "avg_salary": "136657"
  },
  {
    "skills": "looker",
    "avg_salary": "134431"
  },
  {
    "skills": "atlassian",
    "avg_salary": "134000"
  },
  {
    "skills": "c",
    "avg_salary": "133721"
  }
]
**/