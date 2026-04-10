select schema endeavour;
use database crudDB;
SET search_path TO crudDB;
create table endeavour_test_area.customer13(
custId int primary key,
custName varchar(40),
custAge number
)