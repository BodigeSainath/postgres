create table emp13(id serial primary key unique, name varchar(40) not null , role text, salary decimal(10,2));
select * from emp13;
insert into emp13(name, role, Salary) values ('agent1', 'salesforce',120000.58),('agent2','java',110000.52),('agent3','aem',90000.90);
update emp13 set role = 'salesforce crm' where id=1;
delete from emp13 where role='aem';

select * from sector_lookup ;

