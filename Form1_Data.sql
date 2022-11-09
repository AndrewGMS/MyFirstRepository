-- call brokenboeing.Form1_Data('2022-08-01', '2022-08-31');


select * from brokenboeing.timesheetex 
where xClientId = 5 -- and xProgramId = 106 and xProjectId = 100
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Нет задач%') 
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Отсутствие технической возможности%') 
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Отгул%') 
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Больничный%')
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Отпуск%')
and (xClientId = 5 and xProgramId = 37 and xProjectId = 3800 )


/*
set @Bdate = '2022-08-01';
set @Edate = '2022-08-31';

SELECT 
  @Edate as Period
  , concat('H301_', xClientId) as ID
  , 'ММТР' as NameBE
  , tse.xCustomerName as MainCustomer
  , tse.xCustomerName as MainCustomerName
-- , tse.xProgrammName
-- , tse.xProjectName
, sum(tse.xTimeSheetWorkHours) as xWorkHours
, sum(tse.xTimeSheetOverWorkHours) as xOverWorkHours   
FROM brokenboeing.timesheetex as tse
-- where xDate between @Bdate and @Edate
group by  
  tse.xCustomerName
-- , tse.xProgrammName
-- , tse.xProjectName
;
*/

