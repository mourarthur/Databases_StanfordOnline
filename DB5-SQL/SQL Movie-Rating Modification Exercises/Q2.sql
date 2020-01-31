insert into rating 
select rid, mid, 5, null
from reviewer, movie
where name = 'James Cameron';