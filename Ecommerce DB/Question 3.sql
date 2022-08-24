#Question 3 : Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.

select count(*), cus.CUS_GENDER 
from customer AS cus
INNER JOIN `order` AS ord
ON cus.CUS_ID = ord.CUS_ID
where ord.ORD_AMOUNT <= 3000
group by cus.CUS_GENDER