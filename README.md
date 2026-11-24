# Introduction

This project explores the Data Analyst job market using SQL and real-world job posting data. The main goal is to identify the highest-paying job opportunities, the most demanded technical skills, and the skills that offer the best combination of salary and job demand.

# Background

The dataset used in this project was provided through [Luke Barousse's SQL Course](https://lukebarousse.com/sql). The original dataset files can be accessed through this [Google Drive folder](https://drive.google.com/drive/folders/1moeWYoUtUklJO6NJdWo9OV8zWjRn0rjN). It contains job posting information, company details, salary data, and the skills associated with different job positions.

Using this dataset, I wanted to explore the Data Analyst job market and answer five key questions:

- What are the highest-paying Data Analyst jobs?
- What skills are required for the highest-paying Data Analyst positions?
- Which skills are the most demanded in the job market?
- Which skills are associated with the highest average salaries?
- What are the most optimal skills to learn based on both salary and demand?

# Tools I Used

- **SQL (PostgreSQL):** Used for data exploration, querying, filtering, joining, and analyzing job market trends.
- **pgAdmin 4:** Used for database management and executing SQL queries.
- **Visual Studio Code:** Used for writing and organizing SQL scripts.
- **GitHub:** Used for project documentation and version control.

# The Analysis

The analysis consists of five main SQL queries, each addressing a specific research question.

### 1. Top-Paying Data Analyst Jobs

Identified the 10 highest-paying Data Analyst job postings based on average annual salaries. The results highlight opportunities such as Data Analyst at Mantys ($650,000), Director of Analytics at Meta ($336,500), and Associate Director – Data Insights at AT&T ($255,829.50).

**Results:** [Top-Paying Jobs](results/top_paying_jobs.csv)

### 2. Skills Required for Top-Paying Data Analyst Jobs

Examined the technical skills associated with the highest-paying positions. SQL appeared in eight distinct job postings, followed by Python in seven and Tableau in six. Other frequently appearing skills included R, Excel, Pandas, Snowflake, and Power BI.

**Results:** [Skills Required for Top-Paying Jobs](results/top_paying_jobs_skills.csv)

### 3. Top-Demanded Data Analyst Skills

Identified the five most frequently requested skills in remote Data Analyst job postings:

| Skill | Demand Count |
|---|---:|
| SQL | 7,291 |
| Excel | 4,611 |
| Python | 4,330 |
| Tableau | 3,745 |
| Power BI | 2,609 |

SQL leads the list by a considerable margin, demonstrating its importance in the Data Analyst job market.

**Results:** [Top-Demanded Skills](results/top_demanded_skills.csv)

### 4. Top-Paying Data Analyst Skills

Ranked skills according to their average annual salaries in remote Data Analyst job postings. PySpark ranked first ($208,172), followed by Bitbucket ($189,155), Watson ($160,515), Couchbase ($160,515), and DataRobot ($155,486).

These results highlight the salary potential associated with specialized technologies and advanced technical skills.

**Results:** [Top-Paying Skills](results/top_paying_skills.csv)

### 5. Optimal Skills to Learn

Combined skill demand and average annual salary to identify valuable skills for aspiring Data Analysts. SQL ranked first with 398 job postings and an average salary of $97,237, followed by Excel (256 postings, $87,288), Python (236 postings, $101,397), and Tableau (230 postings, $99,288).

This analysis highlights skills that offer a strong combination of market demand and earning potential.

**Results:** [Optimal Skills to Learn](results/optimal_skills_to_learn.csv)

# What I Learned

Through this project, I improved my SQL and data analysis skills, particularly in:

- Writing complex SQL queries to analyze real-world datasets.
- Using different types of JOINs to combine relational tables.
- Applying Common Table Expressions (CTEs) to structure complex queries.
- Using aggregate functions such as COUNT(), AVG(), and ROUND().
- Filtering and grouping data to identify meaningful patterns.
- Combining multiple analyses to derive insights from job market data.
- Using SQL to support data-driven career decisions.

# Conclusions

This project provided valuable insights into the Data Analyst job market and the relationship between technical skills, job demand, and salary potential.

The findings highlight SQL, Excel, Python, and Tableau as particularly valuable skills due to their strong market demand and competitive average salaries. At the same time, specialized technologies such as PySpark and cloud-related tools demonstrate considerable salary potential.

Overall, the analysis emphasizes the importance of developing a combination of foundational and specialized technical skills to remain competitive in the Data Analyst job market.
