select
    score as Score,
    CONVERT(Rank,SIGNED) as Rank
from
    Scores
left join
    (
        select
            @rownum :=  @rownum +   1   as  Rank
        ,   d_score
        from
            (
                select
                    distinct(score) as  d_score
                from
                    Scores
                order by
                    score   DESC
            )       sc
        ,   (
                select
                @rownum :=0
            )       rowno
    )   a
on
    a.d_score    =   score
    order by score desc