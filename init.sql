CREATE TABLE books ( 
book_id character varying (12) NOT NULL, 
title character varying (200) NOT NULL, 
authors character varying (400) NOT NULL, 
publisher character varying (100) NOT NULL, 
pub_year integer NOT NULL, price money NOT NULL, 
quantity integer NOT NULL, 
PRIMARY KEY (book_id));

CREATE TABLE readers ( 
reader_id character varying (12) NOT NULL, 
first_name character varying (30) NOT NULL, 
last_name character varying (30) NOT NULL, 
address character varying (400) NOT NULL, 
phone character varying (10) NOT NULL, 
PRIMARY KEY (reader_id));

CREATE TABLE registration ( 
reader_id character varying (12) NOT NULL, 
book_id character varying (12) NOT NULL, 
date date NOT NULL, period integer NOT NULL, 
PRIMARY KEY (reader_id, book_id), 
FOREIGN KEY (reader_id) REFERENCES readers(reader_id), 
FOREIGN KEY (book_id) REFERENCES books(book_id));
