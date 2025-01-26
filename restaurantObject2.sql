-- what is the date range of the table?
SELECT 
    MIN(order_date) AS start_date,
    MAX(order_date) AS end_date,
    DATEDIFF(MAX(order_date), MIN(order_date)) +1 AS days_between
FROM order_details;

-- how many orders were made within these range?
select count(distinct order_id) from order_details

-- how many items were ordered within these date range?
select count(*) from order_details

-- which order has most number of items?
select order_id , count(order_id) as count from order_details
group by order_id
order by count desc

-- how many order has more than 12 items?
with orders as
     (select order_id , count(order_id) as count from order_details
     group by order_id
     having count > 12)
select count(order_id) as  orders from orders
