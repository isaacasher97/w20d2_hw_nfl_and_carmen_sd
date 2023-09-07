-- 1. List the names of all NFL teams'
SELECT name FROM teams;

-- 2. List the stadium name and head coach of all NFC teams
SELECT name, head_coach  FROM teams
WHERE conference = 'NFC';

-- 3. List the head coaches of the AFC South
SELECT head_coach  FROM teams
WHERE conference = 'AFC' AND division ILIKE 'south';

-- 4. The total number of players in the NFL
SELECT COUNT(*) FROM players;

-- 5. The team names and head coaches of the NFC North and AFC East
SELECT name, head_coach FROM teams
WHERE conference = 'AFC' AND division ILIKE 'east'
OR conference = 'NFC' AND division ILIKE 'north';

-- 6. The 50 players with the highest salaries
SELECT name, salary FROM players
ORDER BY salary DESC 
LIMIT 50;

-- 7. The average salary of all NFL players
SELECT AVG(salary) FROM players -- Output ==> 	1579692.539817232376


-- 8. The names and positions of players with a salary above 10_000_000
SELECT name, position, salary FROM players
WHERE salary > 10000000;

-- 9. The player with the highest salary in the NFL


-- 10. The name and position of the first 100 players with the lowest salaries


-- 11. The average salary for a DE in the nfl


-- 12. The names of all the players on the Buffalo Bills


-- 13. The total salary of all players on the New York Giants


-- 14. The player with the lowest salary on the Green Bay Packers