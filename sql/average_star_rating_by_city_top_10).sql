SELECT city, 
       COUNT(*) AS num_restaurants,
       ROUND(AVG(stars), 2) AS avg_rating
FROM restaurant
GROUP BY city
HAVING num_restaurants > 100
ORDER BY avg_rating DESC
LIMIT 10