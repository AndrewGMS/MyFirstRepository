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
  , pp.LegalEntityName as tLegalEntityName
  , ifnull(pp.ITN, '!ИНН') as tEmployeeId  
  , concat(pp.LastName,' ', pp.FirstName,' ', pp.Patronymic ) as tEmlploeeName
--  , max(timesheetdb.getCostOneWorkHour(wr.EmployeeId, @xEDate, wr.ProjectId, wr.IsDutyJourney)) as tCost
  , ' - ' as tDepartment
  , ' - ' as tPositionAtWork
--  , concat(ifnull(gs.Id, -1), ' - ', ifnull(gs.GradeName, '/')) as tInnerGrade
  , ' - ' as tInnerGrade
  , ' - ' as tDevelonicaDep
  , ' - ' as tDevelonicaGrade
  , ' - ' as tEmployeeRole
  , ' - ' as tEmployeeLocation
  , ' x ' as tEmployeeSalary
  , ' x ' as tEmployeeSalaryInc
  , ' x ' as tEmployeeTax
  , ' x ' as tEmployeeInsuranceTax
  , ' x ' as tEmployeeTaxAll
  , ' x ' as tEmployeeSalaryAndTax
  , ' x ' as tEmployeeAgreement
  , pp.EmploymentDate as tEmploymentDate
  , ifnull(pp.DismissedDate, '--') as DismissedDate
  , pp.Id as Appendix1
  , '' as Appendix2
  , '' as Appendix3
  , '' as Appendix4
  , '' as Appendix5

 from accountingdb.productionPeople pp 
 inner join timesheetdb.work_records wr on (pp.Id = wr.EmployeeId)
 left join timesheetdb.grades gs on (pp.GradeId = gs.Id)

 where wr.Date between @xBDate and @xEDate 
   and wr.IsDeleted = 0
   
   
 group by pp.id
 
 
 
/* inner join accountingdb.productionPeople pp on (wr.EmployeeId = pp.Id)
 inner join timesheetdb.works_types wt on (wr.ProjectId = wt.ProjectId and wr.WorkTypeId = wt.id)
 inner join timesheetdb.projects ps on (wr.ProjectId = ps.Id)
 inner join timesheetdb.clients cls on (ps.ClientId = cls.Id)
 where wr.Date between @xBDate and @xEDate 
   and wr.IsDeleted = 0
 group by wr.EmployeeId, wr.ProjectId
 order by pp.LastName, pp.FirstName
 -- order by tWriteOfTypeName
 -- order by LegalEntityName desc
 
 -- having tEmlploeeId like '%!ИНН%'
-- limit 10
*/   