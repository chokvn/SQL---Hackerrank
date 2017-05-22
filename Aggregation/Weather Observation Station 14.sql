/*
Challenge reference:
https://www.hackerrank.com/challenges/weather-observation-station-14
*/

SELECT ROUND(MAX(LAT_N), 4) FROM station WHERE LAT_N < 137.2345;
