CREATE TABLE books 
  (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY(book_id)
  );

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
 ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291)
,('Norse Mythology', 'Neil', 'Gaiman', 2016, 43, 304)
,('American Gods', 'Neil', 'Gaiman', 2001, 12, 465)
,('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198)
,('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352)
,('The Circle', 'Dave', 'Eggers', 2013, 26, 504)
,('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634)
,('Just Kids', 'Patti', 'Smith', 2010, 55, 304)
,('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437)
,('Coraline', 'Neil', 'Gaiman', 2003, 100, 208)
,('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176)
,("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526)
,('White Noise', 'Don', 'DeLillo', 1985, 49, 320)
,('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181)
,('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329)
,('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343)
,('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367)
,("Harry Potter and the Sorcerer's Stone", 'J.K.', 'Rowling', 1997, 1000, 367)
,('Harry Potter and the Chamber of Secrets', 'J.K.', 'Rowling', 1998, 1000, 367)
,('Harry Potter and the Prisoner of Azkaban', 'J.K.', 'Rowling', 2000, 1000, 367)
,('Harry Potter and the Goblet of Fire', 'J.K.', 'Rowling', 2002, 1000, 367)
,('Harry Potter and the Order of the Phoenix', 'J.K.', 'Rowling', 2004, 1000, 367)
,('Harry Potter and the Half-Blood Prince', 'J.K.', 'Rowling', 2006, 1000, 367)
,('Harry Potter and the Deathly Hallows', 'J.K.', 'Rowling', 2007, 1000, 367)
;


-- create database book_shop;
-- use book_shop;
-- source book_data.sql

-- SELECT author_fname AS first, author_lname AS last, CONCAT(author_fname, ' ', author_lname) AS full FROM books;
-- SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
-- SELECT DISTINCT author_fname, author_lname FROM books;
-- SELECT title, pages FROM books ORDER BY released_year;
-- SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;
-- SELECT title FROM books LIMIT 5; // returns first 5 books
-- SELECT title FROM books LIMIT 15, 50; // returns next 50 books, starting at book 15
-- SELECT title FROM books WHERE title LIKE 'harry potter%';
-- SELECT title FROM books WHERE title LIKE '%or%';
-- SELECT title FROM books WHERE author_lname LIKE '%s';
-- SELECT title FROM books WHERE title LIKE '%the%';
-- SELECT title FROM books WHERE title NOT LIKE 'The%'; // titles that don't start with The
-- SELECT title FROM books WHERE stock_quantity LIKE '____'; // is four chars long
-- SELECT phone_number FROM whatever WHERE phone_number LIKE '(___)___-____';
-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
-- SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY stock_quantity ASC LIMIT 3;
-- SELECT COUNT(*) FROM books WHERE stock_quantity LIKE '____';
-- SELECT COUNT(DISTINCT author_lname) FROM books;
-- SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
-- SELECT author_fname, author_lname, Min(released_year) FROM books GROUP  BY author_lname, author_fname;
-- SELECT author_fname, author_lname, Max(pages) FROM books GROUP BY author_lname, author_fname;
-- SELECT author_fname, author_lname, Sum(pages) AS summed_pages FROM books GROUP BY author_lname, author_fname ORDER BY summed_pages DESC;
-- SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname;
-- SELECT title, author_lname, released_year FROM books WHERE author_lname='Eggers' AND released_year > 2010;
-- SELECT title, released_year,
--   CASE
--     WHEN released_year >= 2000 THEN 'Modern Lit'
--     ELSE '20th Century Lit'
--   END AS GENRE
-- FROM books;
-- SELECT title, stock_quantity,
--   CASE
--     WHEN stock_quantity <= 50 THEN '*'
--     WHEN stock_quantity <= 100 THEN '**'
--     ELSE '***'
--   END AS STOCK
-- FROM books;


-- CURDATE(), CURTIME(), NOW()
-- SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
-- SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
-- SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;
-- SELECT name, birthdt FROM people WHERE birthdt BETWEEN CAST('1980-01-01' AS DATETIME) AND CAST('2000-01-01' AS DATETIME);

-- CREATE TABLE comments (content VARCHAR(100), changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW());
-- INSERT INTO comments (content) VALUES('I LIKE CATS AND DOGS');
