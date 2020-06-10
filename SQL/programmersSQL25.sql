-- 우유와 요거트가 담긴 장바구니
select cart_id 
from (SELECT cart_id, name 
	from cart_products 
	where name in ('우유' , '요거트') 
	group by cart_id, name)
group by cart_id 
having count(name) >= 2 
order by cart_id;