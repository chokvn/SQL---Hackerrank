(SELECT CITY, length(CITY) FROM STATION ORDER BY (LENGTH(CITY)) ASC, CITY ASC LIMIT 1)
UNION
(SELECT city, LENGTH(CITY) from station order by (length(city)) DESC, city ASC LIMIT 1);