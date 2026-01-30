-- Analyze Phase --
SELECT TOP 100 * 
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share];

-- Riders by member and casual users
SELECT 
    COUNT(ride_id) AS no_of_riders,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY member_casual;

-- Rideable type by members and casual users
SELECT
    COUNT(ride_id) AS no_of_riders,
    rideable_type,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY rideable_type, member_casual
ORDER BY no_of_riders DESC;

-- Mostly used start stations by member and casual users
SELECT TOP 10
    COUNT(ride_id) AS no_of_riders,
    start_station_name,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY start_station_name, member_casual
ORDER BY no_of_riders DESC;

-- Mostly used end stations by member and casual users
SELECT TOP 10
    COUNT(ride_id) AS no_of_riders,
    end_station_name,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY end_station_name, member_casual
ORDER BY no_of_riders DESC;

-- Started time analysis by member and casual users

-- Month analysis
SELECT
    COUNT(ride_id) AS no_of_users,
    DATEPART(MONTH, started_at) AS started_month,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY member_casual, DATEPART(MONTH, started_at)
ORDER BY no_of_users DESC;

-- Day of the week analysis
SELECT
    COUNT(ride_id) AS no_of_users,
    DATEPART(WEEKDAY, started_at) AS started_day,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY member_casual, DATEPART(WEEKDAY, started_at)
ORDER BY no_of_users DESC;

-- Hour analysis
SELECT
    COUNT(ride_id) AS no_of_users,
    DATEPART(HOUR, started_at) AS started_hour,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY member_casual, DATEPART(HOUR, started_at)
ORDER BY no_of_users DESC;

-- Ended time analysis by member and casual users

-- Month analysis
SELECT
    COUNT(ride_id) AS no_of_users,
    DATEPART(MONTH, ended_at) AS ended_month,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY member_casual, DATEPART(MONTH, ended_at)
ORDER BY no_of_users DESC;

-- Day of the week analysis
SELECT
    COUNT(ride_id) AS no_of_users,
    DATEPART(WEEKDAY, ended_at) AS ended_day,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY member_casual, DATEPART(WEEKDAY, ended_at)
ORDER BY no_of_users DESC;

-- Hour analysis
SELECT
    COUNT(ride_id) AS no_of_users,
    DATEPART(HOUR, ended_at) AS ended_hour,
    member_casual
FROM [Cyclistic-Project].[dbo].[Cyclistic_Bike_Share]
GROUP BY member_casual, DATEPART(HOUR, ended_at)
ORDER BY no_of_users DESC;
