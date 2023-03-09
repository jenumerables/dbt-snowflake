WITH raw_reviews AS (
	SELECT * FROM airbnb.raw.raw_reviewscl
)
SELECT
	  listing_id
    , date
    , reviewer_name
    , comments AS review_text
    , sentiment AS review_sentiment
FROM 
	raw_reviews