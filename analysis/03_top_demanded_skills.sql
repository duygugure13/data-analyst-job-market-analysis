SELECT COUNT(job_postings_fact.job_id) AS demand_count, skills_dim.skill_id, skills_dim.skills
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id=job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id=skills_job_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND job_work_from_home IS TRUE
GROUP BY skills_dim.skill_id
ORDER BY demand_count DESC
LIMIT 5;

/*
The results identify the five most frequently demanded skills in remote Data Analyst job postings.
SQL ranks first with 7,291 mentions, followed by Excel with 4,611, Python with 4,330, Tableau with 3,745, 
and Power BI with 2,609 mentions. SQL demonstrates the strongest market demand, while Excel and 
Python also appear as essential skills. These findings highlight the importance of database querying, 
spreadsheet management, programming, and data visualization in the Data Analyst job market.
*/
