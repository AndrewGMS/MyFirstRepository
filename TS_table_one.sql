prepare xx1 from 'call GetProjectList(''2022-08-01'', ''2022-08-31'')';


drop table if exists Table01;

CREATE TEMPORARY TABLE Table01(
 xCustomerName varchar(200) 
, xProgrammName varchar(200) 
, xWorkHours decimal(10,2)
, xOverWorkHours decimal(10,2)
);

call GetProjectList('2022-08-01', '2022-08-31');
execute xx1;

insert into Table01 (xCustomerName
, xProgrammName
, xWorkHours
, xOverWorkHours)
 select xCustomerName
, xProgrammName
, xWorkHours
, xOverWorkHours 
-- from (call GetProjectList('2022-08-01', '2022-08-31')) as zz
from (execute xx1) as zz
 