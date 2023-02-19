-- use accountingdb;
set @pDate = '2023-01-01';
-- set @xBDate = concat('', year(@pDate), '----', month(@pDate), '-01');
set @xBDate = (select if(month(@pDate) > 10, concat('', year(@pDate), '-', month(@pDate), '-01'), concat('', year(@pDate), '-0', month(@pDate), '-01')));
set @xEDate = LAST_DAY(@pDate);
-- select * from timesheetdb.work_records wr where wr.Date between @xBDate and @xEDate limit 20;
-- describe timesheetdb.work_records;

select 
  concat(year(LAST_DAY(@xEDate)), '-', if(month(LAST_DAY(@xEDate))<10, '0',''), month(LAST_DAY(@xEDate)), '-', day(LAST_DAY(@xEDate))) as tPeriod
  , 'ММТР' as tLocationName
  , concat(/*wr.EmployeeId, ' ', */ ifnull(pp.ITN, '!ИНН'),' ', pp.LastName,' ', pp.FirstName,' ', pp.Patronymic ) as tEmlploeeId
  , concat(wr.ProjectId, ' ', ps.ProjectName) as tProjectName
  , concat(MONTHNAME(@xEDate), ' ', year(@xEDate)) as tProjectStageName
  
  , if (wt.ExternalId is null and ps.ProjectTypeId =1 , 'Billable', concat(wt.ExternalId, ' ', wt.ExternalName, ' - writeType')) as tWriteOfTypeName  -- ExternalId, ExternalName
  
  ,  cls.CompanyName as tMainCustomerName
  , if (cls.id = 5, 'Внутренний', 'Внешний') as tSponsorName
  , sum(wr.Time) + sum(wr.OverWork) as tWrittenOfHours
  , pp.LegalEntityName as Appendixtsreportfive1
  , concat(ps.ProjectName, ' - ', wr.ProjectId) as Appendix2
  , '' as Appendix3
  , '' as Appendix4
  , '' as Appendix5
 from timesheetdb.work_records wr 
 inner join accountingdb.productionPeople pp on (wr.EmployeeId = pp.Id)
 inner join timesheetdb.works_types wt on (wr.ProjectId = wt.ProjectId and wr.WorkTypeId = wt.id)
 inner join timesheetdb.projects ps on (wr.ProjectId = ps.Id)
 inner join timesheetdb.clients cls on (ps.ClientId = cls.Id)
 where wr.Date between @xBDate and @xEDate 
   and wr.IsDeleted = 0
 group by wr.EmployeeId, wr.ProjectId
 order by ps.ProjectName
 -- order by pp.LastName, pp.FirstName
 -- order by tWriteOfTypeName
 -- order by LegalEntityName desc
 
 -- having tEmlploeeId like '%!ИНН%'
-- limit 10
   