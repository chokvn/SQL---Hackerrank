/*
Challenge reference:
https://www.hackerrank.com/challenges/the-pads
*/

SELECT CONCAT(name,'(',LEFT(occupation, 1),')')
    FROM OCCUPATIONS
    ORDER BY NAME ASC);
SELECT CONCAT('There are total ',COUNT(*),' ', LOWER(occupation), 's.' )
    FROM occupations
    GROUP BY occupation
    ORDER BY COUNT(*), occupation;
