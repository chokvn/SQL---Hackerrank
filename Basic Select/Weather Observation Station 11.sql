/*
Challenge reference:
https://www.hackerrank.com/challenges/weather-observation-station-11
*/

SELECT DISTINCT city FROM station WHERE UPPER(city) NOT RLIKE '^[AEIOU].*[AEIOU]$';
