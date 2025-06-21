SELECT 
    stars,
    COUNT(*) AS num_businesses,
    SUM(review_count) AS total_reviews,
    ROUND(AVG(review_count), 2) AS avg_reviews_per_business
FROM restaurant
WHERE stars IN (4.0, 5.0)
GROUP BY stars
ORDER BY stars DESC