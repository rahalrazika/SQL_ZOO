-- Winners from 1950
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

-- 1962 Literature
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

-- Show the year and subject that won 'Albert Einstein' his prize.

SELECT  yr, subject
FROM nobel
WHERE 
winner = 'Albert Einstein'

-- Give the name of the 'Peace' winners since the year 2000, including 2000.
SELECT winner 
FROM nobel
WHERE 
subject = 'Peace'AND yr >= 2000

-- Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
SELECT yr, subject, winner 
FROM nobel 
WHERE 
subject = 'Literature' AND yr BETWEEN 1980 AND 1989 
 
 -- Show all details of the presidential winners
 SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama');

-- Show the winners with first name John
SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

-- Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
 SELECT yr, subject, winner
FROM nobel
WHERE 
(yr = 1980 AND subject = 'Physics') OR (yr = 1984 AND subject = 'Chemistry')

-- Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT yr, subject,  winner
FROM nobel
WHERE yr = 1980 AND subject <> 'Medicine' AND subject <> 'Chemistry'

-- Early Medicine, Late Literature
SELECT yr, subject, winner
FROM nobel 
WHERE (yr < 1910 AND subject = 'Medicine') OR (yr >= 2004 AND subject = 'Literature')

-- Find all details of the prize won by PETER GRÜNBERG

SELECT * 
FROM nobel 
WHERE winner = 'PETER GRÜNBERG'

-- Find all details of the prize won by EUGENE O'NEILL

SELECT *
  FROM nobel
 WHERE winner = 'EUGENE O''NEILL'

 -- Knights of the realm
 SELECT winner, yr, subject
  FROM nobel
 WHERE winner LIKE 'Sir%' ORDER BY yr DESC;

-- Chemistry and Physics last
SELECT winner, subject 
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject,winner; 
