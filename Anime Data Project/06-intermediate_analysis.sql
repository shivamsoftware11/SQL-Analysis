          -- Intermediate (Real Data Analysis) --

-- (1)Count anime per genre.

SELECT 
	genre, COUNT(anime_name) AS 'Anime Count' 
FROM anime
GROUP BY genre;

-- (2)Find total manga sales for each Anime.

SELECT
	a.anime_name,
    sum(m.sale_copies) AS 'Total Sales' 
FROM anime a
JOIN anime_manga m ON a.anime_id = m.Anime_id
GROUP BY anime_name;

-- (3)Show anime with more than one manga published.

SELECT 
	n.anime_name ,
    count(m.Anime_id) AS count 
FROM anime n
JOIN anime_manga m 
ON n.anime_id = m.Anime_id
GROUP BY m.Anime_id
HAVING count(m.Anime_id) > 1; 

-- (4)Show the highest selling manga.

SELECT 
	m.manga_id,
	a.anime_name, m.total_sales 
FROM anime a
JOIN anime_manga m 
ON a.anime_id = m.anime_id
ORDER BY m.Total_sales DESC
LIMIT 10;

-- (5)Find the total sale copies per Anime_id.

SELECT 
	a.anime_id, 
	a.anime_name, 
    sum(m.sale_copies) AS 'Total Sale Copies' 
FROM anime a
JOIN anime_manga m ON a.anime_id = m.anime_id
GROUP BY m.anime_id;

-- (6)Show the latest published manga.

SELECT 
	m.manga_id,
	a.anime_name, 
    m.publish_date 
FROM anime a
JOIN anime_manga m ON a.anime_id = m.anime_id
ORDER BY publish_date DESC
LIMIT 1;

-- (7)Find anime with IMBD rating higher than the average rating.

SELECT 
	anime_name, 
	IMBD_rating 
FROM anime
WHERE IMBD_rating > 
	(SELECT avg(IMBD_rating) FROM anime);

-- (8)Find anime where Total_episode > average episodes.

SELECT
	anime_name, 
	Total_Episode 
FROM anime
WHERE Total_Episode > 
	(SELECT avg(Total_Episode) FROM anime);

-- (9)Show the top 5 anime with highest total manga sales.

SELECT 
	a.anime_name, 
    m.Total_sales AS Total_sales 
FROM anime a
JOIN anime_manga m ON a.anime_id = m.anime_id
ORDER BY m.Total_sales DESC
LIMIT 5;

-- (10)Show the top 5 anime with lowerst total Publish manga.

SELECT 
	a.anime_name, 
    m.Publish_copies AS Publish_Copies
FROM anime a
JOIN anime_manga m ON a.anime_id = m.anime_id
ORDER BY m.Publish_copies ASC
LIMIT 5;