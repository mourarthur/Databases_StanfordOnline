DELETE FROM Rating
WHERE mID in 
	(
	SELECT mID
	FROM Movie 
	WHERE year < 1970 
	or year > 2000
	)
AND Stars < 4;