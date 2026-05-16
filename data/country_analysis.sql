INSERT INTO "select
	Country,
	round(sum(UnitPrice * Quantity),2) as net_total_revenue,
	count(distinct InvoiceNo) as total_orders,
	count(distinct CustomerID) as total_customers
from online_retail
group by Country
order by net_total_revenue desc
limit 1" (Country,net_total_revenue,total_orders,total_customers) VALUES
	 ('United Kingdom',8187806.36,23494,3950);
