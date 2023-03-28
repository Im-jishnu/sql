create database jishnu;
use jishnu;
select* from car;


###  1 fetch which car model  have high mileage
select model,max(mileage) from car group by model order by max(mileage) desc limit 1;


### 2 fetch which car model  have high price
select model,max(price) from car group by model order by max(price) desc limit 1;


### 3  fetch car models with same colour silver
select model,color from car where Color ="Silver";


### 4 fetch the count of car models with same colour silver
select  Color,model,count(*)from car group by Color,model having Color ="Silver";

### 5 fetch who is the manufactuer of rx450
select  Manufacturer,model from car group by Manufacturer,model having model ="RX 450";


select* from car; 


###  6 fetch the count of cars manufactured in 2011
select  Manufacturer,model,year,count(*)from car group by Manufacturer,model,model, year having year ="2011";

### 7  fetch the car model price between 80000 to 10000
select Model,price from car where price between 80000 and 100000 limit 5;

### 8 fetch the car which is hybrid and giving high mileage
select * from car;
select  model,Fuel_type,Mileage from car where Fuel_type ="Hybrid" order by Mileage asc limit 1;



### 9  fetch  the year of car which have high price
select year,model from car where  price=(select max(price)from car) limit 1;

#### 10  fetch jeep where build  2011 and not build in 2011
select model,category,year from car where year="2011"and Category like '%Jeep';

select model,category,year from car where year!="2011"and Category like '%Jeep%';

