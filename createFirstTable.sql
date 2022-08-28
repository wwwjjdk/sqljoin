create table CUSTOMERS(
    id int primary key not null,
    nameOf varchar(20) not null default 'неизвестен',
    lastname varchar(20) not null  default 'неизвестен',
    age int check ( age> 0 ),
    phone_number varchar(20) not null default '-'
);