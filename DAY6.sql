#ex1
select name 
from STUDENT
where marks > 75
order by right(name,3),ID
#ex2
select user_id, concat(upper(left(name,1)), lower(substring(name,2))) as name
from Users
order by user_id
#ex3
SELECT manufacturer, 
'$' || round(SUM(total_sales)/1000000,0) ||' million' as sales
from pharmacy_sales
group by manufacturer
order by SUM(total_sales) desc, manufacturer 
#ex4
  SELECT 
extract(month from submit_date) as mth, product_id as product, round(avg(stars),2) FROM reviews
group by mth, product
order by mth, product
#ex5
  SELECT sender_id, COUNT(message_id) as message_count
FROM messages
where extract(month from sent_date)=8 and extract(year from sent_date)=2022
group by sender_id
order by COUNT(message_id) desc
limit 2
#ex6
  select tweet_id 
from  Tweets
where length(content)>15
#ex7

#ex8

#ex9

#ex10
