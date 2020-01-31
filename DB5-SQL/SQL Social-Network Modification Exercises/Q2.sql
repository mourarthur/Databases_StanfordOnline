DELETE FROM likes
WHERE likes.id1 IN
	(
	SELECT f.id2 
	FROM friend f 
	WHERE f.id1 = likes.id2
	) 
AND likes.id2 IN
	(
	SELECT l1.id2 
	FROM likes l1 
	WHERE l1.id1 = likes.id1
	) 
AND likes.id1 NOT IN
	(
	SELECT l2.id2 
	FROM likes l2 
	WHERE l2.id1 = likes.id2
	);