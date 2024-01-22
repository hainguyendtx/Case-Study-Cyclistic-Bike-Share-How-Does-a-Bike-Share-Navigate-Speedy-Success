--- Combining all datasets into one with columns needed for analysis, then it is saved as a new CSV
SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.January
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.February
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.March
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.April
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.May
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.June
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.July
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.August
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.September
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.October
UNION ALL

SELECT 
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    end_station_name,
    member_casual,
    DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.November
UNION ALL

SELECT 
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	end_station_name,
	member_casual,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.December

--- Create new table through object explorer with respective column names and data types then BULK INSERT new CSV into that table
BULK INSERT dbo.cyclistic_biketrips_2023_cleaned
	FROM 'C:\DA Case Study\Cyclistic Bike Case Study\cyclistic_biketrips_2023_cleaned.csv'
	WITH
	(
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
		)