
-- Introducing the world table of countries
SELECT population FROM world
  WHERE name = 'Germany'
-- Scandinavia
SELECT name, population FROM world
  WHERE name IN ( 'Sweden', 'Norway','Denmark');
--Just the right size
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;