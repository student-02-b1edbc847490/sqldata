use tanaya;
select * from studdata;
	-- multi row sub query
select Sid from studData where Sage between 20 and 23;
select * from studData where Sid > some (select Sid from studData where sid between 1 and 3);
					-- (1,2,3) greater than 1
select * from studData where Sid > any (select Sid from studData where Sid between 1 and 3);
select * from studData where sid in (1,2,44);
-- select * from studData where sid >any (1,2,44);
select * from studData where Sage= (select max(Sage) from studData where Sage<(select max(Sage) from studData));
select * from studData where Sage in (select Sage from studData where Sid>3);
select * from studData where Sid>3;


	-- cascade
create table robot1(id1 int primary key,name1 varchar(20));

create table robot2(id2 int primary key, name2 varchar(20),id1 int ,foreign key(id1) references robot1(id1) on delete cascade );
insert into robot1 values(1,'aaaaaa'),(2,'bbbbb'),(3,'ccccc');
insert into robot2 values(11,'gggg',2);
select * from robot1;
select * from robot2;
delete from robot1 where id1=2;
drop table robot2;

create table robot2(id2 int primary key, name2 varchar(20),id1 int ,foreign key(id1) references robot1(id1) on update cascade );
insert into robot2 values(11,'gggg',3);
update robot1 set name1='Bappu' where id1=3;