#QUESTION 4: Display all the orders along with product name ordered by a customer having Customer_Id=2

select ord.* , prod.pro_name 
from `order` AS ord
INNER JOIN supplier_pricing AS sup
ON ord.PRICING_ID = sup.PRICING_ID
INNER JOIN product as prod
ON prod.PRO_ID = sup.PRO_ID
where ord.CUS_ID = 2;

