--- Rides analysis

    --- Calculate number of casual and member 
SELECT COUNT(ride_id) AS numbers_of_riders, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY member_casual

    --- Calculate number of casual and member by rideable-type
SELECT COUNT(ride_id) AS numbers_of_riders, rideable_type, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY rideable_type, member_casual
ORDER BY COUNT(ride_id) DESC;

--- Time analysis for member and casual 

    --- Numbers of rides for each month
SELECT COUNT(ride_id) AS numbers_of_riders, DATEPART(MONTH, started_at) AS started_month, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY member_casual, DATEPART(MONTH, started_at)
ORDER BY COUNT(ride_id) DESC;

    --- Numbers of rides for each days of the week
SELECT COUNT(ride_id) AS numbers_of_riders, DATEPART(WEEKDAY, started_at) AS started_day, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY member_casual, DATEPART(WEEKDAY, started_at)
ORDER BY COUNT(ride_id) DESC;

    --- Numbers of rides for each hour of the day
SELECT COUNT(ride_id) AS numbers_of_riders, DATEPART(HOUR, started_at) AS started_hour, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY member_casual, DATEPART(HOUR, started_at)
ORDER BY COUNT(ride_id) DESC;

    --- Calculate average ride length
SELECT member_casual, AVG(ride_length) as avg_ride_length
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY member_casual

    --- Average duration of rides for each day of the week
SELECT 
    DATENAME(WEEKDAY, started_at) AS day_of_week,
    member_casual,
    AVG(ride_length) as avg_duration
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY DATENAME(WEEKDAY, started_at), member_casual;

    --- Average duration of rides for each month of the year
SELECT 
    DATENAME(MONTH, started_at) AS MonthOfYear,
    member_casual,
    AVG(ride_length) as avg_duration
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY DATENAME(MONTH, started_at), member_casual
ORDER BY MonthOfYear

--- Location analysis
    
    --- Most used start station by member and casual 
SELECT TOP 10 COUNT(ride_id) as numbers_of_riders, start_station_name, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY start_station_name, member_casual
ORDER BY COUNT(ride_id) DESC; 

    --- Most used end station by member and casual 
SELECT TOP 10 COUNT(ride_id) as numbers_of_riders, ended_station_name, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY ended_station_name, member_casual
ORDER BY COUNT(ride_id) DESC; 
