create table admin2(
adminid int primary key,
aname varchar(40),
sal decimal(11,2),
zip decimal(7,4)
)
select * from admin2



insert into admin2(adminid,aname,sal,zip) values (1,'admin1',1000.25,665.547)
update admin2 set aname='admin2' where aname='admin1'

delete from admin2 where dob=null
alter table admin2 add 

insert into admin2(adminid,aname,sal,zip) values (2,'admin1',1000.25,665.547)
