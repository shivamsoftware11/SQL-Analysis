# Anime Database SQL Project

This project is a SQL data analysis project based on anime and manga sales data.  
The purpose of this project is to practice SQL queries, relational database design, and analytical thinking.

---

# Project Overview

The database contains information about anime and manga sales.  
Using SQL queries, we analyze:

- Anime ratings
- Manga publication data
- Sales performance
- Revenue generation
- Stock availability

This project demonstrates common SQL techniques used in data analysis.

---

# Database Tables

## Anime

| Column | Description |
|------|-------------|
| Anime_id | Unique anime identifier |
| Anime_name | Name of the anime |
| Total_episode | Total number of episodes |
| Dub | Available dubbing language |
| Genre | Anime genre |
| IMBD_rating | Rating of the anime |

---

## Anime_manga

| Column | Description |
|------|-------------|
| Manga_id | Unique manga identifier |
| Anime_id | Foreign key referencing Anime |
| Publish_date | Manga publish date |
| Publish_copies | Total published copies |
| Sale_copies | Total sold copies |
| Copy_price | Price per copy |
| Total_sales | Total revenue |
| Manga_rating | Manga rating |

---

# SQL Concepts Used

This project demonstrates several SQL concepts:

- SELECT
- JOIN
- GROUP BY
- ORDER BY
- Aggregate Functions
- Subqueries
- Constraints

---

# Example Queries

## Top Rated Anime

```sql
SELECT Anime_name, IMBD_rating
FROM Anime
ORDER BY IMBD_rating DESC
LIMIT 10;
```

## Total Revenue by Anime

```sql
SELECT a.Anime_name, SUM(m.Total_sales) AS Revenue
FROM Anime a
JOIN Anime_manga m
ON a.Anime_id = m.Anime_id
GROUP BY a.Anime_name;
```

## Available Stock

```sql
SELECT
m.Manga_id,
a.Anime,
(m.Publish_copies - m.Sale_copies) AS Available_Stock
FROM Anime_manga m
JOIN Anime a
ON m.Anime_id = a.Anime_id;
```

---

# Project Goals

- Practice SQL queries
- Learn relational database design
- Perform data analysis using SQL
- Build a portfolio project for data analyst roles

--

# Author

Nemo  
Aspiring Data Analyst
