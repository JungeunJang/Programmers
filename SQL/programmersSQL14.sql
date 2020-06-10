-- 입양시각 구하기(1)
SELECT hour, count(*) count 
from (select to_char(datetime, 'HH24') hour from animal_outs) 
where hour >= 9 and hour < 20 
group by hour 
order by hour