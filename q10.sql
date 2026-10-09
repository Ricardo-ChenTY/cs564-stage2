SELECT e.employee_id
FROM employees AS e
WHERE NOT EXISTS (
  SELECT 1
  FROM dependents AS d
  WHERE d.employee_id = e.employee_id
);
