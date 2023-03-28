create database project;
use project;
select* from phone;

### 1 feth which phone have higher price
select ï»¿Brand,model,max(price) from phone group by ï»¿Brand,model order by max(price) desc limit 5;

### 2 fetch the count of ipone
select Brand,count(*)from phone where Brand="apple";

### 3 fetch which phone have higher camera
select model,max(camera)from phone group by model order by max(camera) desc;

create table phoneinfo(gender varchar(52),uses varchar(50));
select *from phoneinfo;

### 4 fetch TWO TABELES AS ONE TABLE
alter table phone
add constraint primary key(ï»¿ID);
alter table phoneinfo
add constraint foreign key(ID) references phone(ï»¿ID);
select *from phone inner join PHONEINFO on phone.ï»¿ID=phoneinfo.ID;
select * from phoneinfo;


### 5 fetch the phone with higher battery
select model,brand,max(battery)from phone group by model,brand order by max(camera) desc;

### 6  which model have higher ram
select model,max(ram)from phone group by model order by max(ram) asc limit 4;

select * from phone where model like 's%';
#### 7  fetch which samsang phone have lower storage capacity
select *from phone;

