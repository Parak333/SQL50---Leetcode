# Write your MySQL query statement below
with comb_table as
(select p.product_id, price, units, price*units as total
from Prices p
left join UnitsSold u
on p.product_id = u.product_id
and p.start_date <= u.purchase_date
and p.end_date >= u.purchase_date)

select product_id, coalesce(round(total_price/total_units,2),0) as average_price
from
(select product_id, sum(units) as total_units, sum(total) as total_price
from comb_table
group by product_id) as table_b

