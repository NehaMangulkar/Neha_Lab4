#6)	Find the least expensive product from each category and print the table with category id, name, product name and price of the product

select cat.CAT_ID as 'category Id' , cat.CAT_NAME as 'category name',  LEAST_CATEGORY_PRICE.LEAST_PRICE as ' Least price' from
(select  min(SUPP_PRICE) as LEAST_PRICE , PR.CAT_ID, PR.PRO_ID from supplier_pricing SP INNER JOIN product PR ON
SP.PRO_ID= PR.PRO_ID GROUP BY PR.CAT_ID) as LEAST_CATEGORY_PRICE 
INNER JOIN product PR ON PR.PRO_ID = LEAST_CATEGORY_PRICE.PRO_ID
 INNER JOIN category cat ON 
cat.CAT_ID = PR.CAT_ID;
