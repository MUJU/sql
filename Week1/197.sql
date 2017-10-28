select
    id
from
    (
        select
            *
        from
            weather
        left join
            (
                select
                    date_add(`date`,INTERVAL    1   day)    as  sec_day
                ,   Temperature                             as  sec_Temperature
                from
                    weather
            )   a
        on
            a.sec_day   =   `date`
    )   b
where
    b.sec_Temperature   <   b.Temperature