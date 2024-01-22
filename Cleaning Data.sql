--- Checking for null or duplicate values, remove if necassary

--- Checking for null values
SELECT *
FROM dbo.cyclistic_biketrips_2023
WHERE
ride_id IS NULL
OR rideable_type IS NULL
OR started_at IS NULL
OR ended_at IS NULL
OR start_station_name IS NULL
OR ended_station_name IS NULL
OR member_casual IS NULL

--- Checking for duplicate values
SELECT *, COUNT(*)
FROM dbo.cyclistic_biketrips_2023
GROUP BY ride_id, rideable_type, started_at, ended_at, start_station_name, ended_station_name, member_casual
HAVING COUNT(*) > 1
