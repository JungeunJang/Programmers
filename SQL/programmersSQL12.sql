-- 개와 고양이는 몇 마리 있을까 
SELECT animal_type, count(animal_type) 
from animal_ins 
group by animal_type 
order by animal_type