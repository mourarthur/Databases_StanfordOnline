SELECT a.name, a.grade
FROM Highschooler a
LEFT JOIN Likes l1 ON a.id = l1.id1
LEFT JOIN Likes l2 ON a.id = l2.id2
WHERE l1.id2 IS NULL 
AND l2.id1 IS NULL
order by a.grade, a.name