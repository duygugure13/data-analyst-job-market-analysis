WITH skills_demand AS

(SELECT COUNT(job_postings_fact.job_id) AS demand_count, skills_dim.skill_id, skills_dim.skills
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id=job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id=skills_job_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND job_work_from_home IS TRUE AND salary_year_avg IS NOT NULL
GROUP BY skills_dim.skill_id),

 average_salary AS

(SELECT skills_dim.skill_id, skills, ROUND(AVG(salary_year_avg) ) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id=job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id=skills_job_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND salary_year_avg IS NOT NULL AND job_work_from_home IS TRUE
GROUP BY skills_dim.skill_id)

SELECT skills_demand.skill_id, skills_demand.skills, demand_count, avg_salary
FROM skills_demand
INNER JOIN average_salary ON average_salary.skill_id = skills_demand.skill_id
WHERE demand_count>10
ORDER BY demand_count DESC
LIMIT 25;

/*
The results combine skill demand and average annual salary to identify the most valuable skills to learn for a Data Analyst career. 
SQL ranks first with 398 job postings and an average annual salary of $97,237, followed by Excel with 256 postings and $87,288, 
Python with 236 postings and $101,397, and Tableau with 230 postings and $99,288. R and Power BI also demonstrate strong demand, 
with 148 and 110 postings respectively. Additionally, specialized skills such as Snowflake ($112,948), Azure ($111,225), AWS ($108,317), 
and Go ($115,320) offer competitive average salaries. Overall, the findings suggest prioritizing SQL, Excel, Python, Tableau, and R 
while considering cloud and advanced data technologies for further specialization.
*/
