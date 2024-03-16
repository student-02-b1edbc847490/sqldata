create table ABC(id int primary key, DOB date not null,Age int check(Age>=18));
insert into ABC values(1,'2024-02-02',18);
select * from ABC;
select id,date_format(DOB,'%W,%D-%M-%Y') as DOB ,Age from ABC;

	-- foreign key
use tanaya;
create table user(uid int , uname varchar(20), primary key(uid));
desc user;
create table order1(oid int primary key , product_name varchar(20),uid int , foreign key(uid) references user(uid));
desc order1;
insert into user values(1,'AAAA'),(2,'BBBB'),(3,'CCCC');
select * from user;
insert into order1 values(1,'Milk',2),(2,'bread',1),(3,'Ice cream',1);
select * from order1;
insert into order1 values(4,'Milk',3);