insert into CUSTOMERS(id,nameOf, age) values (1,'gosha',21);
insert into CUSTOMERS(id,age) values (2,15);
insert into CUSTOMERS(id,nameOf ,age) values (3, 'ALEXEY', 30);

select * from  ORDERS;
select * from CUSTOMERS;

set foreign_key_checks = 0;

insert into ORDERS(customer_id, product_name ,price)values (3,'milk',20);
insert into ORDERS(customer_id, product_name,price) values (3,'eggs', 15);
insert into ORDERS(customer_id, price) values (5,100);


select c.nameOf, O.product_name , O.price from  CUSTOMERS c
join ORDERS O on c.id = O.customer_id
where lower(c.nameOf) = 'alexey';