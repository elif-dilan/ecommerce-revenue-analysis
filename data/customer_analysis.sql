INSERT INTO "-- KPI: Top Customer by Revenue
-- Description: Identifies the customer with the highest total spend. (CustomerID returned NULL)

SELECT 
	CustomerID,
	round(Sum(UnitPrice * Quantity),2) as net_total_spend,
	count(distinct InvoiceNo) as total_orders
from online_retail
group by CustomerID 
order by net_total_spend desc
Limit 1" (CustomerID,net_total_spend,total_orders) VALUES
	 (NULL,1447682.12,3710);
