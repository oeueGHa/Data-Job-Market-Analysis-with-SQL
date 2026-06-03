SELECT 
    job_id,
    --job_title_short,
    job_work_from_home,
    salary_year_avg
FROM job_postings_fact
where job_title_short IN ('Data Analyst')
ORDER BY salary_hour_avg DESC
limit 10