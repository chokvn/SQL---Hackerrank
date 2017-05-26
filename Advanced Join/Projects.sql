/*
Challenge reference:
https://www.hackerrank.com/challenges/projects
Notes: There is probably a simpler method than numbering each row to match them up with a where + group by statement
*/

SET @row_num = 0, @row_numb = 0;
SELECT pro_starts.start_date, pro_ends.end_date
FROM
(SELECT proj_starts.task_id, proj_starts.start_date, @row_num := @row_num + 1 AS proj_index
FROM (SELECT a.task_id, a.start_date
      	FROM projects a JOIN projects b ON a.task_id = b.task_id
      	HAVING a.start_date NOT IN (SELECT end_date FROM projects)
     	ORDER BY a.start_date) AS proj_starts) AS pro_starts
INNER JOIN
	(SELECT proj_ends.task_id, proj_ends.end_date, @row_numb := @row_numb + 1 AS proj_index
	FROM (SELECT a.task_id, a.end_date
	FROM projects a JOIN projects b ON a.task_id = b.task_id
	HAVING a.end_date NOT IN (SELECT start_date FROM projects)
	ORDER BY a.end_date) AS proj_ends) AS pro_ends
ON pro_starts.proj_index = pro_ends.proj_index
ORDER BY DATEDIFF(pro_ends.end_date, pro_starts.start_date) ASC, pro_starts.start_date
;
