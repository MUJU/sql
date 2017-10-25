select
    b.name as Employee
from
(
    select
        *
    from
        Employee    worker
    left join
        (
            select
                id      as  mid
            ,   name    as  mname
            ,   salary  as  msalary
            from
                Employee
        )   a
    on
        worker.managerid    =   a.mid
) b
where 
    salary > msalary