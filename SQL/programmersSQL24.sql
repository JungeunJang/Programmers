-- DATETIME에서 DATE로 형 변환
SELECT animal_id, name, to_char(datetime, 'yyyy-mm-dd') 
from animal_ins 
order by animal_id;