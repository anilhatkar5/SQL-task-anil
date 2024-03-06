--1. Create a table download from kaggle database or from anywhere. and create 5 question and solve using sql.

create table diwalisale3 (
	index serial  primary key,
    User_ID int ,
	Cust_name varchar ,
	Product_ID varchar,
	Gender varchar,
	Age__Group varchar,
	Age int,
	Material_Status int,
	State_name varchar,
	Zone_a varchar,
	Occupation varchar,
	Product_Category varchar,
	Orders varchar,
	Amount varchar ,
	age_group varchar
)

select * from diwalisale3

copy diwalisale3 from 'E:\Data Analytics\diwali.csv' DELIMITER ',' csv header;

select * from diwalisale3

--A.Get all data whose state_name start from 'U' and the occupation is 'IT Sector' 
select * from diwalisale3 where state_name like 'U%' and occupation = 'IT Sector' 

--B.change column name of 'product_id' to 'cust_product_id'
alter table diwalisale3 rename column product_id to cust_product_id

--C.Get first 50 customer data whose age is greater than 30
select * from diwalisale3 where age > 30 order by age limit 50

--D. create a view having the only female and there amount in maharashtra. amount is less than 19000  
create view MH_f as
select gender , amount, state_name from diwalisale3
where gender = 'F' and state_name = 'Maharashtra' and amount < '19000'

select * from MH_f

--E. Get count of 'diwalisale3'
select count (*) from diwalisale3


 
 