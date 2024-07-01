-- CORE REQUIREMENTS 
-- Create relational DB of your choice with minimum 5 tables --> created 7 

-- Set Primary and Foreign Key constraints to create relations between the tables --> done

-- Using any type of the joins create a view that combines multiple tables in a logical way --> done
CREATE VIEW cust_merch_order
AS
SELECT o.order_id, o.order_date, CONCAT(c.customer_first_name, ' ', c.customer_last_name) AS Full_Name, m.merch_name AS Item, m.price AS Price
FROM orders o
JOIN customer c 
ON o.customer_id = c.customer_id
JOIN merch m
ON m.merch_id = o.merch_id;

SELECT * FROM cust_merch_order;


-- In your database, create a stored function that can be applied to a query in your DB --> done
--             to convert DOLLARS to YEN
SELECT * FROM merch;
SELECT ROUND(price*159.65,2) FROM merch;

DELIMITER //
CREATE FUNCTION convert_yen(dollars_input FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
DECLARE yen FLOAT;
Set yen = dollars_input*159.65;
RETURN (yen);
END //
DELIMITER ;

SELECT merch_name as Merchandise, price AS price_dollars, round(convert_yen(price),2) AS price_yen
FROM merch;


-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis --> done
--                       all artist that wrote/contributed to one piece anime
select artist_id, concat(artist_first_name,' ', artist_last_name) AS Artist, age 
from artist 
where anime_id in -- gets all the artists who have contributed to writing one piece 
(select anime_id -- gets the anime id for one piece
from anime
where anime_name = 'one piece');

-- Create DB diagram where all table relations are shown (erd diagram) 
-- 
-- ADVANCED TASKS 
-- In your database, create a stored procedure and demonstrate how it runs ???
--             INPUT A NEW CUSTOMER ACCOUNT 
DROP PROCEDURE new_customer;

DELIMITER //
CREATE PROCEDURE new_customer(new_id INT, new_first_name VARCHAR(30), new_last_name VARCHAR(30), new_telephone VARCHAR(11), new_anime_id INT)
BEGIN
INSERT INTO customer
(customer_id, customer_first_name, customer_last_name, customer_telephone, anime_id)
VALUES
(new_id, new_first_name, new_last_name, new_telephone, new_anime_id);
END //
DELIMITER ;

SELECT * FROM customer;
Call new_customer(11, 'sarah', 'taylor', '98128734765', 4);



-- In your database, create a trigger and demonstrate how it runs --> done
--                  upper first letter and lower first name and last name the rest for artist name 
drop trigger capital_first_letter;

DELIMITER //
CREATE TRIGGER capital_first_letter
BEFORE INSERT ON artist 
FOR EACH ROW
BEGIN
SET NEW.artist_first_name = concat(UPPER(LEFT(NEW.artist_first_name,1)),LOWER(SUBSTRING(nEW.artist_first_name, 2)));
SET NEW.artist_last_name = concat(UPPER(LEFT(NEW.artist_last_name,1)),LOWER(SUBSTRING(nEW.artist_last_name, 2)));
END //
DELIMITER ;
select * FROM artist;

INSERT INTO artist(artist_id, artist_first_name, artist_last_name, age, nationality, anime_id)
VALUES
(13, 'tiNu', 'oLo', 27,'NIGERIAN', 12),
(14, 'BOB', 'loL', 27,'spanish', 12);


-- Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis ???
--        use group by and having to show  animes with more than 100 episodes 
select anime_name, episodes 
from anime
group by anime_name, episodes 
having episodes > 100;

--        use group by and having to show films with a worldwide gross of over 10,000,000
select film_name AS Film, release_year, film_sales AS Worldwide_Sales
from film
group by film_name, release_year, film_sales
having film_sales > 10000000
order by film_sales asc;


