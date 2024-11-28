DROP VIEW IF EXISTS best_authors CASCADE;
CREATE VIEW best_authors AS
SELECT authors.id,
       last_name,
       first_name,
       AVG(r.rating) AS average_rating
FROM authors
         LEFT JOIN book_reviews.books b on authors.id = b.author_id
         LEFT JOIN book_reviews.reviews r on b.id = r.book_id
GROUP BY authors.id
HAVING COUNT(r.rating) > 0
ORDER BY average_rating DESC
LIMIT 5;
