/*
Challenge reference:
https://www.hackerrank.com/challenges/the-report
*/

ALTER TABLE students ADD grade int;
UPDATE students SET students.grade = (select(grades.grade) FROM grades
WHERE students.marks BETWEEN grades.min_mark AND grades.max_mark);
UPDATE students SET students.name = NULL WHERE students.grade < 8;
SELECT name, grade, marks FROM students
    ORDER BY grade DESC, name ASC, marks ASC;
    
