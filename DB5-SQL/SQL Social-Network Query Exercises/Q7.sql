SELECT H1.name, H1.grade, H2.name, H2.grade, H3.name, H3.grade
FROM Highschooler H1, Highschooler H2, Highschooler H3, Friend F1, Friend F2, Likes
WHERE (H1.ID = Likes.ID1 and H2.ID = Likes.ID2)
AND H2.ID NOT IN (
				SELECT ID2
				FROM Friend 
				WHERE ID1 = H1.ID 
			)
AND (H1.ID = F1.ID1 AND H3.ID = F1.ID2) 
AND (H2.ID = F2.ID1 AND H3.ID = F2.ID2);