/*
Challenge reference:
https://www.hackerrank.com/challenges/weather-observation-station-12
*/

SELECT DISTINCT city FROM station
WHERE ((UPPER(city) NOT RLIKE '^[AEIOU].*$')
AND (UPPER(city) NOT RLIKE '^.*[AEIOU]$'));
