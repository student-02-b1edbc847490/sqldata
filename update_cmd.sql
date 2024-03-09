use tanaya;
select * from Student;
insert into Student(Fname,Lname,Contact) values('Tanaya','kamble',9876543210);
insert into Student(Fname,Lname,Contact) values('Tirtha','kurte',9078564323);
insert into Student(Fname,Lname,Contact) values('XYZ','hgty',9988776655);
truncate table Student;
delete from Student where roll_no=105;
delete from Student;
set sql_safe_updates=0;
alter table Student auto_increment=101;
insert into Student(Fname,Lname,Contact) values('lkj','tujhu',9988776005);
insert into Student(Fname,Lname,Contact) values('Dfg','tuv',8899008909);
update Student set Fname='Shruti',Lname='Kamble' where roll_no=106;
-- this query for change fname & lname
update Student set Fname='Shruti',Lname='Kamble' where Contact=8899008909;