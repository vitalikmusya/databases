select distinct maker, type from product
where type = 'laptop'
order by maker;

select name from passenger
where name not like '% J%';

select distinct maker from product join laptop on laptop.model = product.model
where laptop.speed <= 500;

select distinct maker from product 
where type = "pc" and maker = some(select distinct maker from product where type = 'laptop');

select distinct maker
from Product 
where type = 'printer' and 
      maker in(select maker from Product where model in(select model from PC where speed = (select MAX(speed) from PC )));
      
               
select date(date) from income;

select model, avg(price) as average_price, count(*) as amount from pc
group by model
having avg(price)< 800;

select distinct product.maker, ifnull(pc_count,0) as PC, ifnull(laptop_count,0) as Laptop, ifnull(printer_count,0) as Printer  
from product 
	left join (select maker,count(distinct pc.model) as pc_count 
				from pc join product on pc.model = product.model
				group by maker) as pc on pc.maker = product.maker  
	left join (select maker,count(distinct laptop.model) as laptop_count 
				from laptop join product on laptop.model = product.model
				group by maker) as laptop on laptop.maker = product.maker 
	left join (select maker,count(distinct printer.model) as printer_count 
				from printer join product on printer.model = product.model
				group by maker) as printer on printer.maker = product.maker;
 
 select name, launched, numGuns,bore,displacement,type,country, classes.class from ships join(select numGuns, bore, displacement, type,country, class from classes) as classes on classes.class = ships.class
 where 
 case when  numGuns=9 then 1 else 0 end
 + case when bore=16 then 1 else 0 end
 + case when displacement=46000 then 1 else 0 end
 + case when type='bb' then 1 else 0 end
 + case when country='Japan' then 1 else 0 end
 + case when launched=1916 then 1 else 0 end
 + case when classes.class='Revenge' then 1 else 0 end
 >=3;
 
 SELECT maker,type, product.model, price
FROM (SELECT model, price 
	FROM pc
    UNION SELECT model, price
    FROM printer
    UNION SELECT model, price
    FROM laptop) AS product_any JOIN product ON product_any.model = product.model
where maker = "B"