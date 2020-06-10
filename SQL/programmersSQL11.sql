-- 중복제거하기 
SELECT count(distinct name) from animal_ins where name is not null