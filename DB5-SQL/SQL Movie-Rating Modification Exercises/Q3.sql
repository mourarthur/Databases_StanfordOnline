UPDATE Movie
SET year = year + 25
WHERE Movie.mID in(
	SELECT mID 
	FROM Rating 
    GROUP BY mID
    HAVING AVG(Stars) >= 4);