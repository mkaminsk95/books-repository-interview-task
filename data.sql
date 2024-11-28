

INSERT INTO authors (first_name, last_name)
VALUES
    ('George', 'Orwell'),
    ('J.K.', 'Rowling'),
    ('J.R.R.', 'Tolkien'),
    ('Harper', 'Lee'),
    ('Agatha', 'Christie');

INSERT INTO books (title, publication_year, isbn, author_id)
VALUES
    ('1984', 1949, '9780451524935', 1),
    ('Animal Farm', 1945, '9780451526342', 1),
    ('Harry Potter and the Sorcerer''s Stone', 1997, '9780590353427', 2),
    ('Harry Potter and the Chamber of Secrets', 1998, '9780439064873', 2),
    ('The Hobbit', 1937, '9780345339683', 3),
    ('To Kill a Mockingbird', 1960, '9780060935467', 4),
    ('Murder on the Orient Express', 1934, '9780062693662', 5);

INSERT INTO reviews (book_id, rating, content)
VALUES
    (1, 10, 'A masterpiece of dystopian fiction.'),
    (1, 9, 'Profound and deeply impactful.'),
    (2, 8, 'A timeless allegory with sharp commentary.'),
    (3, 10, 'A magical journey that captivates readers of all ages.'),
    (4, 9, 'Even better than the first book in the series!'),
    (5, 10, 'A fantastical adventure that stands the test of time.'),
    (6, 10, 'A powerful exploration of human morality.'),
    (7, 9, 'A classic mystery that keeps you guessing until the end.');
