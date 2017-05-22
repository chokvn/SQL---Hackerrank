/*
Challenge reference:
https://www.hackerrank.com/challenges/average-population-of-each-continent
*/

SELECT country.continent, FLOOR(AVG(city.population))
FROM country INNER JOIN city ON country.code = city.countrycode GROUP BY country.continent;
