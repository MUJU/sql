select
    a.name    as  Customers
from
    (
        select
            CustomerId,name
        from
            Customers
        left join
            orders
        on
            orders.CustomerId   =   customers.Id
    ) a
where
    CustomerId  is   null