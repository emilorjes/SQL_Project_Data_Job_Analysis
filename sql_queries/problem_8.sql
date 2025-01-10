SELECT
    qurter_one_job_postings.job_title_short,
    qurter_one_job_postings.job_location,
    qurter_one_job_postings.job_via,
    qurter_one_job_postings.job_posted_date::DATE,
    qurter_one_job_postings.salary_year_avg
FROM (
    SELECT *
    FROM january_jobs

    UNION ALL

    SELECT *
    FROM february_jobs

    UNION ALL

    SELECT *
    FROM march_jobs
) AS qurter_one_job_postings
WHERE 
    qurter_one_job_postings.salary_year_avg > 70000 AND
    qurter_one_job_postings.job_title_short = 'Data Analyst'
ORDER BY 
    qurter_one_job_postings.salary_year_avg DESC;