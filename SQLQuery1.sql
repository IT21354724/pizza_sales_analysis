--Dataset
SELECT *
FROM pizza_sales

--Total Revenue
SELECT SUM(total_price) as total_revenue
from pizza_sales 

--Average Order Value
SELECT sum(total_price)/count(distinct order_id) as average_order_value
from pizza_sales

--Total Pizza Sold
SELECT SUM(quantity) as Total_Pizza_Sold
FROM pizza_sales

--Total Orders
SELECT COUNT(DISTINCT order_id) as total_orders
from pizza_sales

--Average Pizza Per Order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id) AS decimal(10,2)) AS decimal(10,2)) as average_pizza_order
from pizza_sales

--Daily Trend for total orders
SELECT DATENAME(DW,order_date) AS order_day,COUNT(DISTINCT order_id) as Total_orders
from pizza_sales
group by  DATENAME(DW,order_date)

--Hourly Trend for Total Orders
SELECT DATEPART(HOUR,order_time) as order_hours,count(distinct order_id) as total_orders
from pizza_sales
group by DATEPART(HOUR,order_time)
order by DATEPART(HOUR,order_time)

--Percentage sales by pizza category
select pizza_category,sum(total_price)*100.00/(select sum(total_price) from pizza_sales) as percentage_total_sales
from pizza_sales
group by pizza_category
 
--Percentage size by pizza category
select pizza_size,CAST(sum(total_price)*100.00/(select sum(total_price) from pizza_sales)AS decimal(10,2)) as percentage_pizzasize_sales
from pizza_sales
group by pizza_size

--Total pizzas sold  by pizza category
select pizza_category,sum(quantity) as total_pizza_sold
from pizza_sales
group by pizza_category

--Top 5 best sellers pizza
select top 5 pizza_name,sum(quantity) as total_pizza_sold
from pizza_sales
group by pizza_name
order by sum(quantity) desc

--worst 5 sellers pizza
select top 5 pizza_name,sum(quantity) as total_pizza_sold
from pizza_sales
group by pizza_name
order by sum(quantity) 
