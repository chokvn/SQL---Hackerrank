/*
Challenge reference:
https://www.hackerrank.com/challenges/weather-observation-station-9
*/

SELECT DISTINCT city FROM station WHERE UPPER(city) NOT RLIKE '^[AEIOU].*$';
