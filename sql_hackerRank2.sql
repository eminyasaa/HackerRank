--Weather Observation Station 4 
SELECT COUNT(CITY) - COUNT(DISTINCT(CITY)) FROM STATION;   

--Weather Observation Station 5

SELECT city, LENgth(city) FROM station ORDER BY LENgth(city), city limit 1 ;

SELECT city, LENgth(city) FROM station ORDER BY LENgth(city) DESC, city limit 1 ;

--Weather Observation Station 6 

SELECT DISTINCT city 
FROM station 
GROUP BY city 
HAVING LEFT(city,1) IN ('a','e','i','o','u');

--Weather Observation Station 7

SELECT DISTINCT CITY  FROM STATION 
GROUP BY city
HAVING RIGHT (city,1) IN ('a','e','i','o','u');

--Weather Observation Station 8

SELECT DISTINCT (CITY) FROM STATION
WHERE
    lower(substr(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u') AND
    lower(substr(CITY, length(CITY), 1)) IN ('a', 'e', 'i', 'o', 'u');
