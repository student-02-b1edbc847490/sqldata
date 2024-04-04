create table userrail(uid int primary key , uname varchar(20));
create table trains(tid int primary key,tname varchar(20),source varchar(20),destination varchar(20),pf varchar(20));
create table train_details(did int primary key,available_seat int , booked_seat int , class varchar(20),tid int ,foreign key(tid) references trains(tid));
create table payment1(pid int primary key,amount float,type varchar(20),tbid int , foreign key(tbid) references tbooked(tbid));
create table tbooked(tbid int primary key,uid int , did int,foreign key(uid) references userrail(uid),foreign key(did)references train_details(did));

insert into userrail values(1,'ABCD');
insert into trains values(10021,'badlapur express','ghatkopar','patana','pf-3');
insert into train_details values(101,30,42,'AC',10021);
insert into tbooked values(301,1,101);

select * from userrail inner join tbooked on userrail.uid=tbooked.uid
inner join train_details on train_details.did=tbooked.did
inner join trains on trains.tid=train_details.tid;