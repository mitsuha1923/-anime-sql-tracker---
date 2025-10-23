CREATE DATABASE anime_db;
USE anime_db;
CREATE TABLE animes (
 anime_ID INT PRIMARY KEY ,
 Title VARCHAR(150),
 Genre VARCHAR(150),
 Release_Year INT ,
 Episodes INT ,
 Rating DECIMAL(3,1),
 Studio VARCHAR (100),
 Popularity_Score INT 
 );
 select * from animes;
 INSERT INTO animes VALUES
(101, 'Spirited Away', 'Fantasy, Adventure', 2001, 1, 8.9, 'Studio Ghibli', 95),
(102, 'Attack on Titan', 'Action, Drama', 2013, 75, 9.1, 'Wit Studio', 98),
(103, 'Demon Slayer', 'Action, Supernatural', 2019, 44, 8.7, 'Ufotable', 93),
(104, 'Your Name', 'Romance, Drama', 2016, 1, 8.8, 'CoMix Wave Films', 92),
(105, 'Jujutsu Kaisen', 'Action, Supernatural', 2020, 47, 8.6, 'MAPPA', 90),
(106, 'My Neighbor Totoro', 'Family, Fantasy', 1988, 1, 8.2, 'Studio Ghibli', 88),
(107, 'Death Note', 'Thriller, Mystery', 2006, 37, 9.0, 'Madhouse', 96),
(108, 'One Piece', 'Adventure, Comedy', 1999, 1000, 8.5, 'Toei Animation', 97),
(109, 'Violet Evergarden', 'Drama, Slice of Life', 2018, 13, 8.6, 'Kyoto Animation', 89),
(110, 'Weathering with You', 'Romance, Fantasy', 2019, 1, 8.0, 'CoMix Wave Films', 85),
(111, 'Demon Slayer: Infinity Castle', 'Action, Adventure', 2025, 1, 9.5, 'Ufotable', 98),
(112, 'The Fragrant Flower Blooms with Dignity', 'Romance, Drama', 2025, 12, 8.7, 'CloverWorks', 92),
(113, 'The Apothecary Diaries Movie', 'Historical, Mystery', 2026, 1, 8.9, 'TOHO Animation', 93),
(114, 'Solo Leveling Season 2', 'Action, Fantasy', 2025, 12, 9.2, 'A-1 Pictures', 97),
(115, 'Spy x Family Season 3', 'Action, Comedy', 2025, 13, 8.8, 'CloverWorks, Wit', 94),
(116, 'One Punch Man Season 3', 'Action, Parody', 2025, 12, 8.5, 'J.C.Staff', 91),
(117, 'Boku no Hero Academia: Final Season', 'Action, Superhero', 2025, 25, 8.9, 'Bones', 95),
(118, 'Gachiakuta', 'Mystery, Action', 2025, 10, 8.6, 'Studio Pierrot', 90),
(119, 'Sakamoto Days', 'Action, Comedy', 2025, 12, 8.4, 'TMS Entertainment', 89),
(120, 'Witch Hat Atelier', 'Fantasy, Magic', 2025, 1, 8.7, 'CloverWorks', 92);
select * from animes;
SELECT Title, Rating
FROM animes
ORDER BY Rating DESC
LIMIT 5;
SELECT Studio, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM animes
GROUP BY Studio
ORDER BY Avg_Rating DESC;
SELECT Release_Year, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM anime
GROUP BY Release_Year
ORDER BY Release_Year;
SELECT Title, Genre, Rating
FROM anime
WHERE Genre LIKE '%Action%'
ORDER BY Rating DESC;