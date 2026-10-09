SELECT manager_id, salary
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);
