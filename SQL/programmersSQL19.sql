-- 보호소에서 중성화한 동물
SELECT i.animal_id, i.animal_type, i.name 
from animal_ins i 
left join animal_outs o 
on i.animal_id = o.animal_id 
where i.sex_upon_intake <> o.sex_upon_outcome 
order by i.animal_id ;