set @BDate = concat('2021-10-01',' 00:00:00');
set @EDate = concat('2021-10-31',' 23:59:59');

/*
select wDate, 1 as isWorkDay from production_calendar where IsDeleted = 0 and isDAyOff = 0 and wDate BETWEEN '2021-07-01' AND '2021-07-31' 
UNION ALL
select wDate, 0 as isWorkDay from production_calendar where IsDeleted = 0 and isDAyOff = 1 and wDate BETWEEN '2021-07-01' AND '2021-07-31' 
*/
 
 /*
 -- select wDate as xMonth, sum(WrkCntHrs) as xWorkingHours, Count(WrkCntHrs) as xWorkingDays from production_calendar where IsDeleted = 0 and isDAyOff = 0 and wDate BETWEEN  @BDate AND @EDate
 
 -- select * from production_calendar where IsDeleted = 0 and isDAyOff = 0 and wDate BETWEEN  @BDate AND @EDate
 */
 select * from
 (select x3PC.wDate as xMonth, sum(x3PC.WrkCntHrs) as xWorkingHours, Count(x3PC.WrkCntHrs) as xWorkingDays
   from production_calendar as x3PC where x3PC.IsDeleted = 0 and x3PC.isDAyOff = 0 and x3PC.wDate BETWEEN  @BDate AND @EDate) as xSummaryOfMonth
 inner join
 (select wDate as OneHalfWRKDay
 , (select Count(WrkCntHrs) from production_calendar x2PC where x2PC.IsDeleted = 0 and x2PC.isDAyOff = 0 and x2PC.wDate >= @BDate AND x2PC.wDate <=  xPC.wDate) as CountWrkDays
 from production_calendar as xPC where xPC.IsDeleted = 0 and xPC.isDAyOff = 0 and xPC.wDate >= @BDate AND xPC.wDate <= @EDate) as xCountDays
  where xCountDays.CountWRKDays = round(xSummaryOfMonth.xWorkingDays/2)
 
 
-- select Count(WrkCntHrs) from production_calendar x2PC where x2PC.IsDeleted = 0 and x2PC.isDAyOff = 0 and x2PC.wDate >= '2021-07-01' AND x2PC.wDate <=  '2021-07-01'
-- select wDate as xDate, 1 as isWorkDay, WrkCntHrs as xWorkHours from timesheetdb.production_calendar where IsDeleted = 0 and isDAyOff = 0 and wDate BETWEEN '2021-07-01' AND '2021-07-31' 
