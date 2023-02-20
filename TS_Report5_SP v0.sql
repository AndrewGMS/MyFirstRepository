CREATE DEFINER=`readuser`@`%` PROCEDURE `tsreportfive`(pdate date)
BEGIN
declare xBDate date;
declare xEDate date;

set xBDate = (select if(month(pDate) > 10, concat('', year(pDate), '-', month(pDate), '-01'), concat('', year(pDate), '-0', month(pDate), '-01')));
set xEDate = LAST_DAY(pDate);

select 
  concat(year(LAST_DAY(xEDate)), '-', if(month(LAST_DAY(xEDate))<10, '0',''), month(LAST_DAY(xEDate)), '-', day(LAST_DAY(xEDate))) as tPeriod
  , 'ММТР' as tLocationName
  , pp.LegalEntityName as tLegalEntityName
  , ifnull(pp.ITN, '!ИНН') as tEmployeeId  
  , concat(pp.LastName,' ', pp.FirstName,' ', pp.Patronymic ) as tEmlploeeName
--  , max(timesheetdb.getCostOneWorkHour(wr.EmployeeId, @xEDate, wr.ProjectId, wr.IsDutyJourney)) as tCost
  , 1 as tCost
  , ' - ' as tDepartment
  , ' - ' as tPositionAtWork
--  , concat(ifnull(gs.Id, -1), ' - ', ifnull(gs.GradeName, '/')) as tInnerGrade
  , ' - ' as tInnerGrade
  , ' - ' as tDevelonicaDep
  , ' - ' as tDevelonicaPosition
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
  , case
     when isnull(pp.DismissedDate) then 'Работает'
     else 'Уволен' 
     end as tEmployeeAgreementStatus
  , concat(if(day(pp.EmploymentDate)<10, '0',''), day(pp.EmploymentDate), '.', if(month(pp.EmploymentDate)<10, '0',''), month(pp.EmploymentDate), '.',year(pp.EmploymentDate)) as tEmploymentDate
  , case
     when isnull(pp.DismissedDate) then '-'
     else concat(if(day(pp.DismissedDate)<10, '0',''), day(pp.DismissedDate), '.', if(month(pp.DismissedDate)<10, '0',''), month(pp.DismissedDate), '.',year(pp.DismissedDate))
     end as DismissedDate
  
  -- , ifnull(pp.DismissedDate, '--') as DismissedDate
  , pp.Id as Appendix1
  , '' as Appendix2
  , '' as Appendix3
  , '' as Appendix4
  , '' as Appendix5

 from accountingdb.productionPeople pp 
 left join timesheetdb.work_records wr on (pp.Id = wr.EmployeeId)
 left join timesheetdb.grades gs on (pp.GradeId = gs.Id)
 where wr.Date between xBDate and xEDate 
   and wr.IsDeleted = 0
   
   
 group by pp.id;
 
END