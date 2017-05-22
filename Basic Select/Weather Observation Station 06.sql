/* Would prefer to use
      SELECT DISTINCT city FROM station WHERE UPPER(city) RLIKE '^[AEIOU].*$';
   But the challenge does not accept this. In normal queries, would also ensure city LIKE ... has UPPER(city) */
SELECT DISTINCT city FROM station WHERE city LIKE 'A%' or city LIKE 'E%' or city LIKE 'I%' or city like 'O%' or city like 'U%'
  ORDER BY city;
