show databases;
use tanaya;
select * from employee;
alter table employee drop age;
create table table1(id int,name varchar(10));
drop table table1;
drop table employee;
create table Student(roll_no int not null, Fname varchar(20), Lname varchar(20), Contact int unique);
desc Student;
alter table Student add primary key(roll_no);
insert into Student values(1,'tanaya','kamble',9827362545);
select * from Student;
alter table Student modify Contact bigint unique;
insert into Student values(2,'tirtha','kurte',9765432156);
insert into Student values(3,'karuna','bhatkar',9238574627);
insert into Student values(4,'swaroop','bane',9238746521);
insert into Student values(5,'pravara','kamble',9988776655);
insert into Student values(6,'shreya','sonar',9483726152);
insert into Student values(7,'aryan','kamble',9687654325);
insert into Student values(8,'vihan','kurte',9087654321);
insert into Student values(9,'shreya','sangare',9965432678);
insert into Student values(10,'shraddha','dhepase',9845674321);
insert into Student values(11,'abd','kjh',7890756436),(12,'adjhq','ndjhs',7865432189);
select * from Student;
truncate table Student;
update Student set Fname = 'harsh', Lname='kamble' where roll_no=11;
update Student set Fname='darsh', Lname='gavankar' where roll_no=12;
alter table Student add column City varchar(20) default 'Mumbai';
alter table Student modify roll_no int auto_increment;
insert into Student(Fname,Lname,Contact) values('tirtha','kurte',9765432156);
insert into Student(Fname,Lname,Contact) values('karuna','bhatkar',9238574627);
alter table student auto_increment=100;
insert into Student(Fname,Lname,Contact) values('swaroop','bane',9238746521);
