/*
Challenge reference:
https://www.hackerrank.com/challenges/weather-observation-station-19
*/

SELECT ROUND(POWER((POWER(MAX(LAT_N) - MIN(LAT_N), 2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)), 1/2), 4) FROM station;
