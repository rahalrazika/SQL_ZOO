--List each country name where the population is larger than that of 'Russia'.
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

-- Richer than UK
SELECT name
FROM world
WHERE continent = 'Europe' AND gdp/population>(SELECT gdp/population FROM world  
WHERE name= 'United Kingdom'
)

-- Neighbours of Argentina and Australia

SELECT name,continent FROM  world 
WHERE continent  IN ( SELECT continent FROM world  WHERE 
name = 'Argentina' OR name = 'Australia') ORDER BY name

-- Between Canada and Poland
SELECT name, population 
FROM world 
WHERE population > ( SELECT population FROM world WHERE name = 'Canada') 
AND population < ( SELECT population FROM world WHERE name = 'Poland')

-- Percentages of Germany
SELECT name, CONCAT((ROUND(100*population/(SELECT population FROM world 
WHERE name = 'Germany'))), '%') FROM world
  WHERE continent = 'Europe'

-- Largest in each continent
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)


-- First country of each continent (alphabetically)
SELECT
 continent, name
 FROM world x
  WHERE 
  name <= ALL(SELECT name FROM world y WHERE x.continent = y.continent);


-- Difficult Questions That Utilize Techniques Not Covered In Prior Sections
SELECT
name, continent, population
 FROM world x
  WHERE 
 25000000  >=  ALL(SELECT population  FROM world y WHERE x.continent = y.continent);

 --Some countries have populations more than three times
 SELECT name, continent FROM world x
  WHERE population > ALL(SELECT 3*population FROM world y WHERE x.continent = y.continent
 AND x.name != y.name);