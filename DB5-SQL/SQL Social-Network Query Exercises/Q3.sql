SELECT h1.name, h1.grade , h2.name, h2.grade 
FROM highschooler h1 
JOIN (
	SELECT l1.id1, l1.id2 
	FROM likes AS l1 
	JOIN likes AS l2 ON l1.id2 = l2.id1
	WHERE l1.id1 = l2.id2
	) AS m ON h1.id = m.id1
JOIN highschooler h2 ON m.id2 = h2.id
WHERE h1.name < h2.name