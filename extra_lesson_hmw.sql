-- homework for extra lesson --

CREATE TABLE authors (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);
INSERT INTO authors (id, name, country) VALUES
(1, 'J.K. Rowling', 'United Kingdom'),
(2, 'George Orwell', 'United Kingdom'),
(3, 'Mark Twain', 'United States');

INSERT INTO books (id, title, author_id) VALUES
(1, 'Harry Potter', 1),
(2, '1984', 2),
(3, 'The Adventures of Tom Sawyer', 3);

Select * from books
Select * from authors

Select title from books
where id in (select id from authors where country = 'United Kingdom')




