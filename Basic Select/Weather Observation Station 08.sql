/*
Challenge reference:
https://www.hackerrank.com/challenges/weather-observation-station-8

Contrary to previous two exercises, RLIKE functions just fine here.
UPPER(city) used to avoid [AEIOUaeiou] in RLIKE condition.
*/
SELECT DISTINCT city FROM station WHERE UPPER(city) RLIKE '^[AEIOU].*[AEIOU]$';
