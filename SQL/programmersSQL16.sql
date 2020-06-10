-- 없어진 기록 찾기
SELECT o.animal_id, o.name 
from animal_ins i, animal_outs o 
where i.animal_id(+) = o.animal_id and i.animal_id is null 
order by o.animal_id;