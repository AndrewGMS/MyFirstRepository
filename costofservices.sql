
select * from accountingdb.costofservices;
-- call accountingdb.setserviceactclear('2023-07-01', '2023-07-31', '4401069776');
-- selecttsreportone_v1  '10505; 10508;' as xx where '10505; 10508;' regexp '[0-9][0-9][0-9][0-9][0-9];' 

 
 
 /*
string-requestClientName-СООО "Белитсофт интернешнл"
string-requestClientsAgreement-Договор № 23/11/2022 от 23.11.2022 г.
string-requestClientsTaxNumber-
*/
 
 
 
requestId decimal(10)
, requestDate date
, requestNumber varchar(200)
, requestSum decimal(10,2)
, requestSumNoTax decimal(10,2)
, requestOwnerTaxNumber varchar(12)
);

 
 
 -- while
 
 
 
/*

alter table accountingdb.costofservices 
 add column requestClientName varchar(200);
 alter table accountingdb.costofservices 
 add column requestClientsAgreement varchar(200);
 alter table accountingdb.costofservices 
 add column requestClientsTaxNumber  varchar(12);
 


 set @requestId = 'fgdgdffgdx, 10508, 10509; dfdgdfg rsrgdg dffgd gddg';
 set @requestId = '10505, 10508,  10518, 10528, 10548,   10507, 10509; dfdgdfg rsrgdg dffgd gddg';
 -- set @requestId = '';
SET SQL_SAFE_UPDATES = 0;
delete from accountingdb.costofservices;
SET SQL_SAFE_UPDATES = 1;
call accountingdb.setserviceact (@requestId, '2023-07-31', '0000-000060', '3066277.50', '3679533', '0', '0', '4401069776');

select * from accountingdb.costofservices;
-- call accountingdb.setserviceactclear('2023-07-01', '2023-07-31', '4401069776');
-- select  '10505; 10508;' as xx where '10505; 10508;' regexp '[0-9][0-9][0-9][0-9][0-9];' 


-- select * from costofservices;

-- update accountingdb.costofserviceslockdate csld set csld.lockDate = '2022-12-31' where csld.lockDate = '2023-01-01'; 

-- delete from accountingdb.costofserviceslockdate
-- SET new.userr_id = NULL;

SET SQL_SAFE_UPDATES = 0;
update accountingdb.costofserviceslockdate csld set csld.lockDate = '2022-12-31'; 
SET SQL_SAFE_UPDATES = 1;


insert into accountingdb.costofserviceslockdate (lockDate) values ('2023-01-01');




CREATE DEFINER=`readuser`@`%` FUNCTION `isIntervalNoLocked`(
   pRequestBeginDate date
 , pRequestEndDate date
 ) RETURNS int(1)
BEGIN
 declare returnValue int(1);
 set returnValue = 0;
 declare plockdate date; 
 set plockdate = (select lockDate from accountingdb.costofserviceslockdate);
 
 if ((plockdate < pRequestBeginDate) and (plockdate < pRequestEndDate)) 
 then
 begin
  returnValue = 1;
 end; 
 end if;
RETURN 1
END


update accountingdb.costofserviceslockdate csld set csld.lockDate = '2022-12-31' where csld.lockDate = '2023-01-01'; 

drop table accountingdb.costofserviceslockdate;
create table accountingdb.costofserviceslockdate(
lockDate date not null
);


create table costofservices(
requestId decimal(10)
, requestDate date
, requestNumber varchar(200)
, requestSum decimal(10,2)
, requestSumNoTax decimal(10,2)
, requestOwnerTaxNumber varchar(12)
);




В рамках данной задачи требуется:

В задаче в Jira по заявке на выставление счета требуется отобразить "ID заявки" с идентификатором выставляемого счета  
В МойММТР должна быть добавлена таблица в базе данных для заполнения данных по актам
ID заявки + 
Дата акта
Номер акта
Сумма акта (с НДС)
Выручка по акту (без НДС)
Должен быть предоставлен доступ руководителю отдела бухгалтерия
Данные в таблице должны быть доступны для обновления   
МойММТР должен сопоставлять загруженные данные актов по id заявки на выставление счетов и добавлять их в отчет "Доходы"
Если на один id заявки выставления счета присутствует несколько строк с данными по актам, то строка дублируется с разными данными актов 





*/