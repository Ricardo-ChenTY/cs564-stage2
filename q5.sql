SELECT c.country_name
FROM countries AS c
JOIN regions AS r ON c.region_id = r.region_id
WHERE r.region_name = 'Europe';
