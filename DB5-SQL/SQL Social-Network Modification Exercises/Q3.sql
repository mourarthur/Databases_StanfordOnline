INSERT INTO Friend(id1, id2)
SELECT DISTINCT a.id1, c.id2
FROM Friend a
INNER JOIN Friend c ON a.id2 = c.id1 
WHERE a.id1 != c.id2 
AND c.id2 NOT IN 
	(
	SELECT id2 
	FROM Friend f 
	WHERE f.id1 = a.id1
	);