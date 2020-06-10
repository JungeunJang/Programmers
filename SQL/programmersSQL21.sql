-- 이름에 el이 들어가는 동물 찾기
SELECT animal_id, name 
from animal_ins 
where  upper(name) like upper('%el%') and animal_type like 'Dog' 
order by name;