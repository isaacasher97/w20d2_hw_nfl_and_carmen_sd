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
SELECT AVG(salary) FROM players -- Output ==> 1579692.539817232376


-- 8. The names and positions of players with a salary above 10_000_000
SELECT name, position, salary FROM players
WHERE salary > 10000000;

-- 9. The player with the highest salary in the NFL
SELECT * FROM players
ORDER BY salary DESC
LIMIT 1;

-- 10. The name and position of the first 100 players with the lowest salaries
SELECT name, position FROM players
ORDER BY salary ASC
LIMIT 100;

-- 11. The average salary for a DE in the nfl
SELECT AVG(salary) FROM players
WHERE position ILIKE 'de'; -- Output ==> 2161326.377049180328

-- 12. The names of all the players on the Buffalo Bills
-- Answer 1 - without joining just using the team_id
SELECT name
FROM players
WHERE team_id = 1;

--Answer 2 - Doing an inner join and filtering list to SELECT just the Player name
SELECT players.name FROM players
JOIN teams
ON players.team_id = teams.id
WHERE team_id = 1


-- 13. The total salary of all players on the New York Giants
SELECT SUM(salary) FROM players
WHERE team_id = 2;

-- 14. The player with the lowest salary on the Green Bay Packers

--Answer 1 - Not using Join
SELECT * 
FROM players
WHERE team_id = 23
ORDER BY salary ASC
LIMIT 1

--Answer 2 - Using Inner Join
SELECT * 
FROM players
JOIN teams
ON players.team_id = teams.id
WHERE team_id = 23
ORDER BY salary ASC
LIMIT 1;