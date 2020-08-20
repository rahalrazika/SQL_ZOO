-- Total world population
SELECT SUM(population)
FROM world

-- List of continents
SELECT DISTINCT
  continent FROM
  world;
-- GDP of Africa
SELECT SUM(gdp) FROM world 
WHERE continent = 'Africa'

-- Count the big countries
SELECT COUNT(*) FROM world 
WHERE area >= 1000000

-- Baltic states population

SELECT SUM(population) FROM world 
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

-- Counting the countries of each continent
SELECT continent, COUNT(name) FROM world 
GROUP BY continent

-- Counting big countries in each continent

SELECT continent, COUNT(name) FROM world 
WHERE population >= 10000000
GROUP BY continent 

-- Counting big continents
SELECT continent FROM world 
 GROUP BY continent
HAVING SUM(population) >= 100000000