# QUESTION 5 - Display the Supplier details who can supply more than one product.

#Solution number 1
#==================================
select sup.* from supplier AS sup
inner join supplier_pricing AS supp
ON sup.SUPP_ID = supp.SUPP_ID
Group by sup.SUPP_ID
having count(supp.PRO_ID)>1

#====================================


#Solution number 2
#================================

select * from supplier AS sup
inner join 
(
select * from supplier_pricing group by supp_id having count(supp_id)>1
) AS supp
ON sup.SUPP_ID = supp.SUPP_ID;

#===============================