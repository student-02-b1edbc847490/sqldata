create table ABC(id int primary key, DOB date not null,Age int check(Age>=18));
insert into ABC values(1,'2024-02-02',18);
select * from ABC;
select id,date_format(DOB,'%W,%D-%M-%Y') as DOB ,Age from ABC;