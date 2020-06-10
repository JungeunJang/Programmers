-- 동명 동물 수 찾기 
SELECT name, count(name) 
from animal_ins
where name is not null 
group by name 
having count(name) >= 2 
order by name