/*
Challenge reference:
https://www.hackerrank.com/challenges/what-type-of-triangle
*/

SELECT CASE
WHEN A + B <= C OR A + C <= B OR B + C <=A then "Not A Triangle"
WHEN A = B AND B = C then "Equilateral"
WHEN A = B OR B = C OR A = C then "Isosceles"
ELSE 'Scalene'
END AS triangles_type
FROM triangles;
