CREATE DATABASE Anime_world;
USE anime_world;

CREATE TABLE Anime_name(
Anime_id INT AUTO_INCREMENT PRIMARY KEY,
Anime_name VARCHAR(100) UNIQUE,
Total_Episode INT,
Dub ENUM('Hindi', 'Japness', 'English', 'All'),
Genre ENUM('Action','Adventure','Comedy','Fantasy','Mystery','Romance')
	DEFAULT 'Adventure',
IMBD_rating DECIMAL(2,1));

ALTER TABLE 
	anime_name 
ADD CONSTRAINT 
check_rating CHECK(IMBD_rating <= 10);

CREATE TABLE Anime_manga(
Manga_id INT AUTO_INCREMENT PRIMARY KEY,
Anime_id INT,
Publish_date date,
Publish_copies INT,
Sale_copies INT,
Copy_price INT,
Total_sales DECIMAL(10,2),
Manga_rating DECIMAL(2,1),
FOREIGN KEY (Anime_id) REFERENCES Anime_name(Anime_id));

ALTER TABLE 
	anime_manga 
ADD CONSTRAINT 
check_rating CHECK(Manga_rating <= 10);
