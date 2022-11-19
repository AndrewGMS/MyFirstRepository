set @BDate = concat('2022-08-01',' 00:00:00');
set @EDate = concat('2022-08-31',' 23:59:59');
set @xStageProject = 'Август 2022г.';

select Period, BeName, UserId, ProjectName, StageProject, ProjectPhase, TypeEmlpoyment, Customer, Sponsor, sum(WorkHours) + sum(OverWorkHours) as WorkHours, EmploeeName from (
select
-- '2022-08-31' as Period
xDate as Period
, tsex.xCustomerName as BeName
, tsex.xUserId as UserId
, concat(ppt.tId, '_', tsex.xProgramId, ' - ', tsex.xProgrammName) as ProjectName
, @xStageProject as StageProject
, concat(ppht.tId, ' - ', ppht.tDescription) as ProjectPhase
, concat(toet.tId, ' - ', toet.tDescription) as TypeEmlpoyment
, concat(ctt.tId, ' - ', tsex.xCustomerName) as Customer
, concat(st.tId, ' - ', st.tDescription) as Sponsor
, xTimeSheetWorkHours as WorkHours
, xTimeSheetOverWorkHours as OverWorkHours
, tsex.xEmloeeName as EmploeeName
-- , tsex.*
-- , tsct.* 
from brokenboeing.timesheetex as tsex
inner join brokenboeing.TimeSheetConnectionTable tsct 
   on (tsex.xClientId like tsct.xClientId 
       and tsex.xProgramId like tsct.xProgramId 
       and tsex.xProjectId like tsct.xProjectId
       and tsex.xWorkType like tsct.xWorkType
       and tsex.xDate between tsct.xbDate and tsct.xeDate
       and tsex.xDate between @BDate and @EDate
       
       )
inner join brokenboeing.projectpropertytable ppt
   on (tsct.projectpropertytable_Id = ppt.tId
   and ppt.tId in (801)   
   )
inner join brokenboeing.projectphasetable ppht
   on (tsct.projectphasetable_Id = ppht.tId)
inner join brokenboeing.typeofemploymenttable toet
   on (tsct.typeofemploymenttable_Id = toet.tId)
inner join brokenboeing.customertypetable ctt
   on (tsct.customertypetable_Id = ctt.tId)
inner join brokenboeing.sponsortable st
   on (st.tId = ppt.tSponsor_ID)
   

  union all 
select
-- '2022-08-31' as Period
xDate as Period
, tsex.xCustomerName as BeName
, tsex.xUserId as UserId
, concat(ppt.tId, '_', tsex.xProgramId, ' - ', tsex.xProgrammName) as ProjectName
, @xStageProject as StageProject
, concat(ppht.tId, ' - ', ppht.tDescription) as ProjectPhase
, concat(toet.tId, ' - ', toet.tDescription) as TypeEmlpoyment
, concat(ctt.tId, ' - ', tsex.xCustomerName) as Customer
, concat(st.tId, ' - ', st.tDescription) as Sponsor
, xTimeSheetWorkHours as WorkHours
, xTimeSheetOverWorkHours as OverWorkHours
, tsex.xEmloeeName as EmploeeName
-- , tsex.*
-- , tsct.* 
from brokenboeing.timesheetex as tsex
inner join brokenboeing.TimeSheetConnectionTable tsct 
   on (tsex.xClientId like tsct.xClientId 
       and tsex.xProgramId like tsct.xProgramId 
       and tsex.xProjectId like tsct.xProjectId
       and tsex.xWorkType like tsct.xWorkType
       and tsex.xDate between tsct.xbDate and tsct.xeDate
       and tsex.xDate between @BDate and @EDate
       
       )
inner join brokenboeing.projectpropertytable ppt
   on (tsct.projectpropertytable_Id = ppt.tId
   and ppt.tId in (802)   
   )
inner join brokenboeing.projectphasetable ppht
   on (tsct.projectphasetable_Id = ppht.tId)
inner join brokenboeing.typeofemploymenttable toet
   on (tsct.typeofemploymenttable_Id = toet.tId)
inner join brokenboeing.customertypetable ctt
   on (tsct.customertypetable_Id = ctt.tId)   
inner join brokenboeing.sponsortable st
   on (st.tId = ppt.tSponsor_ID)
   

union all  

select
-- '2022-08-31' as Period
xDate as Period
, tsex.xCustomerName as BeName
, tsex.xUserId as UserId
, concat(ppt.tId, ' - ', ppt.tDescription) as ProjectName
, @xStageProject as StageProject
, concat(ppht.tId, ' - ', ppht.tDescription) as ProjectPhase
, concat(toet.tId, ' - ', toet.tDescription) as TypeEmlpoyment
, concat(ctt.tId, ' - ', ctt.tDescription) as Customer
, concat(st.tId, ' - ', st.tDescription) as Sponsor
, xTimeSheetWorkHours as WorkHours
, xTimeSheetOverWorkHours as OverWorkHours
, tsex.xEmloeeName as EmploeeName
-- , tsex.*
-- , tsct.* 
from brokenboeing.timesheetex as tsex
inner join brokenboeing.TimeSheetConnectionTable tsct 
   on (tsex.xClientId like tsct.xClientId 
       and tsex.xProgramId like tsct.xProgramId 
       and tsex.xProjectId like tsct.xProjectId
       and tsex.xWorkType like tsct.xWorkType
       and tsex.xDate between tsct.xbDate and tsct.xeDate
       and tsex.xDate between @BDate and @EDate
       
       )
inner join brokenboeing.projectpropertytable ppt
   on (tsct.projectpropertytable_Id = ppt.tId
   and ppt.tId not in (801, 802)   
   )
inner join brokenboeing.projectphasetable ppht
   on (tsct.projectphasetable_Id = ppht.tId)
inner join brokenboeing.typeofemploymenttable toet
   on (tsct.typeofemploymenttable_Id = toet.tId)
inner join brokenboeing.customertypetable ctt
   on (tsct.customertypetable_Id = ctt.tId)
inner join brokenboeing.sponsortable st
   on (st.tId = ppt.tSponsor_ID)
 
   
   ) as xxx
   group by BeName, UserId, ProjectName, StageProject, ProjectPhase, TypeEmlpoyment, Customer