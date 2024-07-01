-- to drop database to helpfind errors 
DROP DATABASE fandom;

-- to create the fandom database
CREATE DATABASE fandom;

-- to tell sql to use this specific scheme
USE fandom;

-- anime table 
CREATE TABLE anime (
anime_id INT NOT NULL PRIMARY KEY,
anime_name VARCHAR(75) NOT NULL,
episodes INT,
release_year YEAR
);

-- manga table 
CREATE TABLE manga (
manga_id INT NOT NULL PRIMARY KEY,
manga_name VARCHAR(75) NOT NULL,
volume INT,
release_year YEAR,
anime_id INT,
CONSTRAINT FK_anime_id FOREIGN KEY (anime_id)REFERENCES anime(anime_id)
);

-- film table 
CREATE TABLE film (
film_id INT NOT NULL PRIMARY KEY,
film_name VARCHAR(75) NOT NULL,
release_year YEAR,
film_sales INT,
anime_id INT,
CONSTRAINT FK_film_anime_id FOREIGN KEY (anime_id)REFERENCES anime(anime_id)
);

-- merch table
CREATE TABLE merch (
merch_id INT NOT NULL PRIMARY KEY,
merch_name VARCHAR(75) NOT NULL,
price FLOAT NOT NULL,
anime_id INT,
manga_id INT,
CONSTRAINT FK_merch_anime_id FOREIGN KEY (anime_id) REFERENCES anime(anime_id),
CONSTRAINT FK_manga_id FOREIGN KEY (manga_id) REFERENCES manga(manga_id)
);

-- artist table
CREATE TABLE artist (
artist_id INT NOT NULL PRIMARY KEY,
artist_first_name VARCHAR(30) NOT NULL,
artist_last_name VARCHAR(30) NOT NULL,
age INT,
nationality VARCHAR(30),
anime_id INT,
CONSTRAINT FK_artist_anime_id FOREIGN KEY (anime_id)REFERENCES anime(anime_id)
);

-- customer table
CREATE TABLE customer (
customer_id INT NOT NULL PRIMARY KEY,
customer_first_name VARCHAR(30) NOT NULL,
customer_last_name VARCHAR(30) NOT NULL,
customer_telephone VARCHAR(11),
anime_id INT,
CONSTRAINT FK_customer_anime_id FOREIGN KEY (anime_id) REFERENCES anime(anime_id)
);

-- orders table
CREATE TABLE orders (
order_id INT NOT NULL PRIMARY KEY,
order_date DATE NOT NULL,
merch_id INT NOT NULL,
customer_id INT NOT NULL,
CONSTRAINT FK_customer_id FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
CONSTRAINT FK_merch_id FOREIGN KEY (merch_id) REFERENCES merch(merch_id)
);

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------