create database ss
use ss;
drop database ss
create database ss
use ss
create table customer(
cus_id int not null,
cus_firstname varchar(100) not null,
cus_surname varchar(100) not null,
cus_mobile bigint not null,
cus_dob date not null,
cus_email varchar(100) not null,
primary key(cus_id)
);
show tables
alter table customer add cus_address varchar(40) not null
select * from customer1
alter table customer
 add cus_age varchar(100) not null
after cus_dob,
add cus_salary int not null
after cus_email;
alter table customer modify cus_surname varchar(50) ;
alter table customer drop column cus_salary;
alter table customer
 change column cus_email cus_gmail varchar(20) null
alter table customer
 change column cus_surname cus_lastname varchar(20) null
 alter table customer rename to customer1
 select * from customer1
 /*truncate table cus_email*/
 create table product(
prod_id int not null,
prod_name varchar(100) not null,
prod_barno bigint not null,
primary key(prod_id)
);
select * from product
insert into customer1 values(1,'sumukh','vemana',9075757511,'1990-1-2',21,'sumukh@gamil.com','nellore');
 select * from customer1
 describe  customer1
 insert into customer1 values(2,'shamy','s',9077757511,'1990-1-6',27,'shamy@gamil.com','bang');
insert into customer1 values(3,'mahesh','p',9079957511,'1990-1-5',27,'mahesh@gamil.com','goa');
insert into customer1 values(4,'sai','KR',9099997511,'1990-1-21',28,'sai@gamil.com','ongole');
insert into customer1 values(5,'murali','mk',9078987511,'1990-1-31',27,'murali@gamil.com','pondi');

select * from customer1
insert into product values(38,'butterfly',08062015)
insert into product values(05,'jully',07051997)
insert into product values(17,'home',07172016)
update product set prod_name='pop'
where prod_id=05
select * from product
delete from product where prod_id=38;
select prod_id,prod_barno from product
alter table customer drop column cus_dob;
insert into customer1 values(6,'raj','s',8617757511,'1990-1-6',27,'raj@gamil.com','chennai');
insert into customer1 values(7,'kotti','a',8779957511,'1990-1-5',20,'kotti@gamil.com','simla');
insert into customer1 values(8,'bhanu','R',7099997511,'1990-1-21',24,'bhanu@gamil.com','guntur');
insert into customer1 values(9,'tulasi','r',7978987511,'1990-1-31',22,'tulasi@gamil.com','gudur');
insert into customer1 values(10,'kohli','r',7978987511,22,'tulasi@gamil.com','gudur');
select * from customer1
alter table customer1 drop column cus_dob;
select * from customer1 where cus_age=24 and cus_id<9;
select * from customer1 where cus_age=24 or cus_id<7;
select * from customer1 where (cus_address='chennai' and cus_firstname='raj') or (cus_id<7);
select distinct cus_age from customer1;
select * from customer1 where cus_address='gudur' order by cus_firstname desc;
select * from customer1 where cus_id<6 order by cus_firstname desc, cus_address asc
select * from customer1 where cus_id<6 order by cus_address desc,cus_firstname asc
select cus_gmail, count(*) from customer1 group by cus_gmail;
select cus_address, count(*) from customer1
select *, count(*) from customer1
SELECT COUNT(cus_address)
FROM customer1;
SELECT * FROM customer1
ORDER BY cus_address ASC, cus_firstname DESC;
select cus_adress, sum(cus_firstname) as "customer Name" from customer1 group by cus_firstname;
select cus_adress, min(cus_age) as "customer Name" from customer1 group by cus_age;
select min(cus_age) as "MIN CUSTOMER" from customer1
select max(cus_age) as "Max CUSTOMER" from customer1
select sum(cus_age) as "MIN CUSTOMER" from customer1
select cus_address from customer1 where cus_address like 'gu%'
select cus_address from customer1 where cus_address like '%ur%'
select cus_address from customer1 where cus_address like 'gu__ur'
select * from customer1 where cus_firstname in ('sumukh','raj')
select * from customer1 where cus_firstname not  in ('sumukh','raj')
select * from customer1 where cus_id between 5 and 6