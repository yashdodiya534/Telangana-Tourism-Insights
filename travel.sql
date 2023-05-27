-- Database: travel

-- DROP DATABASE IF EXISTS travel;

CREATE DATABASE travel
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
	
	select * from domestic_visitors_2016
	select * from domestic_visitors_2017
	select * from domestic_visitors_2018
	select * from domestic_visitors_2019
	
	create table travel_domestic as (
	select * from domestic_visitors_2016
		union
	select * from domestic_visitors_2017
		union
	select * from domestic_visitors_2018
		union
	select * from domestic_visitors_2019)
	
	select * from travel_domestic
	
	
	

	select * from foreign_visitors_2016
	select * from foreign_visitors_2017
	select * from foreign_visitors_2018
	select * from foreign_visitors_2019
	
	
	select district, sum(visitors) as total_visitors 
	from travel 
	where visitors_type = 'domestic' 
	group by district 
	order by sum(visitors) 
	
	
	select date,DATE_PART(
    'month', date
    ) AS "Month" from public.travel
	
	SELECT date,DATE_PART('month', date) AS "Month" from travel
	
select * from travel

ALTER TABLE travel 
ALTER COLUMN date  date('yyyy-mm-dd')


drop database travel

use database US
select distinct district   from travel
order by 1


update  travel
set district = 'Narayanapet'
where district='Narayanpet'



