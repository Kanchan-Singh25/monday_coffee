--PRODUCTS TABLE
create table products(
  product_id serial primary key,
  product_name varchar(100),
  price numeric(10,2)
)
select * from products;

--City TABLE

create table city (
 City_id serial primary key,
 City_name varchar(100),
 Population int,
 Estimated_rent int,
 City_rank int
 )

 select * from city;

--CUSTOMERS TABLE
create table customers(
  customer_id serial primary key,
  customer_name varchar(100),
  City_id int,
  foreign key(City_id) references city(City_id)
)

 select * from customers;

 --SALES TABLE
 create table sales(
    sales_id serial primary key,
	sale_date date,
	product_id int,
	customer_id int,
	total numeric(10,2),
	rating int,

	FOREIGN KEY (product_id) REFERENCES products(product_id),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
 )

 select * from sales;

--End of schema.


