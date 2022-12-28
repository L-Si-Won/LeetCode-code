select name
from SalesPerson
where sales_id not in(
    select sales_id
    from Orders left join Company
    On Orders.com_id=Company.com_id
    where Company.name='RED'
)

#======================================================

select name
from SalesPerson
where sales_id not in(
    select sales_id
    from Orders 
    where com_id in(
        select com_id
        from Company
        where name='RED'
    )
)
