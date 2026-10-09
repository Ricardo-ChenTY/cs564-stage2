SELECT e.first_name, e.last_name, e.salary,
       m.first_name AS manager_first_name,
       m.last_name AS manager_last_name,
       m.salary AS manager_salary
FROM employees AS e
JOIN employees AS m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary
ORDER BY e.salary DESC;
