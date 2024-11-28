DROP SCHEMA IF EXISTS book_reviews CASCADE;
CREATE SCHEMA book_reviews;

ALTER DATABASE postgres SET search_path TO book_reviews;

CREATE TABLE authors (
                         id SERIAL PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50) NOT NULL
);

CREATE TABLE books (
                       id SERIAL PRIMARY KEY,
                       title VARCHAR(255) NOT NULL,
                       publication_year INT NOT NULL CHECK (publication_year > 0),
                       isbn VARCHAR(13) UNIQUE NOT NULL,
                       author_id INT NOT NULL,
                       FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE
);

CREATE TABLE reviews (
                         id SERIAL PRIMARY KEY,
                         book_id INT NOT NULL,
                         rating INT NOT NULL CHECK (rating BETWEEN 1 AND 10),
                         content TEXT,
                         FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE
);