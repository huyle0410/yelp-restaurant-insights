SELECT city, COUNT(*) AS restaurant_count
FROM restaurant
GROUP BY city
ORDER BY restaurant_count DESC
LIMIT 10