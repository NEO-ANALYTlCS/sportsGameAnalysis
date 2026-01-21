SELECT 
    c.name AS category_name,
    COUNT(comp.id) AS total_competitions
FROM competitions comp
JOIN categories c 
    ON comp.category_id = c.id
GROUP BY c.name
ORDER BY total_competitions DESC;

SELECT 
    type,
    COUNT(*) AS total
FROM competitions
GROUP BY type;

SELECT 
    gender,
    COUNT(*) AS total_competitions
FROM competitions
GROUP BY gender;

SELECT 
    CASE 
        WHEN parent_id IS NULL THEN 'Parent Competition'
        ELSE 'Sub Competition'
    END AS competition_level,
    COUNT(*) AS total
FROM competitions
GROUP BY competition_level;

SELECT 
    id,
    name
FROM competitions
WHERE parent_id IS NULL;
