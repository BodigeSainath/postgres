set search_path  to public;
create table cmr(
cmrid int primary key,
cmrlocation varchar(30)
);

insert into cmr(cmrid, cmrlocation) values (101, hyd)