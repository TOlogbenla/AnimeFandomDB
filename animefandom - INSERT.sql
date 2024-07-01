-- insert data into anime table
INSERT INTO anime(anime_id, anime_name, episodes, release_year) VALUES
(1, 'naruto', 220, '2002'),
(2, 'one piece', 1108, '1999'),
(3, 'wind breaker', 12, '2024'),
(4, 'bleach', 366, '2007'),
(5, 'hunterxhunter', 148, '2011'),
(6, 'jujutsu Kaisen', 47, '2020'),
(7, 'michiko & hatchin', 22,'2008'),
(8, 'kaiju no 8', 12, '2024'),
(9, 'demon slayer', 69, '2019'),
(10, 'food wars', 86, '2015'),
(11, 'attack on titan', 94, '2014'),
(12, 'kakeguri', 24, '2017');

-- insert data into manga table
INSERT INTO manga(manga_id, manga_name, volume, release_year, anime_id) VALUES
(1, 'jujutsu Kaisen', 26, 2008, 6),
(2, 'demon slayer', 23, 2016, 9),
(3, 'one piece', 108, 1997, 2),
(4, 'death note', 12, 2003, NULL),
(5, 'naruto', 72, 1999, 1),
(6, 'kakegurui', 17, 2014, 12),
(7, 'spirit circle', 6, 2012, NULL), 
(8, 'hunterxhunter', 37, 1998, 5),
(9, 'wind breaker', 17, 2021, 3),
(10, 'attack on titan', 34, 2009, 11);

-- insert data to film table 
INSERT INTO film (film_id, film_name, release_year, film_sales, anime_id) VALUES 
(1, 'Demon Slayer: Kimetsu no Yaiba – The Movie: Mugen Train', 2020, 453230408, 9),
(2, 'Bleach: Memories of Nobody', 2006, 1238072, 4),
(3, 'Bleach (live-action film)', 2018, 3729856, 4),
(4, 'Demon Slayer: Kimetsu no Yaiba – To the Swordsmith Village', 2023, 56319794, 9),
(5, 'Spirited away', 2001, 357561772, NULL),
(6, 'One Piece: stampede', 2020, 81574810, 2),
(7, 'Bleach: The DiamondDust Rebellion', 2007, 6916899, 4),
(8, 'Princess Mononoke', 2001, 170308860, NULL),
(9, 'Bleach: The Hell Verse', 2010, 8749681, 4),
(10, 'Demon Slayer: Kimetsu no Yaiba – To the Hashira Training', 2024, 44354825, 9),
(11, 'Jujutsu Kaisen 0', 2022, 166760828, 6),
(12, 'Ponyo', 2010, 205121118, NULL),
(13, 'Attack on Titan', 2015, 30810658, 10),
(14, 'Your Name',2016, 382238191, NULL),
(15, 'Bleach: Fade to Black', 2008, 6032296, 4);

-- insert data into merch table
INSERT INTO merch(merch_id, merch_name, price, anime_id, manga_id) VALUES
(1, 'demon slayer tshirt', 12.99, 9, 2),
(2, 'one piece', 15.15, 2, 3),
(3, 'attack on titan Mikasa plush', 30.49, 11, NULL),
(4, 'hunterxhunter figure gon', 36.80, 5, 8),
(5, 'demon slayer cup', 13, 9, 2),
(6, 'jujusu kaisen tshirt',14.99, 6, 1),
(7, 'one piece flag', 25.99, 2, 3),
(8, 'death note', 27.99, NULL, 4),
(9, 'naruto shoulder bag', 60.99, 1, 5),
(10, 'black haze tshirt', 27.90, NULL, 6);

-- insert data to artist table
INSERT INTO artist(artist_id, artist_first_name, artist_last_name, age, nationality, anime_id) VALUES
(1, 'Katsuyuki', 'Sumisawa', 62, 'japanese', 1),
(2, 'atshishi', 'maekawa', 59, 'japanese', 5), 
(3, 'hirohiko', 'kamisaka', 67, 'japanese', 2), 
(4, 'Masashi', 'Sogo', 62, 'japanese', 4),
(5, 'satoru', 'nii', NULL , 'japanese', 3), 
(6, 'eiichiro', 'oda', 49, 'japanese', 2), 
(7, 'Yoshihiro', 'togashi', 58, 'japanese', 5), 
(8, 'Masashi', 'Kishimoto', 49, 'japanese', 1),
(9, 'yuto', 'tsukuda', 38, 'japanese', 10), 
(10, 'tite', 'kubo', 46, 'japanese', 4), 
(11, 'Junki', 'Takegami', 69, 'Japanese', 2), 
(12, 'Shōji', 'Yonemura', 57, 'japanese', 2); 

-- insert data into customer table
INSERT INTO customer(customer_id, customer_first_name, customer_last_name, customer_telephone, anime_id) VALUES
(1, 'tinuade', 'ologbenla', '01234567890', 12),
(2, 'john', 'smith', '12343212341', 4),
(3, 'bob', 'builder', '12098375563', 6),
(4, 'tyara', 'alli', '64827342494', 1),
(5, 'rebecca', 'hayes', '84786747974', 5),
(6, 'harry', 'johnson', '24234354377', 12),
(7, 'francessa', 'fisher', '25739872756', 3),
(8, 'lisa', 'bug', '38435753479', 6),
(9, 'martin', 'jobs', '45748478597', 1),
(10, 'hannah', 'smith', '88537375885', 4);

-- insert data into orders table
INSERT INTO orders(order_id, order_date, merch_id, customer_id) VALUES
(1, '2023-11-20', 4, 4),
(2, '2024-02-01', 6, 1),
(3, '2023-06-03', 4, 10),
(4, '2024-01-11', 3, 2),
(5, '2024-06-14', 5, 4),
(6, '2019-09-15', 9, 1),
(7, '2020-08-17', 1, 2),
(8, '2022-04-21', 1, 6),
(9, '2023-12-23', 2, 1),
(10, '2018-08-10', 3, 8),
(11, '2023-11-20', 6, 4),
(12, '2024-02-01', 10, 1);

---------------------------------------------------------------------------------------------------------------------------------------







 



