/*

# Data quality tests

1. The data needs to be 100 records of youtube channels (row count test)
2. The data needs 4 fields (column count test)
3. The channel name column must be string format, and the other columns must be numerical data types (data type check)
4. Each record must be unique in the dataset (duplicate count check)

-----

# Testing Results

Row count - 100 => (passed)

Column count - 4  => (passed)

Data types  => (passed)
channel_name = VARCHAR
total_subscribers = INTEGER
total_views = INTEGER
total_videos = INTEGER

Duplicate count = 0  => (passed)

----

*/

-- 1. Row count check

SELECT 
	COUNT(*) as no_of_rows 
FROM 
	view_uk_youtubers_2024;


-- 2. Column count check

SELECT 
	COUNT(*) as no_of_columns
FROM 
	INFORMATION_SCHEMA.COLUMNS
WHERE 
	TABLE_NAME = 'view_uk_youtubers_2024';


-- 3. Data type check

SELECT 
	COLUMN_NAME,
	DATA_TYPE
FROM 
	INFORMATION_SCHEMA.COLUMNS
WHERE 
	TABLE_NAME = 'view_uk_youtubers_2024';


-- 4. Duplicate count check
SELECT 
	channel_name,
	COUNT(*) as duplicate_count
FROM 
	view_uk_youtubers_2024
GROUP BY
    channel_name
HAVING 
	count(*) > 1;

