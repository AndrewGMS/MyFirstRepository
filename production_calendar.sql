
insert into managementreport.production_calendar (xDate, WrkCntHrs, isDAyOff, isHoliday) values (

select * from managementreport.production_calendar
/*

drop TABLE managementreport.production_calendar
CREATE TABLE managementreport.production_calendar (
  xDate timestamp NOT NULL,
  WrkCntHrs int(2) NOT NULL,
  isDAyOff int(1) NOT NULL,
  isHoliday int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`xDate`)
)
*/