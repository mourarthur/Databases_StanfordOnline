SELECT H1.name, H1.grade, H2.name, H2.grade
FROM Highschooler H1 
INNER JOIN Likes B ON H1.ID = B.ID1
INNER JOIN Highschooler H2 ON H2.ID = B.ID2
WHERE H2.ID not in
	(
	SELECT DISTINCT ID1
	FROM Likes
	);