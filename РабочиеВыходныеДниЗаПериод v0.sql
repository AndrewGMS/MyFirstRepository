set @BDate = concat('2020-06-01',' 00:00:00');
set @EDate = concat('2020-06-30',' 23:59:59');

select wDate, 1 as isWorkDay from production_calendar where IsDeleted = 0 and isDAyOff = 0 and wDate BETWEEN  @BDate AND @EDate 
UNION ALL
select wDate, 0 as isWorkDay from production_calendar where IsDeleted = 0 and isDAyOff = 1 and wDate BETWEEN  @BDate AND @EDate 