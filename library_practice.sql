CREATE TABLE public.authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE public.genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE public.books (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    author_id INT REFERENCES public.authors(id),
    genre_id INT REFERENCES public.genres(id)
);

SELECT * FROM public.books;

SELECT * FROM public.authors;

SELECT * FROM public.genres;

SELECT * FROM public.books ORDER BY id ASC;

SELECT * FROM public.books ORDER BY name ASC;

SELECT * FROM public.authors ORDER BY name ASC;

SELECT * FROM public.books WHERE id = 1;

SELECT * FROM public.books WHERE name LIKE '%Гаррі%';

SELECT * FROM public.authors WHERE name LIKE '%Кінг%';

SELECT * FROM public.books WHERE author_id = 1;

SELECT * FROM public.books WHERE genre_id = 2;

SELECT COUNT(*) FROM public.books;

SELECT COUNT(*) FROM public.authors;

SELECT books.name, authors.name 
FROM public.books 
INNER JOIN public.authors ON books.author_id = authors.id;

SELECT books.name, genres.name 
FROM public.books 
INNER JOIN public.genres ON books.genre_id = genres.id;

UPDATE public.books SET name = 'Нова назва книги' WHERE id = 1;

UPDATE public.authors SET name = 'Нове ім''я автора' WHERE id = 2;

DELETE FROM public.books WHERE id = 5;

DELETE FROM public.authors WHERE id = 10;

SELECT *
FROM public.books
WHERE author_id = 1
AND genre_id = 2;

SELECT *
FROM public.books
WHERE genre_id = 1
OR genre_id = 2;

SELECT *
FROM public.books
LIMIT 5;
