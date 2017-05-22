/*
Challenge reference:
https://www.hackerrank.com/challenges/weather-observation-station-16
*/

SELECT ROUND(MIN(LAT_N), 4) FROM station WHERE LAT_N > 38.7789;
