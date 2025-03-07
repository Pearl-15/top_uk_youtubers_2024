CREATE DATABASE youtube_db;

USE youtube_db;



/*Data Cleaning steps

1. Remove Unnecessary columns by only selecting the ones we need
2. Extract the youtube channel names from the first columns
3. Rename the column names

*/

SELECT *
FROM top_uk_youtubers_2024;

SELECT 
	NOMBRE, 
	total_subscribers,
	total_views,
	total_videos
FROM 
	top_uk_youtubers_2024;

-- CHARINDEX
-- find character index 
SELECT 
	CHARINDEX('@', NOMBRE), 
	NOMBRE 
FROM 
	top_uk_youtubers_2024;

-- SUBSTRING
-- SUBSTRING (col_name, start, end)
SELECT
	CAST(SUBSTRING(NOMBRE, 1, CHARINDEX('@', NOMBRE) -1) AS VARCHAR(100)) as channel_name,
	total_subscribers,
	total_views,
	total_videos
FROM
	top_uk_youtubers_2024;
	

-- CREATE VIEW
CREATE VIEW view_uk_youtubers_2024 AS
SELECT
	CAST(SUBSTRING(NOMBRE, 1, CHARINDEX('@', NOMBRE) -1) AS VARCHAR(100)) as channel_name,
	total_subscribers,
	total_views,
	total_videos
FROM
	top_uk_youtubers_2024;

	
-- call view
 





