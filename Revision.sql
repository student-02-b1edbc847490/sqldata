	-- use to create datbase
create database practice;
	-- show all datatbases
show databases;
	-- select database
use practice;
	-- create table
create table revision(Id int , Name varchar(20) not null, Contact int unique);
	-- show all tables
show tables;
	-- show structure of table
desc revision;
	-- add new column
alter table revision add column Age int not null;
	-- used to modify datatype and constraint
alter table revision modify column Contact bigint unique;
	-- rename the table
alter table revision rename example;
alter table example rename revision;
	-- add column in between 
alter table revision add column Lname varchar(20) not null after Name;
	-- rename column 
alter table revision rename column Name to Fname;
	-- add new column to first
alter table revision add column Roll_no int First;
	-- delete particular column
alter table revision drop Id;
	 -- add primary key
alter table revision add primary key(Roll_no);
	-- insert values
insert into revision values(1,'Tanaya','Kamble',9087675432,22);
	-- display all data in table
select * from revision;
	-- Delete all the data in the table
truncate table revision;

insert into revision values(2,'Pravara','Kamble',9780564323,20),(3,'Tirtha','Kurte',9690989795,40),(4,'Swaroop','Bane',9795909394,22);
	-- update the value into the column
update revision set Age=21 where Roll_no=4;
	-- set the default values
alter table revision add column City varchar(20) default 'Mumbai';
insert into revision(Roll_no, Fname,Lname,Contact,Age) values(5,'abc','agshd',9680756643,27);
	-- auto increment
alter table revision modify Roll_no int auto_increment;
insert into revision(Fname,Lname,Contact,Age) values('Jkl','ASDF',9293949596,30);
	-- delete table 
drop table revision;
	-- delete particular row
delete from revision where Roll_no=5;
	-- delete all the values but starts with next values
delete from revision;
	-- update multiple column
update revision set Fname='Vihan', Lname='Kurte' where Roll_no=6;