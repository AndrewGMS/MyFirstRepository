set @BDate=concat('2021-04-01',' 00:00:00');
set @EDate=concat('2021-04-30',' 23:59:59');

SELECT 
--  sum(TWR.Time) xAbsentTime
-- , sum(TWR2.Time) xAbsentWorkTime
-- , sum(TWR2.OverWork) xOverWorkTime
  0 as xAbsentTime
, 0 as xAbsentWorkTime
, 0 as xOverWorkTime
, TE.Id as EmployeeId
, concat(TE.LastName,' ',TE.FirstName,' ',TE.Patronymic) as EmployeeName
, concat(TE.LastName,' ',TE.FirstName) as EmployeeNameControl
, WT.TypeWork as xReason
, TWR.WorkTypeId as xReasonCode
, TWR2.Date as xAbsentDate
, p_calendar.xAbsentDaysCount as xAbsentDaysCount
FROM timesheetdb.work_records as TWR2
LEFT JOIN 

/*
-- старый способ 
timesheetdb.employees 
-- новый способ (с заменой букв "Ё"
*/
(
SELECT E1.Id, SoN.LastName, SoN.FirstName, SoN.Patronymic from employees as E1
INNER JOIN timesheetdb.synonims_of_names as SoN where (E1.Id = SoN.EmployeeId and SoN.IsDeleted= false)
UNION ALL
select E1.Id, E1.LastName, E1.FirstName, E1.Patronymic from employees as E1 where E1.Id not in (select SoN.EmployeeId from timesheetdb.synonims_of_names as SoN where SoN.IsDeleted= false)
)

  as TE ON TE.Id=TWR2.EmployeeId 


INNER JOIN timesheetdb.work_records as TWR ON (TWR.Date = TWR2.Date and TWR.EmployeeId = TWR2.EmployeeId)
INNER JOIN timesheetdb.works_types as WT ON (WT.ProjectId = TWR.ProjectId AND WT.Id = TWR.WorkTypeId)  
INNER JOIN
(
select wDate, 0 as xAbsentDaysCount from production_calendar  where isDAyOff = 1 and isDeleted = 0
union all 
select wDate, 1 as xAbsentDaysCount from production_calendar  where isDAyOff = 0 and isDeleted = 0 
) as p_calendar ON (TWR2.Date = p_calendar.wDate)
WHERE TWR2.IsDeleted=FALSE AND (TWR2.Date BETWEEN @BDate AND @EDate)
   --  AND TWR2.projectId  <> 100
     AND TWR.ProjectId = 100 
     AND TWR.Date BETWEEN @BDate AND @EDate 
     AND TWR.WorkTypeId in (287/*Больничный*/, 288/*Отпуск*/, 289 /*Отгул*/ , 299/*Сессия*/, 300/*Учеба*/)
    -- ставлю костыль вместо сакральной восьмерки AND TWR.Time = 8
     AND TWR.Time in (7, 8)
     AND TWR.IsDeleted = 0    
GROUP BY EmployeeId, xAbsentDate
-- ORDER BY xAbsentDaysCount, xReason, EmployeeName, xAbsentDate



UNION ALL


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
, 0 as xAbsentDaysCount
FROM timesheetdb.work_records as TWR2
LEFT JOIN 

/*
-- старый способ 
timesheetdb.employees 
-- новый способ (с заменой букв "Ё"
*/
(
SELECT E1.Id, SoN.LastName, SoN.FirstName, SoN.Patronymic from employees as E1
INNER JOIN timesheetdb.synonims_of_names as SoN where (E1.Id = SoN.EmployeeId and SoN.IsDeleted= false)
UNION ALL
select E1.Id, E1.LastName, E1.FirstName, E1.Patronymic from employees as E1 where E1.Id not in (select SoN.EmployeeId from timesheetdb.synonims_of_names as SoN where SoN.IsDeleted= false)
)

  as TE ON TE.Id=TWR2.EmployeeId 


INNER JOIN timesheetdb.work_records as TWR ON (TWR.Date = TWR2.Date and TWR.EmployeeId = TWR2.EmployeeId)
INNER JOIN timesheetdb.works_types as WT ON (WT.ProjectId = TWR.ProjectId AND WT.Id = TWR.WorkTypeId)  
INNER JOIN
(
select wDate, 0 as xAbsentDaysCount from production_calendar  where isDAyOff = 1 and isDeleted = 0
union all 
select wDate, 1 as xAbsentDaysCount from production_calendar  where isDAyOff = 0 and isDeleted = 0 
) as p_calendar ON (TWR2.Date = p_calendar.wDate)
WHERE TWR2.IsDeleted=FALSE AND (TWR2.Date BETWEEN @BDate AND @EDate)
     AND TWR2.projectId  <> 100
     AND TWR.ProjectId = 100 
     AND TWR.Date BETWEEN @BDate AND @EDate
     AND TWR.WorkTypeId in (287/*Больничный*/, 288/*Отпуск*/, 289 /*Отгул*/ , 299/*Сессия*/, 300/*Учеба*/)
-- ставлю костыль вместо сакральной восьмерки AND TWR.Time = 8
     AND TWR.Time in (7, 8)
     AND TWR.IsDeleted = 0    
GROUP BY EmployeeId, xAbsentDate
-- ORDER BY xAbsentDaysCount, xReason, EmployeeName, xAbsentDate


ORDER BY EmployeeName, xAbsentDate


