-- call brokenboeing.Form1_Data('2022-08-01', '2022-08-31');


select * from brokenboeing.timesheetex 
where xClientId = 5 -- and xProgramId = 106 and xProjectId = 100
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Нет задач%') 
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Отсутствие технической возможности%') 
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Отгул%') 
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Больничный%')
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Отпуск%')
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3800 )  -- 303 Управление персоналом
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3801 )  -- 306 Бухгалтерия
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3804 )  -- 305 АХО
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 5714 ) -- 'Develonica-needs' PR
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3799  ) -- 'Внутренние отделы и проекты' PR
and not (xClientId = 5 and xProgramId = 298 and xProjectId = 4  ) -- MyMMTR
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4614) -- обучение дизайнеров
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 5558   ) -- английский
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3802   ) -- 302 Управление производством ЕСТЬ ВОПРОСЫ!!!
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3468   ) -- 307 сисадмины
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 484  ) -- 308 отдел продаж
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 1627  ) -- Преподавание
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 284  ) -- Наставничество
and not (xClientId = 5 and xProgramId = 241 and xProjectId = 4040  ) -- Camunda
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 3806  ) -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 3333  ) -- 308 отдел продаж
and not (xClientId = 5 and xProgramId = 317 and xProjectId = 5908 ) -- HR страница
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4317  ) -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 310 and xProjectId = 3795  ) -- ЛАФ
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4125  ) -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4094  ) -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4437 )  -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4717 )  -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 51 )  -- 304 Управление ресурсами

-- and ( xWorkType like '%Наставничество и обучение%' ) -- обучение дизайнеров




order by xSpecialist

/*
set @Bdate = '2022-08-01';
set @Edate = '2022-08-31';

SELECT 
  @Edate as Period
  , concat('H301_', xClientId) as ID
  , 'ММТР' as NameBE
  , tse.xCustomerName as MainCustomer
  , tse.xCustomerName as MainCustomerName
-- , tse.xProgrammName
-- , tse.xProjectName
, sum(tse.xTimeSheetWorkHours) as xWorkHours
, sum(tse.xTimeSheetOverWorkHours) as xOverWorkHours   
FROM brokenboeing.timesheetex as tse
-- where xDate between @Bdate and @Edate
group by  
  tse.xCustomerName
-- , tse.xProgrammName
-- , tse.xProjectName
;
*/

