Select name, title, stars, ratingDate
from Movie join Rating as a using(mID)
left join Reviewer b on a.rID = b.rID
order by name, title, stars