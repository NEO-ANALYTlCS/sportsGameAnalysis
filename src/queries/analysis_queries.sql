-- All competitors with rank & points
SELECT c.name, r.rank, r.points
FROM competitors c
JOIN competitor_rankings r
ON c.competitor_id = r.competitor_id;

-- Top 5 competitors
SELECT c.name, r.rank, r.points
FROM competitors c
JOIN competitor_rankings r
ON c.competitor_id = r.competitor_id
ORDER BY r.rank
LIMIT 5;

-- Stable rank (no movement)
SELECT c.name, r.rank
FROM competitors c
JOIN competitor_rankings r
ON c.competitor_id = r.competitor_id
WHERE r.movement = 0;

-- Total points by country
SELECT c.country, SUM(r.points) AS total_points
FROM competitors c
JOIN competitor_rankings r
ON c.competitor_id = r.competitor_id
WHERE c.country = 'Croatia';

-- Competitors per country
SELECT country, COUNT(*) AS competitor_count
FROM competitors
GROUP BY country;

-- Highest points scorer (current week)
SELECT c.name, r.points
FROM competitors c
JOIN competitor_rankings r
ON c.competitor_id = r.competitor_id
ORDER BY r.points DESC
LIMIT 1;
