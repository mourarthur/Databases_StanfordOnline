Select distinct year
From Movie, Reviewer, Rating
Where Reviewer.rID = Rating.rID 
and Rating.mID = Movie.mID 
and stars >= 4
Order by year;