SELECT last_name,
       first_name,
       COUNT(b.title) AS books_written
FROM authors
LEFT JOIN book_reviews.books b on authors.id = b.author_id
GROUP BY last_name, first_name;