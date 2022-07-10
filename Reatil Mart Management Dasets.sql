create database SQL_basics;

show databases;

use SQL_basics;

show tables;

create table product(
product_code integer, product_name varchar(100),stock integer, category varchar(100));

create table customer(
customer_id integer, customer_name varchar(100), customer_location varchar(100),customer_phone_no integer
);

create table sales (
date date, order_no integer ,product_code integer,product_name varchar(100),quantity integer,price integer);

insert into product values (50,'pencil',20,'stationary');

select* from product;

select * from product_datasets;

select * from customer_datasets;

alter table sales_datasets
add s_no integer,
add categories  varchar(10);

select * from sales_datasets;

alter table product_datasets
modify stock varchar(26);

desc product_datasets;

alter table customer_datasets rename customer_details;

alter table sales_datasets 
drop column s_no,
drop column categories;

select* from sales_datasets;

select order_no, c_id, order_date, price , qty from sales_datasets;

select * from product_datasets
where category = 'stationary';

desc product_datasets;

select distinct category from product_datasets;

select * from sales_datasets
where qty > 2 and price < 500;

select * from customer_details
where c_name like '%a';

select * from product_datasets
order by price desc;

select p_code ,category from product_datasets
group by category
having count(category)>2;

select sales_datasets.order_no , customer_details.c_name from sales_datasets
left  join customer_details on sales_datasets.c_id = customer_details.c_id 
union
select sales_datasets.order_no , customer_details.c_name from sales_datasets
right  join customer_details on sales_datasets.c_id = customer_details.c_id ;

