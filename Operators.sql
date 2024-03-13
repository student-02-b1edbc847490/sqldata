use tanaya;
create table StudInfo(ID int primary key auto_increment, Name varchar(20) not null, Department varchar(20) not null, Marks float not null,Paid_fees int not null,Attendance int not null);
insert into StudInfo(Name,Department,Marks,Paid_fees,Attendance) values('Anvi','CS',78.00,35000,80);
select * from StudInfo;
insert into StudInfo(Name,Department,Marks,Paid_fees,Attendance) values('Ananya','Electronics',70.80,25000,75),('Shwet','Mechanical',77.60,30000,65),('Aryan','CS',80.00,35000,90),('Shivani','Mechanical',78.00,30000,80),('Tanvi','Electonics',80.00,25000,85);
insert into StudInfo(Name,Department,Marks,Paid_fees,Attendance) values('Vihan','CS',56.00,35000,90),('Viraj','Mechanical',80.00,30000,80),("Anvi",'Electronics',90.80,25000,70),('Tanishka','CS',70.90,35000,50);
	-- Like operator
select * from StudInfo where Name like 's%';
select * from StudInfo where Name like '%s';
select * from StudInfo where Name like '%n';
select * from StudInfo where Name like 's%n';
select * from StudInfo where Name like '_a%';
select * from StudInfo where Name like '%n_';
select * from StudInfo where Name like '%a_';
select * from StudInfo where Name like 's___t';
select * from StudInfo where Name like 'v%n';

	-- limit
select * from StudInfo limit 3;
	-- we have found first hight amount from table 
select * from StudInfo order by Paid_fees desc;
select * from StudInfo order by Paid_fees desc limit 3;
select distinct Paid_fees from StudInfo order by Paid_fees desc limit 1;
select distinct Paid_fees from StudInfo order by Paid_fees desc limit 1,1;
select distinct Paid_fees from StudInfo order by Paid_fees desc limit 2,1;

	--
select distinct Paid_fees from StudInfo order by Paid_fees limit 1;

	-- list
select * from StudInfo where ID in (2,5,7);
use tanaya;
select * from StudInfo;
select * from StudInfo where ID not in(5,9);
delete from StudInfo where ID in (2,8);

update StudInfo set Paid_fees = Paid_fees + ((Paid_fees*1.5)*100) where ID in (3,7);

	-- between
select * from StudInfo where ID between 3 and 6;
select * from studinfo where Paid_fees between 20000 and 30000;
select * from StudInfo where Paid_fees>=20000 and Paid_fees<=30000;

	-- set operators
create table table1(ID int , Name varchar(20));
create table table2(ID int , Name varchar(20));
insert into table1 values(1,'Tanaya'),(2,'Vihan'),(3,'Kasturi'),(4,'Isha'),(5,'Yuvaraj');
insert into table2 values(1,'Khushi'),(2,'Vihan'),(3,'Tanaya'),(4,'Isha'),(5,'Anvi');
select * from table1;
select * from table2;
	-- union  similar values consider single time
select * from table1 union select * from table2;
	-- union all combine all the values
select * from table1 union all select * from table2;
	-- intersect display similar values
select * from table1 intersect select * from table2;
	-- except display diffrent values from left table
select * from table1 except select * from table2;
select * from table2 except select * from table1;