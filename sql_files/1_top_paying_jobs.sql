SELECT 
    --job_id,
    job_title,
    job_location,
    job_schedule_type,
    company_dim.name company_name,
    --job_title_short,
    --job_work_from_home,
    salary_year_avg,
    job_posted_date
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
where job_title_short = 'Software Engineer'
    --AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
limit 10

/**
___OUTPUT FOR BUSINESS ANALYST___
  {
    "job_title": "Principal Economist / Scientist",
    "job_location": "San Mateo, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Roblox",
    "salary_year_avg": "387460.0",
    "job_posted_date": "2023-08-23 08:03:55"
  },
  {
    "job_title": "Lead Business Intelligence Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Noom",
    "salary_year_avg": "220000.0",
    "job_posted_date": "2023-08-29 18:26:36"
  },
  {
    "job_title": "Manager II, Applied Science - Marketplace Dynamics",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Uber",
    "salary_year_avg": "214500.0",
    "job_posted_date": "2023-12-18 08:02:37"
  },
  {
    "job_title": "Reference Data Business Analyst/Product Manager",
    "job_location": null,
    "job_schedule_type": "Full-time",
    "company_name": "Selby Jennings",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-05-30 22:00:00"
  },
  {
    "job_title": "Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Multicoin Capital",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-10-04 11:01:48"
  },
  {
    "job_title": "Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Multicoin Capital",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-12-21 13:01:17"
  },
  {
    "job_title": "Senior Business Intelligence Engineer",
    "job_location": "San Francisco, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Block",
    "salary_year_avg": "190500.0",
    "job_posted_date": "2023-07-18 10:03:38"
  },
  {
    "job_title": "Senior Economy Designer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Harnham",
    "salary_year_avg": "190000.0",
    "job_posted_date": "2023-06-21 18:11:35"
  },
  {
    "job_title": "Business Intelligence Engineer, Sponsored TV",
    "job_location": "Madrid, Spain",
    "job_schedule_type": "Full-time",
    "company_name": "Amazon",
    "salary_year_avg": "185000.0",
    "job_posted_date": "2023-12-12 16:40:37"
  },
  {
    "job_title": "Business Intelligence Analyst Lead",
    "job_location": "Charlotte, NC",
    "job_schedule_type": "Full-time",
    "company_name": "USAA",
    "salary_year_avg": "175000.0",
    "job_posted_date": "2023-02-05 12:27:05"
  }]
___OUTPUT FOR CLOUD ENGINEER___
  {
    "job_title": "ETL разработчиĸ",
    "job_location": "Russia",
    "job_schedule_type": "Full-time",
    "company_name": "Технологическая компания",
    "salary_year_avg": "280000.0",
    "job_posted_date": "2023-11-24 07:19:48"
  },
  {
    "job_title": "Tech Lead, Cloud Data Engine",
    "job_location": "Seattle, WA",
    "job_schedule_type": "Full-time",
    "company_name": "TikTok",
    "salary_year_avg": "221844.0",
    "job_posted_date": "2023-12-28 15:26:32"
  },
  {
    "job_title": "Head of Data Platform and Cloud",
    "job_location": "Poland",
    "job_schedule_type": "Full-time",
    "company_name": "Palta",
    "salary_year_avg": "221000.0",
    "job_posted_date": "2023-11-10 01:16:51"
  },
  {
    "job_title": "Lead Engineer, Test Infrastructure",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "MongoDB",
    "salary_year_avg": "204000.0",
    "job_posted_date": "2023-12-26 19:15:34"
  },
  {
    "job_title": "Research Engineer PEMFC Fuel Cell Stack (f/m/div.)",
    "job_location": "Renningen, Germany",
    "job_schedule_type": "Full-time",
    "company_name": "Bosch Group",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-01-16 22:00:05"
  },
  {
    "job_title": "Research Engineer for High Performance Cooling of eMobility...",
    "job_location": "Renningen, Germany",
    "job_schedule_type": "Full-time",
    "company_name": "Bosch Group",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-02-16 16:14:44"
  },
  {
    "job_title": "Staff Engineer, Service Architecture",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "MongoDB",
    "salary_year_avg": "197500.0",
    "job_posted_date": "2023-11-29 15:13:19"
  },
  {
    "job_title": "Enterprise Customer Engineering Manager, Data Analytics, Google Cloud",
    "job_location": "Atlanta, GA",
    "job_schedule_type": "Full-time",
    "company_name": "Google",
    "salary_year_avg": "195000.0",
    "job_posted_date": "2023-07-12 12:47:31"
  },
  {
    "job_title": "Cloud Operations Engineer (3rd Shift, FedRamp)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "MongoDB",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-09-29 19:31:01"
  },
  {
    "job_title": "Senior Mobile Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Rune Labs",
    "salary_year_avg": "180000.0",
    "job_posted_date": "2023-04-19 20:17:22"
  }]
___OUTPUT FOR DATA ANALYST___
[
  {
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Mantys",
    "salary_year_avg": "650000.0",
    "job_posted_date": "2023-02-20 15:13:33"
  },
  {
    "job_title": "Data base administrator",
    "job_location": "Belarus",
    "job_schedule_type": "Full-time",
    "company_name": "ЛАНИТ",
    "salary_year_avg": "400000.0",
    "job_posted_date": "2023-10-03 11:22:20"
  },
  {
    "job_title": "Director of Safety Data Analysis",
    "job_location": "Austin, TX",
    "job_schedule_type": "Full-time",
    "company_name": "Torc Robotics",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-04-21 08:01:55"
  },
  {
    "job_title": "Sr Data Analyst",
    "job_location": "Bethesda, MD",
    "job_schedule_type": "Full-time",
    "company_name": "Illuminate Mission Solutions",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-04-05 12:00:12"
  },
  {
    "job_title": "HC Data Analyst , Senior",
    "job_location": "Bethesda, MD",
    "job_schedule_type": "Full-time",
    "company_name": "Illuminate Mission Solutions",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-08-18 07:00:22"
  },
  {
    "job_title": "Head of Infrastructure Management & Data Analytics - Financial...",
    "job_location": "Jacksonville, FL",
    "job_schedule_type": "Full-time",
    "company_name": "Citigroup, Inc",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-07-03 11:30:01"
  },
  {
    "job_title": "Data Analyst",
    "job_location": "San Francisco, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Anthropic",
    "salary_year_avg": "350000.0",
    "job_posted_date": "2023-06-22 07:00:59"
  },
  {
    "job_title": "Head of Data Analytics",
    "job_location": "Austin, TX",
    "job_schedule_type": "Full-time",
    "company_name": "Care.com",
    "salary_year_avg": "350000.0",
    "job_posted_date": "2023-10-23 05:01:05"
  },
  {
    "job_title": "Director of Analytics",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Meta",
    "salary_year_avg": "336500.0",
    "job_posted_date": "2023-08-23 12:04:42"
  },
  {
    "job_title": "Research Scientist",
    "job_location": "San Francisco, CA",
    "job_schedule_type": "Full-time",
    "company_name": "OpenAI",
    "salary_year_avg": "285000.0",
    "job_posted_date": "2023-04-19 18:04:21"
  }]
___OUTPUT FOR SENIOR DATA ANALYST___
  {
    "job_title": "SVP, Data Analytics",
    "job_location": "Santa Monica, CA",
    "job_schedule_type": "Full-time",
    "company_name": "The Walt Disney Company",
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-06-22 09:01:01"
  },
  {
    "job_title": "Senior Director, Data",
    "job_location": "San Francisco, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Tinder, Inc.",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-06-30 07:01:13"
  },
  {
    "job_title": "Sr. Oracle Database Analyst",
    "job_location": "Springfield, VA",
    "job_schedule_type": "Full-time",
    "company_name": "General Dynamics",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-05-18 06:59:59"
  },
  {
    "job_title": "Senior Data Analyst SME",
    "job_location": "Albuquerque, NM",
    "job_schedule_type": "Full-time",
    "company_name": "Modern Technology Solutions",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-08-21 06:37:31"
  },
  {
    "job_title": "Senior Data Analyst / Quant Analyst 1 yr Fixed Contract $300,000 ...",
    "job_location": "New York, NY",
    "job_schedule_type": "Full-time",
    "company_name": "Eden Smith Group",
    "salary_year_avg": "340000.0",
    "job_posted_date": "2023-04-12 10:59:55"
  },
  {
    "job_title": "Sr Research Scientist- Privacy",
    "job_location": "San Jose, CA",
    "job_schedule_type": "Full-time",
    "company_name": "TikTok",
    "salary_year_avg": "274500.0",
    "job_posted_date": "2023-12-27 15:02:32"
  },
  {
    "job_title": "Senior Data Analyst",
    "job_location": "United States",
    "job_schedule_type": "Full-time",
    "company_name": "GradBay",
    "salary_year_avg": "240000.0",
    "job_posted_date": "2023-12-19 23:04:39"
  },
  {
    "job_title": "Senior Data Analyst",
    "job_location": "New York, NY",
    "job_schedule_type": "Full-time",
    "company_name": "GradBay",
    "salary_year_avg": "240000.0",
    "job_posted_date": "2023-12-18 17:59:56"
  },
  {
    "job_title": "Data Analytics - Senior Manager",
    "job_location": "Jersey City, NJ",
    "job_schedule_type": "Full-time",
    "company_name": "Citi",
    "salary_year_avg": "235040.0",
    "job_posted_date": "2023-08-04 18:00:06"
  },
  {
    "job_title": "Senior Data Analyst, Autonomous Vehicle Infrastructure",
    "job_location": "Santa Clara, CA",
    "job_schedule_type": "Full-time",
    "company_name": "NVIDIA",
    "salary_year_avg": "228000.0",
    "job_posted_date": "2023-11-16 20:00:43"
  }]
___OUTPUT FOR DATA ENGINEER___
  {
    "job_title": "Hybrid - Data Engineer - Up to $600k",
    "job_location": "New York, NY",
    "job_schedule_type": "Full-time",
    "company_name": "Durlston Partners",
    "salary_year_avg": "525000.0",
    "job_posted_date": "2023-04-05 16:08:42"
  },
  {
    "job_title": "Data Engineer (L4) - Games",
    "job_location": "New York, NY",
    "job_schedule_type": "Full-time",
    "company_name": "Netflix",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-14 10:47:26"
  },
  {
    "job_title": "Hybrid - Data Engineer",
    "job_location": "New York, NY",
    "job_schedule_type": "Full-time",
    "company_name": "Durlston Partners",
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-07-25 19:08:57"
  },
  {
    "job_title": "Hybrid - Data Engineer - Up to $500k",
    "job_location": "New York, NY",
    "job_schedule_type": "Full-time",
    "company_name": "Durlston Partners",
    "salary_year_avg": "400000.0",
    "job_posted_date": "2023-06-30 16:11:21"
  },
  {
    "job_title": "Data Engineer",
    "job_location": null,
    "job_schedule_type": "Full-time",
    "company_name": "Greenfield Source",
    "salary_year_avg": "390000.0",
    "job_posted_date": "2023-07-11 17:13:42"
  },
  {
    "job_title": "Director of Data Engineering",
    "job_location": "Miami, FL",
    "job_schedule_type": "Full-time",
    "company_name": "Lennar Corporation",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-06-23 10:19:37"
  },
  {
    "job_title": "Distinguished Data Engineer, Enterprise Data Platforms - Data Creation",
    "job_location": "San Francisco, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Capital One Financial Corporation",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-06-01 11:28:48"
  },
  {
    "job_title": "Data Engineer",
    "job_location": "Fort Belvoir, VA",
    "job_schedule_type": "Full-time",
    "company_name": "Chenega Corporation",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-04-25 10:07:14"
  },
  {
    "job_title": "VP, Data Engineer Epoch",
    "job_location": "New York, NY",
    "job_schedule_type": "Full-time",
    "company_name": "TD Bank",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-02-16 07:09:00"
  },
  {
    "job_title": "Data Engineer",
    "job_location": null,
    "job_schedule_type": "Full-time",
    "company_name": "Algo Capital Group",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-09-19 09:42:31"
  }]
___OUTPUT FOR SENIOR DATA ENGINEER___
  {
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "job_schedule_type": "Full-time",
    "company_name": "Winston Fox",
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16"
  },
  {
    "job_title": "Senior Data Engineer - VP",
    "job_location": "Lake Mary, FL",
    "job_schedule_type": "Full-time",
    "company_name": "The Bank of New York Mellon Corporation",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-05-01 12:34:38"
  },
  {
    "job_title": "Senior Data Engineer (Live Streaming)",
    "job_location": "United States",
    "job_schedule_type": "Full-time",
    "company_name": "Engtal",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-05-26 00:05:58"
  },
  {
    "job_title": "Senior Data Engineer (ETL Pipelines)",
    "job_location": "United States",
    "job_schedule_type": "Full-time",
    "company_name": "Engtal",
    "salary_year_avg": "350000.0",
    "job_posted_date": "2023-05-29 22:25:01"
  },
  {
    "job_title": "VP, Data Engineering & Platforms",
    "job_location": "Waterbury, CT",
    "job_schedule_type": "Full-time",
    "company_name": "The Travelers Companies, Inc",
    "salary_year_avg": "350000.0",
    "job_posted_date": "2023-05-18 07:09:53"
  },
  {
    "job_title": "Senior Data Engineer (Kafka)",
    "job_location": "United States",
    "job_schedule_type": "Full-time",
    "company_name": "Engtal",
    "salary_year_avg": "325000.0",
    "job_posted_date": "2023-05-15 18:40:02"
  },
  {
    "job_title": "Senior Data Engineer",
    "job_location": "United States",
    "job_schedule_type": "Full-time",
    "company_name": "Engtal",
    "salary_year_avg": "325000.0",
    "job_posted_date": "2023-05-07 19:13:02"
  },
  {
    "job_title": "Sr. Data Engineer - Python",
    "job_location": null,
    "job_schedule_type": "Full-time",
    "company_name": "Elite Hedge Fund",
    "salary_year_avg": "300000.0",
    "job_posted_date": "2023-01-31 18:07:12"
  },
  {
    "job_title": "Senior Quantitative Data Engineer - HFT",
    "job_location": null,
    "job_schedule_type": "Full-time",
    "company_name": "Capital Markets Recruitment",
    "salary_year_avg": "300000.0",
    "job_posted_date": "2023-10-19 15:31:07"
  },
  {
    "job_title": "Senior Staff Engineer – Global Operation Data Science (GODS)",
    "job_location": "Mountain View, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Coupang",
    "salary_year_avg": "274500.0",
    "job_posted_date": "2023-01-09 22:04:14"
  }]
___OUTPUT FOR DATA SCIENTIST___
  {
    "job_title": "Data Scientist",
    "job_location": "Madison, SD",
    "job_schedule_type": "Full-time",
    "company_name": "East River Electric Power Cooperative, Inc.",
    "salary_year_avg": "960000.0",
    "job_posted_date": "2023-05-04 19:06:06"
  },
  {
    "job_title": "Geographic Information Systems Analyst - GIS Analyst",
    "job_location": "New York, NY",
    "job_schedule_type": "Full-time",
    "company_name": "ReServe",
    "salary_year_avg": "585000.0",
    "job_posted_date": "2023-12-27 18:00:12"
  },
  {
    "job_title": "Staff Data Scientist/Quant Researcher",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Selby Jennings",
    "salary_year_avg": "550000.0",
    "job_posted_date": "2023-08-16 16:05:16"
  },
  {
    "job_title": "Staff Data Scientist - Business Analytics",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Selby Jennings",
    "salary_year_avg": "525000.0",
    "job_posted_date": "2023-09-01 19:24:02"
  },
  {
    "job_title": "Data Scientist (L5) - Member Product",
    "job_location": "California City, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Netflix",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-12-19 14:03:56"
  },
  {
    "job_title": "Data Scientist (L5) - Messaging",
    "job_location": "Los Gatos, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Netflix",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-17 08:04:12"
  },
  {
    "job_title": "Applied Data Science or Machine Learning Leader",
    "job_location": "San Francisco, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Glocomms",
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-10-06 18:02:32"
  },
  {
    "job_title": "Data Science Director – Audit",
    "job_location": "Charlotte, NC",
    "job_schedule_type": "Full-time",
    "company_name": "Truist Financial",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-04-11 06:24:58"
  },
  {
    "job_title": "Director, Data Science & Advanced Analytics",
    "job_location": "Austin, TX",
    "job_schedule_type": "Full-time",
    "company_name": "YETI Coolers",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-08-10 09:08:54"
  },
  {
    "job_title": "Director of Data Science (Hybrid)",
    "job_location": "Dodgeville, WI",
    "job_schedule_type": "Full-time",
    "company_name": "Lands End",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-03-03 13:04:58"
  }]
___OUTPUT FOR SENIOR DATA SCIENTIST___
  {
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "job_schedule_type": "Full-time",
    "company_name": "MSP Staffing  LTD",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43"
  },
  {
    "job_title": "Senior Data Scientist",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Glocomms",
    "salary_year_avg": "475000.0",
    "job_posted_date": "2023-01-31 16:03:46"
  },
  {
    "job_title": "VP Data Science & Research",
    "job_location": "Menlo Park, CA",
    "job_schedule_type": "Full-time",
    "company_name": "WhatsApp",
    "salary_year_avg": "463500.0",
    "job_posted_date": "2023-11-08 12:23:39"
  },
  {
    "job_title": "VP, Data Science & AI",
    "job_location": "Menlo Park, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Deepcell",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-08-29 07:06:14"
  },
  {
    "job_title": "Director Data & Analytics",
    "job_location": "Atlanta, GA",
    "job_schedule_type": "Full-time",
    "company_name": "Freeman",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-07-19 10:32:49"
  },
  {
    "job_title": "Sr AI/Data Science Director-Gastrointestinal",
    "job_location": "Santa Clara, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Medtronic",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-03-03 13:03:56"
  },
  {
    "job_title": "Senior Data Scientist",
    "job_location": null,
    "job_schedule_type": "Full-time",
    "company_name": "Algo Capital Group",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-10-09 19:23:59"
  },
  {
    "job_title": "Senior Data Scientist",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Algo Capital Group",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-08-30 10:06:34"
  },
  {
    "job_title": "Senior Data Scientist",
    "job_location": null,
    "job_schedule_type": "Full-time",
    "company_name": "Algo Capital Group",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-10-17 10:02:23"
  },
  {
    "job_title": "Sr. Manager, Data Science",
    "job_location": "San Jose, CA",
    "job_schedule_type": "Full-time",
    "company_name": "eBay",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-03-05 07:03:34"
  }]
___OUTPUT FOR MACHINE LEARNING ENGINEER___
  {
    "job_title": "Principal Machine Learning Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Storm5",
    "salary_year_avg": "325000.0",
    "job_posted_date": "2023-11-24 14:25:28"
  },
  {
    "job_title": "Senior Machine Learning Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Harnham",
    "salary_year_avg": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17"
  },
  {
    "job_title": "Senior AI Platform Engineer",
    "job_location": "Santa Clara, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Nvidia",
    "salary_year_avg": "315000.0",
    "job_posted_date": "2023-07-23 14:02:45"
  },
  {
    "job_title": "Machine Learning Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "orbit",
    "salary_year_avg": "300000.0",
    "job_posted_date": "2023-11-24 18:02:30"
  },
  {
    "job_title": "Research Scientist, Machine Learning",
    "job_location": "San Francisco, CA",
    "job_schedule_type": "Full-time",
    "company_name": "OpenAI",
    "salary_year_avg": "285000.0",
    "job_posted_date": "2023-01-31 12:02:49"
  },
  {
    "job_title": "Lead Machine Learning Engineer, Risk Data Mining",
    "job_location": "San Jose, CA",
    "job_schedule_type": "Full-time",
    "company_name": "TikTok",
    "salary_year_avg": "284000.0",
    "job_posted_date": "2023-05-27 14:07:17"
  },
  {
    "job_title": "Lead SoC Architect, NPU AI/ML",
    "job_location": "United States",
    "job_schedule_type": "Full-time",
    "company_name": "Samsung Research America",
    "salary_year_avg": "270000.0",
    "job_posted_date": "2023-11-10 02:04:01"
  },
  {
    "job_title": "AI Architect",
    "job_location": "Pune, Maharashtra, India",
    "job_schedule_type": "Full-time",
    "company_name": "Bosch Group",
    "salary_year_avg": "267000.0",
    "job_posted_date": "2023-11-21 21:12:09"
  },
  {
    "job_title": "Principal Machine Learning Research Scientist (Deep Learning)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Acceler8 Talent",
    "salary_year_avg": "262500.0",
    "job_posted_date": "2023-03-01 20:28:07"
  },
  {
    "job_title": "Machine Learning Researcher",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Acceler8 Talent",
    "salary_year_avg": "262500.0",
    "job_posted_date": "2023-03-13 14:28:34"
  }]
___OUTPUT FOR SOFTWARE ENGINEER___
  {
    "job_title": "Sr Staff Data Engineer-Software Engineering",
    "job_location": "St. Louis, MO",
    "job_schedule_type": "Full-time",
    "company_name": "Bayer",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-03-26 09:11:09"
  },
  {
    "job_title": "SQL Developer",
    "job_location": "Russia",
    "job_schedule_type": "Full-time",
    "company_name": "SmartBrain",
    "salary_year_avg": "320000.0",
    "job_posted_date": "2023-12-06 14:18:56"
  },
  {
    "job_title": "Principal Software Engineer, Data Engineering (Peninsula, CA)",
    "job_location": "San Mateo, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Roblox",
    "salary_year_avg": "307710.0",
    "job_posted_date": "2023-03-15 15:06:17"
  },
  {
    "job_title": "Staff Software Engineer - Data Science",
    "job_location": "New York, NY",
    "job_schedule_type": "Full-time",
    "company_name": "Datadog",
    "salary_year_avg": "267000.0",
    "job_posted_date": "2023-08-07 13:19:23"
  },
  {
    "job_title": "Principal Java Developer Equities Data Analytics",
    "job_location": null,
    "job_schedule_type": "Full-time",
    "company_name": "Archer IT",
    "salary_year_avg": "265000.0",
    "job_posted_date": "2023-07-10 16:00:05"
  },
  {
    "job_title": "Senior Software Engineer - Streaming / Real time, Ads Data",
    "job_location": "Seattle, WA",
    "job_schedule_type": "Full-time",
    "company_name": "TikTok",
    "salary_year_avg": "260775.0",
    "job_posted_date": "2023-12-30 14:28:03"
  },
  {
    "job_title": "Staff Software Engineer - MLOps",
    "job_location": "Sydney NSW, Australia",
    "job_schedule_type": "Full-time",
    "company_name": "Rokt",
    "salary_year_avg": "257500.0",
    "job_posted_date": "2023-07-06 10:16:46"
  },
  {
    "job_title": "Staff Software Engineer - Core-Simulator and Autonomy Metrics",
    "job_location": "Mountain View, CA",
    "job_schedule_type": "Full-time",
    "company_name": "Aurora Innovation",
    "salary_year_avg": "245500.0",
    "job_posted_date": "2023-04-20 11:02:08"
  },
  {
    "job_title": "Senior Software Engineer",
    "job_location": "Sydney NSW, Australia",
    "job_schedule_type": "Full-time",
    "company_name": "ROKT",
    "salary_year_avg": "245000.0",
    "job_posted_date": "2023-09-29 18:23:27"
  },
  {
    "job_title": "Principal Big Data Software Engineer",
    "job_location": "California",
    "job_schedule_type": "Full-time",
    "company_name": "Trulia",
    "salary_year_avg": "240000.0",
    "job_posted_date": "2023-03-12 06:45:03"
  }]
**/