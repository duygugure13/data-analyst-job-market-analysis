SELECT job_id, job_title, job_postings_fact.company_id, name AS company_name, salary_year_avg, job_via, job_posted_date
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst' AND
 salary_year_avg IS NOT NULL AND
 job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;

/*
The results identify the 10 highest-paying Data Analyst job postings for remote positions. Mantys offers 
the highest average annual salary at $650,000, followed by Director of Analytics at Meta ($336,500) and
Associate Director – Data Insights at AT&T ($255,829.50). Other high-paying opportunities include Data Analyst at Pinterest ($232,423),
Data Analyst at UCLA Health ($217,000), and Principal Data Analyst at SmartAsset ($205,000). The results demonstrate that senior-level,
principal, and specialized analytics positions can offer significantly higher salaries.
*/
