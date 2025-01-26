-- how many items in the table?
select count(item_name) as item_count from menu_items

-- what is min price item in the table?
select min(price) from menu_items

-- max price item in table?
select item_name, price from menu_items
where price = (select max(price) from menu_items)

-- min price item in table?
select item_name, price from menu_items
where price = (select min(price) from menu_items)

-- how many items in italian category?
select count(category) from menu_items 
where category = "Italian";

-- max and min price item in italian category?
select item_name,category, price from menu_items
where  category = "Italian"
order by price desc
limit 1

select item_name,category, price from menu_items
where  category = "Italian"
order by price asc
limit 1

select item_name , category, price from menu_items
where category = "Italian"

-- each category how many items?
select count(distinct category) from menu_items

-- each category avg price?
select category, avg(price) as p from menu_items
group by category
order by p desc;

-- what is the date range of the table?
SELECT 
    MIN(order_date) AS start_date,
    MAX(order_date) AS end_date,
    DATEDIFF(MAX(order_date), MIN(order_date)) +1 AS days_between
FROM order_details;







