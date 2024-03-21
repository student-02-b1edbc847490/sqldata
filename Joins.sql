use tanaya;
desc StudInfo;
select ID,Department ,Name,Marks,
case
when Marks>=35 and Marks<=60 then 'Third Class'
when Marks>60 and Marks<80 then 'Second Class'
when Marks>=80 and Marks<=100 then 'First Class'
end as Result from StudInfo order by Marks desc; 



create table college(cid int primary key, CName varchar(20) not null,Location varchar(20) not null);
create table studData(Sid int primary key, Sname varchar(20) not null , Sage int not null,Scity varchar(20) not null,cid int,foreign key(cid) references college(cid)); 
insert into college values(101,'ABCD','Mumbai'),(102,'GJC','Ratnagiri'),(103,'PQRST','Pune'),(104,'TUVW','Kolhapur');
insert into studData values(1,'Aryan',18,'Mumbai',101),(2,'Shruti',20,'Pune',103),(3,'Pravara',19,'Mumbai',null),(4,'Darsh',18,'Ratnagiri',102),(5,'Vihan',20,'Pune',103);
insert into studData values(6,'Arvi',18,'Ratnagiri',Null),(7,'Rahi',20,'Mumbai',101),(8,'Tirtha',22,'Pune',null),(9,'Harsh',19,'Mumbai',101),(10,'Astha',20,'Ratnagiri',102);
select * from college;
select * from studData;
	-- Inner join
select studData.Sid ,studData.Sname, studData.Scity, college.Cname,college.Location from college inner join studData on studData.cid=college.cid;
	-- natural join
select * from studData natural join college;

	-- left join
select * from studData left join college on studData.cid= college.cid;
	-- right join
select * from studData right join college on studData.cid=college.cid;
	-- full ourter join and outer join
select * from studData left join college on studData.cid=college.cid
union 
select * from studData right join college on studData.cid=college.cid;

	-- self join
create table employee(eid int primary key,ename varchar(20) not null,designation varchar(20) not null,mid int);
insert into employee values(1,'AAA','dev',6),(2,'BBB','HR',5),(3,'CCC','dev',6),(4,'DDD','dev',6),(5,'EEE','CEO',0),(6,'FFF','manager',5);
select * from employee; 