WITH top_paying_jobs AS (

SELECT job_id, job_title, name AS company_name, salary_year_avg
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst' AND
 salary_year_avg IS NOT NULL AND
 job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10)

SELECT top_paying_jobs.job_id, job_title, company_name, salary_year_avg, skills_dim.skill_id, skills_dim.skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON skills_job_dim.job_id = top_paying_jobs.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY salary_year_avg DESC;

/*
The analysis examines the technical skills required across the highest-paying Data Analyst job postings. 
SQL is the most consistently required skill, appearing in all eight job postings represented in the results,
followed by Python in seven and Tableau in six. Other frequently appearing skills include R, Excel, Pandas,
Snowflake, Power BI, AWS, Azure, and NumPy. These findings suggest that employers prioritize database management,
 programming, data manipulation, cloud technologies, and data visualization when recruiting for high-paying Data Analyst positions.
*/
