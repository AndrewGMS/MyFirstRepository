/*select wDate as xDate, 1 as isWorkDay, WrkCntHrs as xWorkHours 
from timesheetdb.production_calendar where IsDeleted = 0 and isDAyOff = 0 and wDate BETWEEN '2023-07-01' AND '2023-08-01' 
UNION ALL select wDate as xDate, 0 as isWorkDay, WrkCntHrs as xWorkHours 
from timesheetdb.production_calendar 
where IsDeleted = 0 and isDAyOff = 1 and wDate BETWEEN '2023-07-01' AND '2023-08-01' order by xDate;



set @xBdate = '2023-07-01';
set @xEdate = '2023-08-01';



select wDate as xDate, 1 as isWorkDay, WrkCntHrs as xWorkHours 
from timesheetdb.production_calendar where IsDeleted = 0 and isDAyOff = 0 and wDate BETWEEN @xBdate AND @xEdate
UNION ALL select wDate as xDate, 0 as isWorkDay, WrkCntHrs as xWorkHours 
from timesheetdb.production_calendar 
where IsDeleted = 0 and isDAyOff = 1 and wDate BETWEEN @xBdate AND @xEdate
order by xDate;

call accountingdb.loadworkdays(@xBdate, @xEdate);

*/
set @xdate = '2023-07-11';
set @xBdate = DATE_FORMAT(@xDate, '%Y-%m-01');
set @xEdate = LAST_DAY(@xdate);
select @xdate, @xBdate, @xEdate;

select * from 
(select month(x3PC.wDate) as xMonth, sum(x3PC.WrkCntHrs) as xWorkingHours, Count(x3PC.WrkCntHrs) as xWorkingDays 
from timesheetdb.production_calendar as x3PC 
where x3PC.IsDeleted = 0 and x3PC.isDAyOff = 0 and x3PC.wDate BETWEEN @xBdate AND @xEdate) 
as xSummaryOfMonth 
inner join 
(select wDate as OneHalfWRKDay , 
(select Count(WrkCntHrs) 
from timesheetdb.production_calendar x2PC 
where x2PC.IsDeleted = 0 and x2PC.isDAyOff = 0 and x2PC.wDate >=  @xBdate  AND x2PC.wDate <=  xPC.wDate) 
as CountWrkDays 
from timesheetdb.production_calendar as xPC 
where xPC.IsDeleted = 0 and xPC.isDAyOff = 0 and xPC.wDate >=  @xBdate  AND xPC.wDate <=  @xEdate ) 
as xCountDays 
where xCountDays.CountWRKDays = round(xSummaryOfMonth.xWorkingDays/2) 