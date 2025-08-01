--Weather Observation Station 9

SELECT DISTINCT(CITY) FROM STATION
GROUP BY city
HAVING LEFT (city,1) NOT IN ('a','e','i','o','u');

--Weather Observation Station 10

SELECT DISTINCT(CITY) FROM STATION
GROUP BY CITY
HAVING RIGHT (city,1) NOT IN ('a','e','i','o','u');

--Weather Observation Station 11

SELECT DISTINCT CITY
FROM STATION
WHERE 
      LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a','e','i','o','u')
   OR LOWER(SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('a','e','i','o','u');
 
--Weather Observation Statıon 12

SELECT DISTINCT (CITY) FROM STATION
WHERE 
     LEFT (city,1) NOT IN ('a','e','i','o','u') AND RIGHT (city,1) NOT IN ('a','e','i','o','u');

--Higher Than 75 Marks

SELECT Name FROM STUDENTS
WHERE Marks > 75 
ORDER BY RIGHT(Name, 3),  ID ;

