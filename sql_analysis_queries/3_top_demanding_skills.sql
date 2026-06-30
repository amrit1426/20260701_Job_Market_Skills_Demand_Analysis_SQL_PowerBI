/* Question: What are the most in-demand skills for data analysts?
 - Join job postings to inner join table similar to query 2
 - Identify the top 5 in-demand skills for a data analyst.
 - Focus on all job postings.
 - Why? Retrieves the top 5 skills with the highest demand in the job market, 
   providing insights into the most valuable skills for job seekers.*/
SELECT 
	skills,
	COUNT (skills_job_dim.job_id) AS skills_demand_count
FROM 
	job_postings_fact
INNER JOIN 
	skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN 
	skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
	job_title_short IN  ('Data Analyst', 'Business Analyst') AND 
	job_work_from_home = True
GROUP BY 
	skills
ORDER BY 
	skills_demand_count DESC 
LIMIT 5
-- ========================================================
-- Key Insights: Skill Demand from Job Market (Remote Jobs)
-- ========================================================

/*
SQL is the most in-demand skill with 8,557 job postings, making it the core requirement for data roles.
Excel and Python also show very high demand, highlighting the importance of both analysis and automation skills.
Visualization tools like Tableau and Power BI remain critical for data reporting and business insights.
*/
