#Question 8 : Display customer name and gender whose names start or end with character 'A'.
select CUS_NAME,CUS_GENDER AS t1
from customer
where (cus_name LIKE '%a' OR CUS_NAME LIKE 'a%');