set @BDate = concat('2022-08-01',' 00:00:00');
set @EDate = concat('2022-08-31',' 23:59:59');
set @xStageProject = 'Август 2022г.';

SELECT /*@EDate as Period
  , agt.xAgreement_Id 
  , bust.tDescription
  , agt.xCustomerAgrrementNumber
  , agt.xCustomerAgrrementBDate
  , agt.xCustomerAgrrementEDate
  , xCustomerAgrrementBudgetSum
  , xCustomerAgrrementPMINN
  , xCustomerAgrrementPMName
  , (xTimeSheetWorkHours + xTimeSheetOverWorkHours) as xTimeSheetWorkHours
  */
  -- , bust.* 
  -- 
  -- ,
         tsex.xDate
     --   , tsex.xEmloeeName, tsex.xEmploeeNameShort
       , tsex.xCustomerName, tsex.xProgrammName, tsex.xProjectName, tsex.xWorkType
      --  , tsex.xSpecialist
	   , tsex.xIsBusinessTrip
       , tsex.xTimeSheetWorkHours, tsex.xTimeSheetOverWorkHours
       -- , tsex.xIsInnerOverWork, tsex.xPrice, tsex.xCost, tsex.xComment
       -- , tsex.xTypeOfProblem
       , tsex.xClientId, tsex.xProgramId, tsex.xProjectId, tsex.xWorkRecordId, tsex.xUserId, tsex.xDateModified
  , agt.*
  FROM brokenboeing.timesheetex tsex
     left JOIN brokenboeing.agreementtable agt ON (tsex.xClientId LIKE agt.xClientId)
            AND (tsex.xProgramId LIKE agt.xProgramId)
            AND (tsex.xProjectId LIKE agt.xProjectId)
            AND (tsex.xWorkType LIKE agt.xWorkType)
            AND (@EDate BETWEEN agt.xbDate AND agt.xeDate)        
            AND (tsex.xDate BETWEEN @BDate AND @EDate)    
 --           join brokenboeing.bustructuretable bust on (bust.tId = agt.xContractorId)
          
group by tsex.xDate
       , tsex.xEmloeeName, tsex.xEmploeeNameShort
       , tsex.xCustomerName, tsex.xProgrammName, tsex.xProjectName, tsex.xWorkType
       , tsex.xSpecialist
	   , tsex.xIsBusinessTrip, tsex.xTimeSheetWorkHours, tsex.xTimeSheetOverWorkHours, tsex.xIsInnerOverWork, tsex.xPrice, tsex.xCost, tsex.xComment
       , tsex.xTypeOfProblem, tsex.xClientId, tsex.xProgramId, tsex.xProjectId, tsex.xWorkRecordId, tsex.xUserId, tsex.xDateModified
       

 
 having agt.xAgreement_Id is null 

 and tsex.xClientId != 203 -- какой-то косяк
 -- and tsex.xClientId = 200
 -- and tsex.xProgramId = 354

 -- and tsex.xClientId like '115' -- '%' 

/* 2622, 3670
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 43, 111, 200, '353', '%', '%'
, 'ООО "Аплана МП"', '7735560989', 'SE-0104', '2022-04-01', '2023-12-31', 0, 'Волков Антон Андреевич', '440122996459');







*/

-- 'Волков Антон Андреевич', '440122996459');
-- 'Жижикин Антон Владимирович', '440107140215');
-- 'Клюев Сергей Вячеславович', '440108940140');
-- 'Меркурьев Михаил Викторович', '440103907157');
-- 'Работько Анастасия Дмитриевна', '440130095715');
-- 'Смирнов Роман Александрович', '440200353183');
-- 'Татаринова Любовь Сергеевна', '440124198328');
-- 'Ушакова Марина Евгеньевна', '440116487809');
-- 'Репин Игорь Николаевич', '441403944144');
-- 'Репин Олег Николаевич', '443700089454');

-- select * from brokenboeing.timesheetex 


-- where xClientId != 5 
/*
and not (xClientId = 5 and xProgramId = 241 and xProjectId = 4040  ) -- Camunda      
and not (xClientId = 5 and xProgramId = 298 and xProjectId = 4  ) -- MyMMTR                        ------------
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Нет задач%') 
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Отсутствие технической возможности%') -- ++ 
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Отгул%') -- ++
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Больничный%') -- ++
and not (xClientId = 5 and xProgramId = 106 and xProjectId = 100 and xWorkType like '%Отпуск%') -- ++
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3800 )  -- 303 Управление персоналом ++
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3801 )  -- 306 Бухгалтерия ++
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3804 )  -- 305 АХО ++
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 5714 ) -- 'Develonica-needs' PR  ++
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3799  ) -- 'Внутренние отделы и проекты' PR ++
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4614) -- обучение дизайнеров  +++
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 5558   ) -- английский
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3802   ) -- 302 Управление производством ЕСТЬ ВОПРОСЫ!!!
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 3468   ) -- 307 сисадмины
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 484  ) -- 308 отдел продаж
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 1627  ) -- Преподавание
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 284  ) -- Наставничество
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 3806  ) -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 234 and xProjectId = 3333  ) -- 308 отдел продаж
and not (xClientId = 5 and xProgramId = 317 and xProjectId = 5908 ) -- HR страница
and  not (xClientId = 5 and xProgramId = 37 and xProjectId = 4317  ) -- 302 Управление производсвом
and not (xClientId = 5 and xProgramId = 310 and xProjectId = 3795  ) -- ЛАФ
and  not (xClientId = 5 and xProgramId = 37 and xProjectId = 4125  ) -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4094  ) -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4437 )  -- 304 Управление ресурсами
and not  (xClientId = 5 and xProgramId = 37 and xProjectId = 4717 )  -- 304 Управление ресурсами
and not (xClientId = 5 and xProgramId = 37 and xProjectId = 51 )  -- 304 Управление ресурсами
-- and ( xWorkType like '%Наставничество и обучение%' ) -- обучение дизайнеров


*/

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

