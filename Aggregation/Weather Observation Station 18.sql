/*
Challenge reference:
https://www.hackerrank.com/challenges/weather-observation-station-18
*/

SELECT ROUND((MAX(LAT_N) - MIN(LAT_N))+(MAX(LONG_W) - MIN(LONG_W)),4) FROM station;
