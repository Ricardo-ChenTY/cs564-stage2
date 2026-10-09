SELECT COUNT(*) AS employee_count
FROM employees AS e
JOIN departments AS d ON e.department_id = d.department_id
JOIN locations AS l ON d.location_id = l.location_id
JOIN countries AS c ON l.country_id = c.country_id
JOIN regions AS r ON c.region_id = r.region_id
WHERE r.region_name = 'Europe';
