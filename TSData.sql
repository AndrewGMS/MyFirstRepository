


-- select * from brokenboeing.TimeSheet;

select 
ts.xPeriod
, ts.xBusinessUnitName
, ts.xEmploeeID
-- , ts.xProjectName
-- , ii.xProject
, ts.xStageProjectName
, ts.xProjectPhaseName
, ts.xTypeOfEmployment
, ts.xCustomerName
, ts.xSponsorName
, ts.xTimeSheetHours
, ts.xEmploeeName
, ts.xInvoiceId
, ts.xDateModified
from brokenboeing.TimeSheet as ts
inner join brokenboeing.IssuedInvoices as ii on (ts.xInvoiceId = ii.xInvoiceId);


select 
ts.xPeriod
, ts.xBusinessUnitName
, ts.xEmploeeID
, ts.xProjectName
, ts.xStageProjectName
-- , ts.xProjectPhaseName
, '' as xProjectPhaseName
, ts.xTypeOfEmployment
-- , ts.xCustomerName
, '' as xCustomerName
, ts.xSponsorName
, ts.xTimeSheetHours
, ts.xEmploeeName
, ts.xInvoiceId
, ts.xDateModified
from brokenboeing.TimeSheet as ts
inner join brokenboeing.NoProductionList as NPL on (ts.xProjectName = NPL.xValue);


select 
ts.xPeriod
, ts.xBusinessUnitName
, ts.xEmploeeID
, ts.xProjectName
, ts.xStageProjectName
, ts.xProjectPhaseName
, ts.xTypeOfEmployment
, ts.xCustomerName
, ts.xSponsorName
, ts.xTimeSheetHours
, ts.xEmploeeName
, ts.xInvoiceId
, ts.xDateModified
from brokenboeing.TimeSheet as ts
where ts.xInvoiceId not in (select ii.xInvoiceId from brokenboeing.IssuedInvoices as ii)
and ts.xProjectName not in (select NPL.xValue from brokenboeing.NoProductionList as NPL)
and ts.xProjectName not like('Внешний проект%')
order by ts.xProjectName;






/*
drop table brokenboeing.TimeSheet;

create table brokenboeing.TimeSheet (


   xPeriod timestamp -- Период	+
 , xBusinessUnitName varchar(200) -- Спр_ЮЛ_Наименование БЕ +
 , xEmploeeID varchar(200) -- Спр_Сотрудники_ID	 +
 , xProjectName varchar(200) -- Форма_Проекты_Название проекта	+
 , xStageProjectName varchar(200) -- Этап проекта	+
 , xProjectPhaseName varchar(200) -- Спр_Фаза проекта_название	+
 , xTypeOfEmployment varchar(200) -- Спр_Вид занятости на проекте_название	+
 , xCustomerName varchar(200) -- Форма_Заказчики_Заказчик +
 , xSponsorName varchar(200) -- Спр_Спонсор_Наименование + 
 , xTimeSheetHours decimal(10,2) -- Часы списанные в Timesheet	+
 , xEmploeeName varchar(200) -- eName	+
 , xInvoiceId varchar(200) -- InvoiceId +
 , xClientId decimal(10)
 , xProjectId decimal(10)
 , xProgramId decimal(10)
 , xDateModified timestamp -- дата время внесения изменений
 
 
 );


*/