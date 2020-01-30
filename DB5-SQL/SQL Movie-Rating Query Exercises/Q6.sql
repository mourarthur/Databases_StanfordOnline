SELECT name, title
FROM Movie
INNER JOIN Rating R1 USING(mId)
INNER JOIN Rating R2 USING(rId)
INNER JOIN Reviewer USING(rId)
WHERE R1.mId = R2.mId 
AND R1.ratingDate < R2.ratingDate 
AND R1.stars < R2.stars;