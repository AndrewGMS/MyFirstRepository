set @BDate=concat('2020-12-01',' 00:00:00');
set @EDate=concat('2020-12-15',' 23:59:59');

SELECT 
  sum(TWR.Time) xAbsentTime
, sum(TWR2.Time) xAbsentWorkTime
, sum(TWR2.OverWork) xOverWorkTime
, TE.Id as EmployeeId
, concat(TE.LastName,' ',TE.FirstName,' ',TE.Patronymic) as EmployeeName
, concat(TE.LastName,' ',TE.FirstName) as EmployeeNameControl
, WT.TypeWork as xReason
, TWR.WorkTypeId as xReasonCode
, TWR2.Date as xAbsentDate
, p_calendar.xAbsentDaysCount as xAbsentDaysCount
FROM timesheetdb.work_records as TWR2
LEFT JOIN timesheetdb.employees as TE ON TE.Id=TWR2.EmployeeId 
INNER JOIN timesheetdb.work_records as TWR ON (TWR.Date = TWR2.Date and TWR.EmployeeId = TWR2.EmployeeId)
INNER JOIN timesheetdb.works_types as WT ON (WT.ProjectId = TWR.ProjectId AND WT.Id = TWR.WorkTypeId)  
INNER JOIN
(
select wDate, 0 as xAbsentDaysCount from production_calendar  where isDAyOff = 1 and isDeleted = 0
union all 
select wDate, 1 as xAbsentDaysCount from production_calendar  where isDAyOff = 0 and isDeleted = 0 
) as p_calendar ON (TWR2.Date = p_calendar.wDate)
WHERE TWR2.IsDeleted=FALSE AND (TWR2.Date BETWEEN @BDate AND @EDate)
--     AND TWR2.projectId  <> 100
     AND TWR.ProjectId = 100 
     AND TWR.Date BETWEEN @BDate AND @EDate 
     AND TWR.WorkTypeId in (287/*Больничный*/, 288/*Отпуск*/, 289 /*Отгул*/ /*, 299Сессия*//*, 300Учеба*/)
     AND TWR.Time = 8
     AND TWR.IsDeleted = 0    
GROUP BY EmployeeId, xAbsentDate
ORDER BY xAbsentDaysCount, xReason, EmployeeName, xAbsentDate

