use [pizza DB]

select * from pizza_sales;

--total price
select sum(total_price) as total_revenue from pizza_sales;

--average order value
select (sum(total_price)/count(distinct order_id)) as avrage_order_value from pizza_sales;

-- total pizza sold
select sum(quantity) as total_pizza_sold from pizza_sales;

--total order
select count(distinct order_id) as total_order from pizza_sales;

--average pizza per order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales

--dialy trend for total order

select datename(DW,order_date) as order_day ,count(distinct order_id) total_order from pizza_sales 
group by datename(DW,order_date) 
;

--houry trend for total order

SELECT DATEPART(HOUR, order_time) as order_hours, COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by DATEPART(HOUR, order_time)
order by DATEPART(HOUR, order_time);

--Total Pizzas Sold by Pizza Category
select pizza_category , cast(sum(total_price) as decimal(10,2) ) as total_revenue , 
cast(sum(total_price) *100 /(select sum(total_price) 
from pizza_sales) as decimal(10,2)) as PCT from pizza_sales
group by pizza_category 
;

-- % of Sales by Pizza Size

select pizza_size , cast(sum(total_price) as decimal(10,2))as tatal_revenue ,
cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2))
from pizza_sales
group by pizza_size
order by pizza_size;

-- Total Pizzas Sold by Pizza Category
SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC
;

-- Top 5 Best Sellers by Total Pizzas Sold
SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC


--Bottom 5 Best Sellers by Total Pizzas Sold
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC

