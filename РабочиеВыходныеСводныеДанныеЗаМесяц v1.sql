-- Proc WorkDaysSummary

set @BDate = concat('2021-08-01',' 00:00:00');
set @EDate = concat('2021-08-31',' 23:59:59');

 select * from
 (select x3PC.wDate as xMonth, sum(x3PC.WrkCntHrs) as xWorkingHours, Count(x3PC.WrkCntHrs) as xWorkingDays
   from production_calendar as x3PC where x3PC.IsDeleted = 0 and x3PC.isDAyOff = 0 and x3PC.wDate BETWEEN  @BDate AND @EDate) as xSummaryOfMonth
 inner join
 (select wDate as OneHalfWRKDay
 , (select Count(WrkCntHrs) from production_calendar x2PC where x2PC.IsDeleted = 0 and x2PC.isDAyOff = 0 and x2PC.wDate >= @BDate AND x2PC.wDate <=  xPC.wDate) as CountWrkDays
 from production_calendar as xPC where xPC.IsDeleted = 0 and xPC.isDAyOff = 0 and xPC.wDate >= @BDate AND xPC.wDate <= @EDate) as xCountDays
  where xCountDays.CountWRKDays = round(xSummaryOfMonth.xWorkingDays/2)
 
