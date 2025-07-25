
-- Retrieve Products in a Specific Category
select p.id, p.name, p.price ,c.name 
from products p 
join categories c 
on p.category_id= c.id 
where c.name="books";

-- Retrieve a User's Order History
select u.id, u.username,o.total_amount, o.status, oi.item_id, p.name
from orders o 
join order_items oi on o.id=oi.order_id
join products p on oi.item_id=p.id
join users u on u.id=o.customer_id
where o.customer_id=3;

-- Find Products with Low Stock
select * from products where stock=(select min(stock) from products);


-- Retrieve Product Reviews
select p.id, p.name, r.review_text , u.username
from products p
join reviews r on p.id=r.product_id
join users u on u.id=r.user_id;


-- Calculate Total Sales for a Given Month
select sum(p.price* oi.quantity) as totalprice from order_items oi
join orders o on o.id=oi.order_id
join products p on p.id=oi.item_id
where month(o.order_date)=8 AND year(o.order_date)=2024;


-- Apply a Discount Code
select discount_percentage from discount_codes
where code="DIWALI21" AND "2024-7-31" between start_date and end_date;


--  Retrieve Monthly Sales Report
select p.name as product_name, sum(oi.quantity) as total_quantity_sold, SUM(oi.quantity * p.price) AS total_sales
from orders o
join order_items  oi on o.id=oi.order_id
join products p on oi.item_id=p.id
where year(o.shipping_date)=2024 AND month(o.shipping_date)=7
GROUP BY p.id, p.name;

--  Retrieve Users with More Than One Or order
select u.username, count(o.id) as ordercount from users u
join orders o on o.customer_id=u.id
group by u.id, u.username
HAVING COUNT(o.id) > 0;

-- Find Top Rated Products
select p.name, avg(r.rating) as rating 
from products p
join reviews r on p.id=r.product_id
group by p.id, p.name
having avg(r.rating)>=4;

-- Retrieve Latest Orders
select * from orders
order by order_date desc
limit 2;


 -- Count Products in Each Category
select c.name , count(p.category_id) as totalcount
from products p
join categories c on c.id=p.category_id
group by c.id, c.name;

-- Retrieve Products and Their Categories
select p.name, c.name 
from products p
join categories c on c.id=p.category_id;
-- --------------------------------------------------------------------------------------------------------------------------
-- Find Most Expensive Products in Each Category
select p.name, c.name 
from products p
join categories c on c.id=p.category_id
where p.price=(SELECT MAX(p2.price)
    FROM products p2
    WHERE p2.category_id = p.category_id
);

select c.name as categoryName, p.name as productName, max(p.price) as highestPrice
 from products p 
 join categories c on p.category_id = c.id
group by c.name order by highestPrice desc;
-- --------------------------------------------------------------------------------------------------------------------------

-- Retrieve All Categories and Products in Each Category
select c.id, c.name ,p.name
from categories c
right join products p on p.category_id=c.id;

--  Find Products That Are Out of Stock and Their Categories
select c.id, c.name ,p.name
from categories c
 join products p on p.category_id=c.id
 where p.stock=0;
 
 
 -- Find Most Frequently Purchased Products
 select p.name, count(oi.item_id) as itemcount
 from products p
 join order_items oi on oi.item_id=p.id
 join orders o on o.id=oi.order_id
 group by p.id,p.name
 order by itemcount desc
 limit 5;
 
 
