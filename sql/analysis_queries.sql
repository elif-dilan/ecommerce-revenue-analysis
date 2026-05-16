------------- net total revenue----------------
-- KPI: Net Total Revenue
-- Description: Calculates total net revenue including returns.

select
	round(sum(UnitPrice * Quantity),2) as net_total_revenue
from online_retail;
------------------------------------------


-------------top customer net total spend----------------
-- KPI: Top Customer by Revenue
-- Description: Identifies the customer with the highest total spend. (CustomerID returned NULL)

SELECT 
	CustomerID,
	round(Sum(UnitPrice * Quantity),2) as net_total_spend,
	count(distinct InvoiceNo) as total_orders
from online_retail
group by CustomerID 
order by net_total_spend desc
Limit 1;
------------------------------------------


-------------top country net total revenue----------------
select
	Country,
	round(sum(UnitPrice * Quantity),2) as net_total_revenue,
	count(distinct InvoiceNo) as total_orders,
	count(distinct CustomerID) as total_customers
from online_retail
group by Country
order by net_total_revenue desc
limit 1;
--------------------------------------------


-------------top product net total revenue----------------
SELECT
	StockCode,
	max(Description) description,
	round(sum(UnitPrice * Quantity),2) as net_total_revenue,
	sum(Quantity) as total_quantity
from online_retail
group by StockCode
order by net_total_revenue desc
Limit 1;
---------------------------------------------



------------- monthly trend ----------------
select
	date_trunc('month', InvoiceDate) as month_date,
	round(sum(Quantity * UnitPrice),2) as net_total_revenue
from online_retail
group by month_date
order by month_date;
----------------------------------------------


----------- retention purchase -------------------
select
	CustomerID,
	COUNT(distinct InvoiceNo) as total_orders
from online_retail
group by CustomerID
Having count (distinct InvoiceNo) > 1
order by total_orders desc;
