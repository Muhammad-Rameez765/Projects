-- Creating table Cyclistic_Bike_share using 12 tables data 

CREATE TABLE Cyclistic_Bike_Share (
    ride_id NVARCHAR(50) NULL,
    rideable_type NVARCHAR(50) NULL,
    started_at DATETIME2 NULL,
    ended_at DATETIME2 NULL,
    start_station_name VARCHAR(MAX) NULL,
    end_station_name VARCHAR(MAX) NULL,
    member_casual NVARCHAR(50) NULL
);

-- Insertion from all 12 tables
-- ...

INSERT INTO Cyclistic_Bike_Share (ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual)
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM [202201-divvy-tripdata];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM [202202-divvy-tripdata];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202203];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202204];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202205];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202206];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202207];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202208];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202209];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202210];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202211];

INSERT INTO Cyclistic_Bike_Share
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, member_casual FROM dbo.[202212];

-- Count how many rows 

SELECT COUNT(*) AS TotalRows FROM Cyclistic_Bike_Share;


-- Process Phase --

--- Identify the null values  

SELECT COUNT(*) AS NullRowCount
FROM dbo.Cyclistic_Bike_Share
WHERE
    ride_id IS NULL
    OR rideable_type IS NULL
    OR started_at IS NULL
    OR ended_at IS NULL 
    OR start_station_name IS NULL
    OR end_station_name IS NULL
    OR member_casual IS NULL;


-- Removing duplicate values

DELETE FROM dbo.Cyclistic_Bike_Share
WHERE
ride_id IS NULL
OR rideable_type IS NULL
OR started_at IS NULL
OR ended_at  IS NULL 
OR start_station_name IS NULL
OR end_station_name IS NULL
OR member_casual IS NULL;



Select * 
From Cyclistic_Bike_Share;