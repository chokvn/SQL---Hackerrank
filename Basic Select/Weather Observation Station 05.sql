/*
Challenge reference:
https://www.hackerrank.com/challenges/weather-observation-station-5

This can also be done with 2 select statements without union.
*/

(SELECT CITY, length(CITY) FROM STATION ORDER BY (LENGTH(CITY)) ASC, CITY ASC LIMIT 1)
UNION
(SELECT city, LENGTH(CITY) from station order by (length(city)) DESC, city ASC LIMIT 1);
