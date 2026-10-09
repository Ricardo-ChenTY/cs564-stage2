SELECT m.first_name, m.last_name
FROM employees AS m
WHERE EXISTS (
  SELECT 1
  FROM employees AS e
  WHERE e.manager_id = m.employee_id
);
