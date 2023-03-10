/*
Chemicals in Cosmetics Dataset  Exploration 
Skills used: Union, Aggregate Functions, Creating Table and Views, time calculation and conversion, subquery
*/

-- Union All To Merge Tables
select ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202012-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202101-divvy-tripdata]
union 
select ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202102-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202103-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202104-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202205-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202206-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202207-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202208-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202209-divvy-publictripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202210-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202211-divvy-tripdata]


-- Create Single Capstone Table
create table Capstone_project (
ride_id	varchar(50),
rideable_type varchar(50),
started_date varchar(50),
started_day	varchar(50),
started_Time varchar(50),
started_period varchar(50),
ended_date varchar(50),
ended_day varchar(50),
ended_time varchar(50),
ended_period varchar(50),
ride_Length varchar(50),
ride_length_in_seconds real,
start_station_name nvarchar(250),
end_station_name nvarchar(250),
member_casual varchar(50)
)

-- Inserting our table combinaions into one table we can work with.
insert into Capstone_project
select ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202012-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202101-divvy-tripdata]
union 
select ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202102-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202103-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202104-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202205-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202206-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202207-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202208-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202209-divvy-publictripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202210-divvy-tripdata]
union 
select  ride_id, rideable_type, started_date, started_day, started_time, started_period, ended_date, ended_day, ended_time, ended_period, ride_length, ride_length_in_seconds, start_station_name, end_station_name, member_casual
from [Capstone_project]..[202211-divvy-tripdata]

--To view our newly created table
SELECT TOP 10 *
FROM ..Capstone_project

--WHERE (start_station_name is not null) and (end_station_name is not null);

-- (Q1) to determine number of users who uses which Type of bikes and if they are Casual or Annual Members

select member_casual as user_type, rideable_type as bike_type, count(rideable_type) as NoOfUsers_PerBike
from ..Capstone_project
group by member_casual, rideable_type
order by NoOfUsers_PerBike DESC

-- (2) to determine  which day of the week has more Rides for Casual  and Annual Members

select member_casual as user_type, started_day, count(started_day) as No_Of_dayRides
from ..Capstone_project
group by member_casual, started_day
order by No_Of_dayRides DESC


-- (3) to understand  which time of the day Casual and Annual Members initiate rides most

select member_casual as user_type, started_period, count(started_period) as No_Of_Rides_initiated
from ..Capstone_project
group by member_casual, started_period
order by No_Of_Rides_initiated DESC

-- (4) to determine average ride length between Casual Riders and Annual Members
---for casual riders
select avg(ride_length_in_seconds) as AvgRideTime_inseconds
from ..Capstone_project
where member_casual = 'casual'

--converting the calculation into proper time
DECLARE @s INT
SELECT
    @s = 1402.759 
SELECT
    @s
  , CONVERT(TIME, DATEADD(SECOND, @s, 0)) as casual_average_time; 


--for member riders
select avg(ride_length_in_seconds) as AvgRideTime_inseconds
from ..Capstone_project
where member_casual = 'member'

--converting the calculation into proper time
DECLARE @s INT
SELECT
    @s = 777.47 
SELECT
    @s
  , CONVERT(TIME, DATEADD(SECOND, @s, 0)) as member_average_time;

-- (5) to determing the Total number of Rides between both casual and member riders
select member_casual as user_type, count(member_casual) as Total_no_Of_Riders
from ..Capstone_project
group by member_casual
order by 2 desc


--(6) to Calculate the maximum ride_length by riders be it member or casual.
select member_casual as user_type, max(ride_length) as max_ridelength
from ..Capstone_project
group by member_casual

--(7) to know how many rides got started and ended immediately
select 	member_casual as user_type, count(ride_id) as no_rides_unused
	from(
		select *
		from ..Capstone_project
		where (started_time = ended_time) and (start_station_name is not null) and (end_station_name is not null)
		) as rides
group by member_casual


--(8) to determine Top 10 station has the highest rides that got started and ended immediately
select 	member_casual as user_type, start_station_name, count(start_station_name) as station_rides_unused
	from(
		select *
		from ..Capstone_project
		where (started_time = ended_time) and (start_station_name = end_station_name) and (start_station_name is not null) and (end_station_name is not null)
		) as rides
group by member_casual,start_station_name
order by 3 desc

--(9) To know Top 10 station is mostly used to start/end trip and by either user excluding unused trips.
-- (A) for  casual riders start_trip
select member_casual as user_type, start_station_name, count(start_station_name) as casual_most_used_station_to_starttrip
	from (
		select *
		from ..Capstone_project
		where (member_casual LIKE 'casual') and (start_station_name is not null) and (end_station_name is not null) and (start_station_name != end_station_name)
		) as casual_start_rides
group by member_casual, start_station_name
order by 3 DESC
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY

-- (B) for  member riders start_trip
select member_casual as user_type, start_station_name, count(start_station_name) as member_most_used_station_to_starttrip
	from (
		select *
		from ..Capstone_project
		where member_casual LIKE 'member' and (start_station_name is not null) and (end_station_name is not null) and (start_station_name != end_station_name)
		) as member_start_rides
group by member_casual, start_station_name
order by 3 DESC
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY

-- (C) for  casual riders end_trip
select member_casual as user_type, end_station_name, count(end_station_name) as casual_most_used_station_to_endtrip
	from (
		select *
		from ..Capstone_project
		where member_casual LIKE 'casual' and (start_station_name is not null) and (end_station_name is not null) and (start_station_name != end_station_name)
		) as casual_end_rides
group by member_casual, end_station_name
order by 3 DESC
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY

-- (D) for  member riders end_trip
select member_casual as user_type, end_station_name, count(end_station_name) as member_most_used_station_to_endtrip
	from (
		select *
		from ..Capstone_project
		where member_casual LIKE 'member' and (start_station_name is not null) and (end_station_name is not null) and (start_station_name != end_station_name)
		) as member_end_rides
group by member_casual, end_station_name
order by 3 DESC
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY