/*
Challenge reference:
https://www.hackerrank.com/challenges/contest-leaderboard
*/

SELECT sg.hacker_id, h.name, SUM(sg.maxed_scores) as summed_scores
FROM (SELECT hacker_id, challenge_id, MAX(score) as maxed_scores
        FROM submissions
        GROUP BY hacker_id, challenge_id)
AS sg
INNER JOIN hackers h ON sg.hacker_id = h.hacker_id
GROUP BY hacker_id, h.name
HAVING summed_scores > 0
ORDER BY summed_scores DESC, h.hacker_id ASC;
