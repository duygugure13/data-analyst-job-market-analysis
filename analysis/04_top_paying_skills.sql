SELECT skills, ROUND(AVG(salary_year_avg) ) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id=job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id=skills_job_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND salary_year_avg IS NOT NULL AND job_work_from_home IS TRUE
GROUP BY skills_dim.skill_id
ORDER BY avg_salary DESC
LIMIT 25;

/*
The analysis identifies the 25 highest-paying skills based on average annual salaries in remote Data Analyst positions. 
PySpark ranks first with an average salary of $208,172, followed by Bitbucket ($189,155), Watson and Couchbase (both $160,515), 
and DataRobot ($155,486). Other high-paying skills include GitLab, Swift, Jupyter, Pandas, Elasticsearch, Golang, NumPy, and Databricks. 
The results indicate that specialized technologies related to big data, programming, machine learning, cloud infrastructure, 
and development environments are associated with higher average salaries.
*/
