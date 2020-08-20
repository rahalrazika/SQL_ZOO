-- /1/
SELECT id, title
 FROM movie
 WHERE yr=1962
-- /2/
SELECT yr FROM movie
  WHERE title = 'Citizen Kane';
-- /3/
SELECT id, title, yr FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr
-- /4/
SELECT id FROM actor 
WHERE name = 'Glenn Close'

--/5/
SELECT id FROM movie
WHERE title = 'Casablanca'

--/6/
SELECT name FROM actor
JOIN casting ON actor.id = casting.actorid
WHERE movieid=11768

-- /07/
SELECT name FROM actor
JOIN casting ON actor.id = casting.actorid
  WHERE casting.movieid = (SELECT id FROM movie WHERE title = 'Alien');

-- /08/
SELECT title FROM movie
  JOIN casting ON casting.movieid = movie.id
  WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford');

-- /09/
  SELECT title FROM movie
  JOIN casting ON casting.movieid = movie.id
  WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford') AND ORD != 1
-- /10/
SELECT title,name FROM movie 
JOIN casting ON casting.movieid = movie.id
JOIN actor ON actor.id = casting.actorid
WHERE yr = 1962 AND ORD = 1
