--bai 1
select distinct CITY from STATION
where ID % 2 = 0
--bai 2 
select count(CITY) - count(distinct CITY) from STATION
--bai 4
SELECT
ROUND(cast(sum(item_count * order_occurrences) / sum(order_occurrences) as decimal),1) as mean
FROM items_per_order;
--bai 5
SELECT candidate_id
FROM candidates
where skill in('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill)=3
--bai 6
SELECT user_id, 
max(date(post_date))-min(date(post_date)) as days_between 
FROM posts 
where post_date>='2021-01-01' and post_date<'2022-01-01'
group by user_id
having count(post_id) >=2
--bai 7
SELECT card_name,
max(issued_amount)-min(issued_amount) as difference
FROM monthly_cards_issued
group by card_name
order by difference desc
--bai 8 
SELECT manufacturer,
count(drug) as drug_count,
abs(sum(cogs-total_sales)) as total_loss
FROM pharmacy_sales
where total_sales<cogs
group by manufacturer
order by total_loss desc
--bai 9
select *  from Cinema
where id%2=1 and description <> 'boring'
order by rating desc
--bai 10
select teacher_id,
count(distinct subject_id) as cnt
from Teacher
group by teacher_id
--bai 11
select user_id,
count(follower_id) as followers_count
from Followers
group by  user_id
order by user_id
--bai 12
select class from Courses
group by class
having count(student) >= 5
