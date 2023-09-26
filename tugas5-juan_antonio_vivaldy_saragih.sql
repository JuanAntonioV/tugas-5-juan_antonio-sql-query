-- Soal 1
CREATE DATABASE books_store;

CREATE TABLE books (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    year_published VARCHAR(4) NOT NULL,
    publisher VARCHAR(255) NOT NULL,
    created_at date,
    updated_at date
);


CREATE TABLE category (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at date,
    updated_at date
);

-- Soal 2
INSERT INTO books (book_title, author, year_published, publisher, created_at, updated_at)
VALUES
('Building Microservices', 'Sam Newman Newman', 2014, 'O''Reilly Media', '2023-09-18', '2023-09-18'),
('Clean Code', 'Robert C. Martin', 2008, 'Prentice Hall', '2023-09-18', '2023-09-18'),
('The Pragmatic Programmer', 'Andrew Hunt', 1999, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
('Design Patterns', 'Erich Gamma', 1994, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
('Introduction to Algorithms', 'Thomas H. Cormen', 1990, 'MIT Press', '2023-09-18', '2023-09-18'),
('The Art of Computer Programming', 'Donald E. Knuth', 1968, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
('Clean Architecture', 'Robert C. Martin', 2017, 'Prentice Hall', '2023-09-18', '2023-09-18'),
('Refactoring', 'Martin Fowler', 1999, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
('Domain-Driven Design', 'Eric Evans', 2003, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
('The Mythical Man-Month', 'Frederick Brooks', 1975, 'Addison-Wesley', '2023-09-18', '2023-09-18');

INSERT INTO category (name, created_at, updated_at)
VALUES
('Pemrograman', '2023-09-18', '2023-09-18'),
('Fiksi', '2023-09-18', '2023-09-18'),
('Nonfiksi', '2023-09-18', '2023-09-18'),
('Bisnis', '2023-09-18', '2023-09-18'),
('Teknologi', '2023-09-18', '2023-09-18'),
('Seni', '2023-09-18', '2023-09-18'),
('Sejarah', '2023-09-18', '2023-09-18'),
('Sains', '2023-09-18', '2023-09-18'),
('Hukum', '2023-09-18', '2023-09-18'),
('Kesehatan', '2023-09-18', '2023-09-18');

-- Soal 3
SELECT * FROM books;
SELECT * FROM category;

-- Soal 4
UPDATE books
SET 
    book_title = 'Building Microservices: Designing Fine-Grained Systems 1st',
    year_published = 2015,
    updated_at = '2023-09-20'
WHERE Id = 1;

-- Soal 5
DELETE FROM books
WHERE id = 10;

DELETE FROM category
WHERE id = 10;

-- Soal 6
SELECT book_title as "Judul Buku"
FROM books
WHERE author = 'Addison-Wesley';

SELECT *
FROM books
WHERE year_published BETWEEN 2003 AND 2023;

SELECT *
FROM books
WHERE book_title LIKE '%design%';

-- Soal 7
CREATE TABLE book_categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    book_id BIGINT NOT NULL,
    category_id BIGINT NOT NULL,
	created_at date,
    updated_at date,
    FOREIGN KEY (book_id) REFERENCES books (id),
    FOREIGN KEY (category_id) REFERENCES category (id)
);

-- Soal 8
INSERT INTO book_categories (book_id, category_id, created_at, updated_at)
VALUES
(1, 2, '2023-09-18', '2023-09-18'),
(5, 3, '2023-09-18', '2023-09-18'),
(1, 1, '2023-09-18', '2023-09-18');

-- Soal 9
SELECT b.id AS "ID Buku", b.book_title AS "Judul Buku", c.name AS "Nama Kategori" FROM books as b
INNER JOIN book_categories AS bc ON b.id = bc.book_id
INNER JOIN category AS c ON bc.category_id = c.id;

-- Soal 10
ALTER TABLE books
ADD jumlah_halaman INT;


