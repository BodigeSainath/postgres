create table customer13(
custId int primary key,
custName varchar(40)
)

insert into product13(pid, pName) values (103,'Product 3 ');
select * from customer13;
create table product13(
pid int primary key,
pName varchar(100))

alter table customer13
add pid int;

update  customer13 set pid=101 where custId=1

alter table customer13
add constraint fk_custId foreign key (custId) references product13(custId);

add constraint fk_Product_Id foreign key (Product_Id) References product2026 (Product_Id)
-- comapny not participate in trading