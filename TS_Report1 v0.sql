-- use accountingdb;
set @pDate = '2023-01-01';
-- set @xBDate = concat('', year(@pDate), '----', month(@pDate), '-01');
set @xBDate = (select if(month(@pDate) > 10, concat('', year(@pDate), '-', month(@pDate), '-01'), concat('', year(@pDate), '-0', month(@pDate), '-01')));
set @xEDate = LAST_DAY(@pDate);
-- select * from timesheetdb.work_records wr where wr.Date between @xBDate and @xEDate limit 20;
-- describe timesheetdb.work_records;

select 
  LAST_DAY(@xEDate) as tPeriod
  , 'ММТР' as tLocationName
  , concat(/*wr.EmployeeId, ' ', */ ifnull(pp.ITN, '!ИНН'),' ', pp.LastName,' ', pp.FirstName,' ', pp.Patronymic ) as tEmlploeeId
  , concat(wr.ProjectId, ' ', ' - projectName') as tProjectName
  , concat(MONTHNAME(@xEDate), ' ', year(@xEDate)) as tProjectStageName
  , concat(wt.ExternalId, ' ', wt.ExternalName, ' - writeType') as tWriteOfTypeName  -- ExternalId, ExternalName
  , '- mainCustomer' as tMainCustomerName
  , '- Sponsor' as tSponsorName
  , sum(wr.Time + wr.OverWork) as tWrittenOfHours
  
 from timesheetdb.work_records wr 
 inner join accountingdb.productionPeople pp on (wr.EmployeeId = pp.Id)
 inner join timesheetdb.works_types wt on (wr.ProjectId = wt.ProjectId and wr.WorkTypeId = wt.id)
 where wr.Date between @xBDate and @xEDate 
   and wr.IsDeleted = 0
 group by wr.EmployeeId, wr.ProjectId
 
 having tEmlploeeId like '%!ИНН%'
-- limit 10
   