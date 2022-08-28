create table ORDERS(
    id serial primary key not null,
    dateOf datetime default now() not null,
    customer_id int not null,
    product_name varchar(20) not null  default 'неизвестен',
    price int check ( price>0 ),
    foreign key (customer_id) references CUSTOMERS(id)
);

