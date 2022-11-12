
insert into brokenboeing.TimeSheetConnectionTable (
   xClientId 
 , xProgramId
 , xProjectId
 , xWorkType
 , xProjectResult_Id
 
 , projectpropertytable_Id
 , customertypetable_Id) 
 values (
 5 -- xClientId 
 , 106 -- xProgramId
 , 100 -- xProjectId
 ,'%Нет задач%' --  xWorkType
 , 0 -- xProjectResult_Id
 , 813 --  projectpropertytable_Id
 , 304 -- customertypetable_Id
 )

select * from brokenboeing.TimeSheetConnectionTable;
/*
drop table brokenboeing.TimeSheetConnectionTable;

create table brokenboeing.TimeSheetConnectionTable (


   xbDate timestamp default '2022-01-01'
 , xeDate timestamp default '2023-03-31'
 , xClientId varchar(10)
 , xProgramId varchar(10)
 , xProjectId varchar(10)
 , xWorkType varchar(100)
 , bustructuretable_Id varchar(10) default '0' -- Спр_ЮЛ_Наименование БЕ, больше чем уверен что здесь не нужно, надо привязывать к проекту
 , xProjectResult_Id varchar(10)
 , projectpropertytable_Id varchar(10)
 , customertypetable_Id varchar(10)
 
 );

*/

/*SELECT 
--   xDate
-- , xEmloeeName
-- , xEmploeeNameShort
-- ,
 xCustomerName
, xProgrammName
, xProjectName
, xWorkType
 , xSpecialist
-- , xIsBusinessTrip
, sum(xTimeSheetWorkHours) as xTimeSheetWorkHours
, sum(xTimeSheetOverWorkHours) as xTimeSheetOverWorkHours
-- , xIsInnerOverWork
-- , xPrice
-- , xCost
, sum(xCost) as xCost
-- , xComment
-- , xTypeOfProblem
, xClientId
, xProgramId
, xProjectId
-- , xWorkRecordId
-- , xUserId
-- , xDateModified
FROM brokenboeing.timesheetex tsex
where xClientId = 4
and xWorkType like '%'
and xDate between '2022-08-01' and '2022-08-31'
-- and xProgramId like '20'
group by 
 xCustomerName
, xProgrammName
, xProjectName
, xWorkType
, xClientId
, xProgramId
, xProjectId
 , xSpecialist
-- , xTypeOfProblem
-- where xComment like '%''%';

-- delete FROM brokenboeing.timesheetex;

*/
/*
drop table brokenboeing.TimeSheetEx;

create table brokenboeing.TimeSheetEx (


   xDate timestamp 
 , xEmloeeName varchar(200) 
 , xEmploeeNameShort varchar(200) 
 , xCustomerName varchar(200) 
 , xProgrammName varchar(200) 
 , xProjectName varchar(200)
 , xWorkType varchar(2000) -- РАБОТЬКО - на всю жизнь запомню эту умную женщину
 , xSpecialist varchar(200) 
 , xIsBusinessTrip varchar(200) 
 , xTimeSheetWorkHours decimal(10,2)
 , xTimeSheetOverWorkHours decimal(10,2)
 , xIsInnerOverWork varchar(200)
 , xPrice decimal(10,2)
 , xCost decimal(10,2)
 , xComment varchar(10000)
 , xTypeOfProblem varchar(200)
 , xClientId decimal(10)
 , xProgramId decimal(10)
 , xProjectId decimal(10)
 , xWorkRecordId decimal(10)
 , xUserId varchar(200)
 , xDateModified timestamp 
 
 
 );
*/

