INSERT INTO "select
	date_trunc('month', InvoiceDate) as month_date,
	round(sum(Quantity * UnitPrice),2) as net_total_revenue
from online_retail
group by month_date
order by month_date" (month_date,net_total_revenue) VALUES
	 ('2010-12-01 00:00:00.0',748957.02),
	 ('2011-01-01 00:00:00.0',560000.26),
	 ('2011-02-01 00:00:00.0',498062.65),
	 ('2011-03-01 00:00:00.0',683267.08),
	 ('2011-04-01 00:00:00.0',493207.12),
	 ('2011-05-01 00:00:00.0',723333.51),
	 ('2011-06-01 00:00:00.0',691123.12),
	 ('2011-07-01 00:00:00.0',681300.11),
	 ('2011-08-01 00:00:00.0',682680.51),
	 ('2011-09-01 00:00:00.0',1019687.62);
INSERT INTO "select
	date_trunc('month', InvoiceDate) as month_date,
	round(sum(Quantity * UnitPrice),2) as net_total_revenue
from online_retail
group by month_date
order by month_date" (month_date,net_total_revenue) VALUES
	 ('2011-10-01 00:00:00.0',1070704.67),
	 ('2011-11-01 00:00:00.0',1461756.25),
	 ('2011-12-01 00:00:00.0',433668.01);
