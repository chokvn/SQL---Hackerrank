/*
Challenge reference:
https://www.hackerrank.com/challenges/challenges
*/

SELECT c.hacker_id, h.name, COUNT(c.hacker_id) AS counter
FROM Hackers h INNER JOIN Challenges c ON c.hacker_id = h.hacker_id
GROUP BY c.hacker_id, h.name
HAVING
    counter = 
        (SELECT MAX(chal_count)
        FROM (SELECT COUNT(hacker_id) AS chal_count
             FROM Challenges
             GROUP BY hacker_id
             
/*temp_table_1 because MySQL requires derived tables to be aliased*/

            ORDER BY hacker_id) temp_table_1)
    OR counter IN 
        (SELECT chal_count
         FROM (SELECT count(*) AS chal_count
              FROM challenges
              
/*temp_table_2 also aliased because of above MySQL requirement*/

               GROUP BY hacker_id) temp_table_2
         GROUP BY chal_count
         HAVING COUNT(chal_count) = 1)
ORDER BY counter DESC, c.hacker_id
;
