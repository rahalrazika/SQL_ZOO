-- /1/
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER';

-- /2/
SELECT id,stadium,team1,team2
  FROM game
WHERE id = 1012

-- /3/
SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
  WHERE teamid = 'GER';

-- /4/
SELECT team1, team2, player
FROM game 
JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%'

-- /5/
SELECT player, teamid, coach, gtime
  FROM goal 
 JOIN eteam ON  (goal.teamid = eteam.id)
 WHERE gtime<=10

 --/6/
 SELECT mdate, teamname FROM game 
JOIN eteam ON (team1=eteam.id)
WHERE eteam.coach = 'Fernando Santos';

-- /7/
SELECT player FROM goal 
JOIN game ON (goal.matchid = game.id)
WHERE stadium = 'National Stadium, Warsaw'

--/8/
SELECT DISTINCT player
FROM game JOIN goal ON matchid = id 
WHERE teamid!='GER' AND (team1 = 'GER' OR team2 = 'GER')

-- /9/
SELECT teamname, COUNT(player)
  FROM eteam JOIN goal ON id=teamid
  GROUP BY teamname;

-- /10/

SELECT stadium, COUNT(player) FROM game 
JOIN goal ON goal.matchid = game.id
GROUP BY stadium; 

-- /11/

SELECT matchid, mdate, COUNT(teamid)
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL') GROUP BY matchid, mdat