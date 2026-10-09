SELECT j.job_title, j.max_salary - AVG(e.salary) AS salary_gap
FROM jobs AS j
LEFT JOIN employees AS e ON e.job_id = j.job_id
GROUP BY j.job_id, j.job_title, j.max_salary
ORDER BY salary_gap DESC;
