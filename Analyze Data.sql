--- Rides analysis

    --- Calculate number of casual and member 

SELECT COUNT(ride_id) AS numbers_of_rides, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY member_casual

    --- Calculate number of casual and member by rideable-type

SELECT COUNT(ride_id) AS numbers_of_rides, rideable_type, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY rideable_type, member_casual
ORDER BY COUNT(ride_id) DESC;

--- Time analysis for member and casual 

    --- Numbers of rides for each month

SELECT COUNT(ride_id) AS numbers_of_rides, DATEPART(MONTH, started_at) AS started_month, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY member_casual, DATEPART(MONTH, started_at)
ORDER BY COUNT(ride_id) DESC;

    --- Numbers of rides for each days of the week

SELECT COUNT(ride_id) AS numbers_of_rides, DATEPART(WEEKDAY, started_at) AS started_day, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY member_casual, DATEPART(WEEKDAY, started_at)
ORDER BY COUNT(ride_id) DESC;

    --- Numbers of rides for each hour of the day

SELECT COUNT(ride_id) AS numbers_of_rides, DATEPART(HOUR, started_at) AS started_hour, member_casual
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY member_casual, DATEPART(HOUR, started_at)
ORDER BY COUNT(ride_id) DESC;

    --- Average duration of rides for each hour of the day

SELECT 
    DATENAME(HOUR, started_at) AS hour_of_day,
    member_casual,
    AVG(ride_length) as avg_duration
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY DATENAME(HOUR, started_at), member_casual
  
    --- Average duration of rides for each day of the week

SELECT 
    DATENAME(WEEKDAY, started_at) AS day_of_week,
    member_casual,
    AVG(ride_length) as avg_duration
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY DATENAME(WEEKDAY, started_at), member_casual;

    --- Average duration of rides for each month of the year

SELECT 
    DATENAME(MONTH, started_at) AS month_of_year,
    member_casual,
    AVG(ride_length) as avg_duration
FROM dbo.cyclistic_biketrips_2023_cleaned
GROUP BY DATENAME(MONTH, started_at), member_casual


