SELECT name, grade
FROM Highschooler H1
WHERE ID not in 
	(
	SELECT ID1
	FROM Highschooler H2
	LEFT JOIN Friend F ON H2.ID = F.ID2
	WHERE H1.ID = F.ID1 
	AND H1.grade <> H2.grade
	)
ORDER BY grade, name;