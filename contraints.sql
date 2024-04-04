create table ABC(id int primary key, DOB date not null,Age int check(Age>=18));
insert into ABC values(1,'2024-02-02',18);
select * from ABC;
select id,date_format(DOB,'%W,%D-%M-%Y') as DOB ,Age from ABC;

	-- foreign key
use tanaya;
create table user1(uid int , uname varchar(20), primary key(uid));
desc user1;
create table order12(oid int primary key , product_name varchar(20),uid int , foreign key(uid) references user1(uid));
desc order12;
insert into user1 values(1,'AAAA'),(2,'BBBB'),(3,'CCCC');
select * from user1;
insert into order12 values(1,'Milk',2),(2,'bread',3),(3,'Ice cream',1);
select * from order12;
insert into order12 values(4,"banana",null);
select user1.uname,order12.product_name from order12 inner join user1 on user1.uid=order12.uid;
select * from order12 where uid is null;
select * from order12 where uid  is not null;

create table product(pid int primary key,pname varchar(20));
create table order1(oid int primary key,uid int ,pid int,foreign key(uid) references user1(uid),foreign key(pid) references product(pid));
create table payment(pay_id int primary key,amount bigint ,oid int , foreign key(oid) references order1(oid));
insert into product values(101,'Bike'),(102,'Laptop'),(103,'Mobile');
select * from product;
insert into order1 values(201,3,102),(202,1,103);
select * from order1;
select user1.uname,product.pname,payment.