-- 오랜 기간 보호한 동물(1)
select name, datetime 
from (select i.name, i.datetime
        from animal_ins i left join animal_outs o 
        on i.animal_id = o.animal_id
        where o.animal_id is null
        order by i.datetime)
where rownum < 4;