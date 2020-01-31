select * 
from
	(
	Select title, max(stars) - min(stars) as spread
	from Movie
	left join Rating on Movie.mID = Rating.mID
	where stars is not null
	group by title
	)
order by spread desc, title;
