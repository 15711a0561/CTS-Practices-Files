create database cs
use cs
create table department(
dep_id int not null,
dep_name  varchar(100) not null,
primary key(dep_id)
);
describe department
create table project(
pro_id int not null,
pro_name  varchar(100) not null,
primary key(pro_id)
);
describe project
create table emloye(
emp_id int primary key,
emp_name varchar(100),
emp_designation varchar(100),
emp_doj date,
emp_dob date,
emp_age int,
emp_salary int,
dep_id int,
foreign key(dep_id) references department(dep_id)
);
describe emloye