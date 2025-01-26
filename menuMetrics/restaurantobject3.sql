-- 1) combine menu_items and order_details table into single table
select * from menu_items
left join order_details
on menu_items.ï»¿menu_item_id = order_details.item_id

-- 2) what are the least and most ordered items?
select  item_id, item_name,count(item_name),category from menu_items
left join order_details
on menu_items.ï»¿menu_item_id = order_details.item_id
group by item_name, category,item_id
order by count(item_id) desc

-- 3) what were the top 5 orders that spent most money?
select order_id , sum(price) as p from menu_items
left join order_details
on menu_items.ï»¿menu_item_id  = order_details.item_id
group by order_id,price
order by p  desc
limit 5

-- 4) veiw the details of the highest spend order
select * from order_details
left join menu_items
on menu_items.ï»¿menu_item_id  = order_details.item_id
where order_id = "440"

-- 5) which category they mostly ordered?
select  category, count(item_name) from order_details
left join menu_items
on menu_items.ï»¿menu_item_id  = order_details.item_id
where order_id = "440"
group by category

-- 6) for all top 5 order id
select  category, count(item_id) from order_details
left join menu_items
on menu_items.ï»¿menu_item_id  = order_details.item_id
where order_id in("440", "740", "2961", "4423" , "2364")
group by category

