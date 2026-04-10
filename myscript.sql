create table cmr(
cmrid int primary key,
cmrlocation varchar(30)
);
insert into cmr(cmrid, cmrlocation) values (101, 'hyd')

create table nrit(
nrid int primary key,
nrlocation varchar(30)
);
insert into nrit(nrid, nrlocation) values (102, '')
select * from nrit
create table placements(
placementid int primary key,
cmrid int ,
nrid int
)
drop table placements cascade;
insert into placements (placementid,cmrid,nrid) values (1,101,101)

alter table placements
add constraint fk_cmr foreign key(cmrid) references cmr(cmrid);

select * from cmr
alter table placements 
add constraint fk_nrit foreign key(nrid) references nrit(nrid);

ALTER TABLE nrit
ADD CONSTRAINT chk_location_len
CHECK (LENGTH(nrlocation) >= 3);
insert into nrit (nrid,nrlocation) values (120,'mumbai')

alter table cmr add dept int;
insert into cmr(cmrid,cmrlocation) values (104,'medchal')
update cmr set dept = 03 where cmrid=101

delete from cmr where cmrid = 104
alter table cmr drop column dept
alter table cmr alter column dept type varchar(50)
insert into cmr(cmrid,cmrlocation,dept) values (105,'medchal','CSE')
alter table cmr alter column cmrlocation set not null;
alter table cmr add constraint location_constraint unique (cmrlocation)
alter table cmr drop constraint location_constraint

select * from cmr where cmrlocation is  null
select * from cmr where cmrlocation like 'h__'  //starts with h 
select * from cmr where cmrlocation like '%l'//ends with l
select * from cmr where cmrlocation like '%d%'
select * from cmr where cmrid between 100 and 110
select * from cmr where cmrid  not in (101,104)
select * from cmr where cmrid >= 99 and cmrlocation ='hyd';

