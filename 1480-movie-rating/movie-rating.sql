(SELECT u1.name AS results
FROM Users u1
JOIN MovieRating l1 ON u1.user_id = l1.user_id
GROUP BY u1.user_id, u1.name
ORDER BY COUNT(l1.rating) DESC, u1.name ASC 
LIMIT 1)

UNION ALL

(SELECT m2.title AS results
FROM Movies m2
JOIN MovieRating m1 ON m2.movie_id = m1.movie_id
WHERE m1.created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY m2.movie_id, m2.title
ORDER BY AVG(m1.rating) DESC, m2.title ASC
LIMIT 1);
