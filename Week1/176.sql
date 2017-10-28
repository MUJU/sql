select
    max(Salary) as SecondHighestSalary
from
    (
        select
            salary
        from
            Employee
        where
            salary  not in  (
                select
                    max(salary)
                from
                    Employee
            )
        order by
            salary  DESC
    ) as s