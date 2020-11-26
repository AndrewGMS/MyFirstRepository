set @BDate = concat('2020-11-01',' 00:00:00');
set @EDate = concat('2020-11-30',' 23:59:59');

SELECT 
  sum(WR.Time) xWorkTime
, sum(WR.OverWork) xOverWorkTime
, E.Id as EmployeeId
, concat(E.LastName,' ',E.FirstName,' ',E.Patronymic) as EmployeeName
, concat(E.LastName,' ',E.FirstName) as EmployeeNameControl
, -1 flg
FROM timesheetdb.work_records as WR
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
as E ON E.Id=WR.EmployeeId 
WHERE WR.IsDeleted=FALSE AND (WR.Date BETWEEN @BDate AND @EDate)
and WR.projectId <> 100
GROUP BY EmployeeId
-- HAVING xWorkTime > 0
ORDER BY EmployeeName
