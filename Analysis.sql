--- Calculate number of casual and member riders
SELECT COUNT(ride_id) AS numbers_of_riders, member_casual
FROM dbo.cyclistic_biketrips_2023
GROUP BY member_casual

--- Calculate number of casual and member riders by rideable-type
SELECT COUNT(ride_id) AS numbers_of_riders, rideable_type, member_casual
FROM dbo.cyclistic_biketrips_2023
GROUP BY rideable_type, member_casual
ORDER BY COUNT(ride_id) DESC;

--- Most used start station by member and casual riders
SELECT TOP 10 COUNT(ride_id) as numbers_of_riders, start_station_name, member_casual
FROM dbo.cyclistic_biketrips_2023
GROUP BY start_station_name, member_casual
ORDER BY COUNT(ride_id) DESC; 

--- Most used end station by member and casual riders
SELECT TOP 10 COUNT(ride_id) as numbers_of_riders, ended_station_name, member_casual
FROM dbo.cyclistic_biketrips_2023
GROUP BY ended_station_name, member_casual
ORDER BY COUNT(ride_id) DESC; 

--- Time analysis for member and casual riders

--- Numbers of riders for each month
SELECT COUNT(ride_id) AS numbers_of_riders, DATEPART(MONTH, started_at) AS started_month, member_casual
FROM dbo.cyclistic_biketrips_2023
GROUP BY member_casual, DATEPART(MONTH, started_at)
ORDER BY COUNT(ride_id) DESC;

--- Numbers of riders for each days of the week
SELECT COUNT(ride_id) AS numbers_of_riders, DATEPART(WEEKDAY, started_at) AS started_day, member_casual
FROM dbo.cyclistic_biketrips_2023
GROUP BY member_casual, DATEPART(WEEKDAY, started_at)
ORDER BY COUNT(ride_id) DESC;

--- Numbers of riders for each hour of the day
SELECT COUNT(ride_id) AS numbers_of_riders, DATEPART(HOUR, started_at) AS started_hour, member_casual
FROM dbo.cyclistic_biketrips_2023
GROUP BY member_casual, DATEPART(HOUR, started_at)
ORDER BY COUNT(ride_id) DESC;

--- Calculate average ride length
SELECT ride_id, DATEDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM dbo.cyclistic_biketrips_2023

SELECT member_casual, AVG(ride_length)
FROM 
    

