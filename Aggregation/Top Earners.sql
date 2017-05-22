/*
Challenge reference:
https://www.hackerrank.com/challenges/earnings-of-employees
*/

SELECT (Salary * Months) AS earnings,
	COUNT(*) FROM employee
  GROUP BY earnings
  ORDER BY earnings DESC LIMIT 1;
  
