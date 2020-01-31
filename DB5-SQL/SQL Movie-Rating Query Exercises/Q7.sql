Select title, max(stars)
from Movie
left join Rating on Movie.mID = Rating.mID
where stars is not null
group by title
order by title;
