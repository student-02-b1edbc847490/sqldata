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

update StudInfo set Paid_fees = Paid_fees + ((Paid_fees*1.5)*100) where ID in (3,7);