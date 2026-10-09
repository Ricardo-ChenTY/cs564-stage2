SELECT d.department_name,
       COUNT(e.employee_id) AS employee_count,
       SUM(e.salary) AS total_salary
FROM departments AS d
JOIN locations AS l ON d.location_id = l.location_id
JOIN employees AS e ON e.department_id = d.department_id
WHERE l.country_id = 'US'
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.employee_id) > 1
ORDER BY total_salary DESC;
