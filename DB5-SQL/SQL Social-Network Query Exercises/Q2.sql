Select a.name, a.grade, c.name, c.grade
from Highschooler a 
left join Likes  b on a.ID = b.ID1
left join Highschooler c on b.ID2 = c.ID
where (a.grade-c.grade) >= 2