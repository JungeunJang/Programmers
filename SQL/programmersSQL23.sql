-- 오랜 기간 보호한 동물(2)
select * from (SELECT o.animal_id, o.name 
               from animal_ins i left outer join animal_outs o 
               on i.animal_id = o.animal_id 
               where o.animal_id is not null 
               order by o.datetime - i.datetime desc)
where rownum < 3;