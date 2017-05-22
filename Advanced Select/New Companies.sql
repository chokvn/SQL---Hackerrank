/*
Challenge reference:
https://www.hackerrank.com/challenges/the-company
*/

SELECT e.company_code, founder, COUNT(DISTINCT e.lead_manager_code), COUNT(DISTINCT e.senior_manager_code),
COUNT(DISTINCT e.manager_code), COUNT(DISTINCT e.employee_code)
FROM employee e INNER JOIN company c ON e.company_code = c.company_code
GROUP BY e.company_code, c.founder ORDER BY e.company_code;
