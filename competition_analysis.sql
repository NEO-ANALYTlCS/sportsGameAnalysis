/* List all competitions along with their category name */

SELECT 
    comp.competition_id,
    comp.competition_name,
    cat.category_name
FROM competitions comp
JOIN categories cat
    ON comp.category_id = cat.category_id;

/* Count the number of competitions in each category */

SELECT 
    cat.category_name,
    COUNT(comp.competition_id) AS total_competitions
FROM categories cat
LEFT JOIN competitions comp
    ON cat.category_id = comp.category_id
GROUP BY cat.category_name
ORDER BY total_competitions DESC;

/* Find all competitions of type 'doubles'*/

SELECT 
    competition_id,
    competition_name,
    type,
    gender
FROM competitions
WHERE type = 'doubles';

/* Get competitions that belong to a specific category */

SELECT 
    comp.competition_id,
    comp.competition_name,
    cat.category_name
FROM competitions comp
JOIN categories cat
    ON comp.category_id = cat.category_id
WHERE cat.category_name = 'ITF Men';

/* Identify parent competitions and their sub-competitions */

SELECT 
    parent.competition_name AS parent_competition,
    child.competition_name AS sub_competition
FROM competitions parent
JOIN competitions child
    ON parent.competition_id = child.parent_id
ORDER BY parent_competition;

/* Analyze distribution of competition types by category */

SELECT 
    cat.category_name,
    comp.type,
    COUNT(*) AS total_competitions
FROM competitions comp
JOIN categories cat
    ON comp.category_id = cat.category_id
GROUP BY cat.category_name, comp.type
ORDER BY cat.category_name, total_competitions DESC;

/* List all competitions with no parent */

SELECT 
    competition_id,
    competition_name,
    type,
    gender
FROM competitions
WHERE parent_id IS NULL;
