Select name
From Reviewer join Rating using(rID)
Where ratingDate is NULL;
