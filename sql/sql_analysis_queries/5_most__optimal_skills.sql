/* Question: what are the most optimal skills to learn 
  (aka it's in high demand and a high-paying skill)?
- Identify skills in high demand and associated with high average salaries for analyst roles
- Why? Targets skills that offer job security (high demand) and financial benefits (high salaries),
  offering strategic insights for career development in data analysis */
SELECT
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY
    skills_dim.skill_id,
    skills_dim.skills
HAVING
    COUNT(skills_job_dim.job_id) > 50
ORDER BY
    demand_count DESC,
    avg_salary DESC
LIMIT 20;

-- =====================================================
-- Key Insights: Highest Paying Skills by Average Salary
-- =====================================================

/* 
SQL is the most in-demand skill with 3083 job postings, confirming it as a foundational requirement for data roles.
Cloud and big data skills like AWS, Azure, Spark, and Snowflake offer the highest average salaries ($105K–$113K range).
Tools such as Excel, Word, and PowerPoint show high usage but deliver comparatively lower average salaries.
*/ 
