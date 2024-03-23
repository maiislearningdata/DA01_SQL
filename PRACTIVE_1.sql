--  baitap1
select * NAME from CITY
where COUNTRYCODE = 'USA' and POPULATION > 120000
--  baitap2
select * from CITY 
where COUNTRYCODE = 'JPN'
--  baitap3
select CITY, STATE from STATION
--  baitap4
select CITY from STATION
where CITY like 'e%' or CITY like 'a%' or CITY like 'o%' or CITY like 'u%' or CITY like 'i%'
--  baitap5
select distinct CITY from STATION
where CITY like '%a' or CITY like '%o' or CITY like '%e' or CITY like '%u' or CITY like '%i'
--  baitap6
select distinct CITY from STATION 
  where CITY not like 'a%' and CITY not like 'e%' and CITY not like 'i%' and CITY not like 'o%' and CITY not like 'u%'
--  baitap7
select name from Employee
order by name
--  baitap8
select name from Employee
where salary > 2000 and months < 10
order by employee_id
--  baitap9
select product_id from Products 
where low_fats = 'Y' and recyclable = 'Y'
--  baitap10
select name from Customer 
where referee_id <> 2 or referee_id is null
--  baitap11
select name, population, area from World
where area >= 3000000 or population >= 25000000
--  baitap12
select distinct author_id as id from Views
where author_id = viewer_id
order by author_id
--  baitap13
SELECT part, assembly_step FROM parts_assembly
where finish_date is null
--  baitap14
select * from lyft_drivers
where yearly_salary <= 30000 or yearly_salary >= 70000
--  baitap15
select year, advertising_channel, money_spent from uber_advertising
where money_spent >100000 and year = '2019'
