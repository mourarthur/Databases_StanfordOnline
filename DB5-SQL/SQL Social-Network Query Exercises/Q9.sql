SELECT name, grade
FROM Highschooler a
INNER JOIN Likes b ON a.ID = b.ID2
GROUP BY a.ID
HAVING COUNT(a.ID) > 1;