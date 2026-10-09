SELECT DISTINCT d.department_name
FROM employees AS e
JOIN departments AS d ON e.department_id = d.department_id
WHERE e.salary = (SELECT MAX(salary) FROM employees);
