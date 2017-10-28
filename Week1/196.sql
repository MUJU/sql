select
    distinct(email)
from
    Person
left join
    (
        select
            id
        ,   email   as  o_email
        from
            Person
    )   a
on
    email   =   a.o_email