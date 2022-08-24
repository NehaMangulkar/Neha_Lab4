#Question 7 : Display the Id and Name of the Product ordered after “2021-10-05”.

select pro.pro_id, pro.pro_name 
from `Order` AS ord
INNER JOIN supplier_pricing AS sup
ON ord.pricing_id = sup.pricing_id
INNER JOIN product AS pro
ON sup.pro_id = pro.pro_id
WHERE ord.ord_date > '2021-10-05';





