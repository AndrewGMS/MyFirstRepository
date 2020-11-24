set @BDate = concat('2020-10-01',' 00:00:00');
set @EDate = concat('2020-10-31',' 23:59:59');


SELECT *
-- sum(x15OverWorkTime) as Sx15OverWorkTime, sum(x20OverWorkTime) as Sx15OverWorkTime, EmployeeId, EmployeeName, EmployeeNameControl, flg, sum(xOverWorkTime) as SxOverWorkTime
from (
-- Выходные 1
SELECT 
0 x15OverWorkTime
, sum(timesheetdb.work_records.OverWork) x20OverWorkTime
, E.Id as EmployeeId
, concat(E.LastName,' ',E.FirstName,' ',E.Patronymic) as EmployeeName
, concat(E.LastName,' ',E.FirstName) as EmployeeNameControl
, 1 flg
, sum(timesheetdb.work_records.OverWork) xOverWorkTime
FROM timesheetdb.work_records 
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

 as E ON E.Id=timesheetdb.work_records.EmployeeId 
WHERE timesheetdb.work_records.IsDeleted=FALSE AND (timesheetdb.work_records.Date BETWEEN @BDate AND @EDate)
and timesheetdb.work_records.Date in (select wDate from production_calendar where isDAyOff = 1)
GROUP BY EmployeeId
-- Рабочие дни меньше или равно двум часам  2 
UNION ALL
SELECT 
sum(timesheetdb.work_records.OverWork) x15OverWorkTime
, 0 x20OverWorkTime
, E.Id as EmployeeId
, concat(E.LastName,' ',E.FirstName,' ',E.Patronymic) as EmployeeName
, concat(E.LastName,' ',E.FirstName) as EmployeeNameControl
, 2 flg
, sum(timesheetdb.work_records.OverWork) xOverWorkTime
FROM timesheetdb.work_records 
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
 as E ON E.Id=timesheetdb.work_records.EmployeeId 
WHERE timesheetdb.work_records.IsDeleted=FALSE AND (timesheetdb.work_records.Date BETWEEN @BDate AND @EDate)
and timesheetdb.work_records.Date in (select wDate from production_calendar where isDAyOff = 0)
GROUP BY EmployeeId, timesheetdb.work_records.Date
HAVING x15OverWorkTime <= 2
-- Рабочие дни больше двух часов часть по полутоной ставке  3 
UNION ALL
SELECT 
2 x15OverWorkTime
, 0 x20OverWorkTime
, E.Id as EmployeeId
, concat(E.LastName,' ',E.FirstName,' ',E.Patronymic) as EmployeeName
, concat(E.LastName,' ',E.FirstName) as EmployeeNameControl
, 3 flg
, sum(timesheetdb.work_records.OverWork) xOverWorkTime
FROM timesheetdb.work_records 
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
 as E ON E.Id=timesheetdb.work_records.EmployeeId 
WHERE timesheetdb.work_records.IsDeleted=FALSE AND (timesheetdb.work_records.Date BETWEEN @BDate AND @EDate)
and timesheetdb.work_records.Date in (select wDate from production_calendar where isDAyOff = 0)
GROUP BY EmployeeId, timesheetdb.work_records.Date
HAVING xOverWorkTime > 2
-- Рабочие дни больше двух часов часть по двойной ставке  4
UNION ALL
SELECT 
0 x15OverWorkTime
, sum(timesheetdb.work_records.OverWork)-2 x20OverWorkTime
, E.Id as EmployeeId
, concat(E.LastName,' ',E.FirstName,' ',E.Patronymic) as EmployeeName
, concat(E.LastName,' ',E.FirstName) as EmployeeNameControl
, 4 flg
, sum(timesheetdb.work_records.OverWork) xOverWorkTime
FROM timesheetdb.work_records 
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

 as E ON E.Id=timesheetdb.work_records.EmployeeId 
WHERE timesheetdb.work_records.IsDeleted=FALSE AND (timesheetdb.work_records.Date BETWEEN @BDate AND @EDate)
and timesheetdb.work_records.Date in (select wDate from production_calendar where isDAyOff = 0)
GROUP BY EmployeeId, timesheetdb.work_records.Date
HAVING xOverWorkTime > 2
) as XXX
Where x20OverWorkTime > 0 or x15OverWorkTime> 0
-- group by EmployeeId
order by EmployeeNameControl, EmployeeName

-- order by CompanyName