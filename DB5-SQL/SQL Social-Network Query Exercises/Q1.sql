Select a.name
from Highschooler a 
left join Friend b on a.ID = b.ID1
left join Highschooler c on b.ID2 = c.ID
where c.name = 'Gabriel'