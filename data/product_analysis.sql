INSERT INTO "SELECT
	StockCode,
	max(Description) description,
	round(sum(UnitPrice * Quantity),2) as net_total_revenue,
	sum(Quantity) as total_quantity
from online_retail
group by StockCode
order by net_total_revenue desc
Limit 1" (StockCode,description,net_total_revenue,total_quantity) VALUES
	 ('DOT','DOTCOM POSTAGE',206245.48,1707);
