           -- Easy (Basic SQL Practice) --
           
-- (1)Show all anime names and their total episodes < 13 and Rating > 8

SELECT * FROM anime
WHERE Total_Episode < 13 
AND IMBD_rating > 8;

-- (2)Show anime where IMBD_rating > 8.5.

SELECT * FROM anime
WHERE IMBD_rating > 8.5;

-- (3)Find anime that are Hindi dubbed.

SELECT * FROM anime
WHERE Dub = "Hindi";

-- (4)Show anime where Genre = 'Action'.

SELECT * FROM anime
WHERE Genre = "Action";

-- (5)Show the top 10 highest rated anime.

SELECT * FROM anime
ORDER BY IMBD_rating DESC
LIMIT 10;

-- (6)Show anime that have more than 100 episodes.

SELECT * FROM anime
WHERE Total_Episode > 100;

-- (7)Show all manga records where Sale_copies > 700000.

SELECT * FROM anime_manga
WHERE Sale_copies > 700000
ORDER BY Sale_copies DESC;

-- (8)Show manga published after 2015.

SELECT * FROM anime_manga
WHERE Publish_date >= '2015-01-01';

-- (9)Show the average manga rating.

SELECT 
	avg(Manga_rating) 
FROM anime_manga;

-- (10)Count how many anime exist in the table.

SELECT 
	count(*) 
FROM anime;
