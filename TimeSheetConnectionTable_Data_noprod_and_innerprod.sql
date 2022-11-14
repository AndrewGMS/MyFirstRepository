-- and not (xClientId = 5 and xProgramId = 298 and xProjectId = 4  ) -- MyMMTR    
-- 11 4009 call brokenboeing.AddToConnectionTable(  5, 298, 4,'%', 0  , 802 , 301 , 0 , 1001 , 601, 0 );
-- and not (xClientId = 5 and xProgramId = 241 and xProjectId = 4040  ) -- Camunda 
-- 11 4009 call brokenboeing.AddToConnectionTable(  5, 241, 4040,'%', 0  , 802 , 301 , 0 , 1001 , 601, 0 );


-- and  (xClientId = 5 and xProgramId = 37 and xProjectId = 51 ) 
-- 11 4009 call brokenboeing.AddToConnectionTable(  5, 37, 51,'%', 0  , 806 , 304 , 0 , 1001 , 601, 0 );
-- and not (xClientId = 5 and xProgramId = 37 and xProjectId = 4717 )  -- 304 Управление ресурсами
-- 1 3998 call brokenboeing.AddToConnectionTable(  5, 37, 4717,'%', 0  , 806 , 304 , 0 , 1001 , 601, 0 );
-- and (xClientId = 5 and xProgramId = 37 and xProjectId = 4437 )  -- 304 Управление ресурсами
-- 7 3997 call brokenboeing.AddToConnectionTable(  5, 37, 4437,'%', 0  , 806 , 304 , 0 , 1001 , 601, 0 );
-- and (xClientId = 5 and xProgramId = 37 and xProjectId = 4094  ) -- 304 Управление ресурсами
-- 3 3990 call brokenboeing.AddToConnectionTable(  5, 37, 4094,'%', 0  , 806 , 304 , 0 , 1001 , 601, 0 );
-- and  (xClientId = 5 and xProgramId = 37 and xProjectId = 4125  ) -- 304 Управление ресурсами
-- 8 3987 call brokenboeing.AddToConnectionTable(  5, 37, 4125,'%', 0  , 806 , 304 , 0 , 1001 , 601, 0 );
-- and  (xClientId = 5 and xProgramId = 310 and xProjectId = 3795  ) -- ЛАФ
-- 4 3979 call brokenboeing.AddToConnectionTable(  5, 310, 3795,'%', 0  , 806 , 304 , 0 , 1001 , 601, 0 );
-- and  (xClientId = 5 and xProgramId = 37 and xProjectId = 4317  ) -- 302 Управление производсвом
-- 20 3975 call brokenboeing.AddToConnectionTable(  5, 37, 4317,'%', 0  , 806 , 302 , 0 , 1001 , 601, 0 );
-- and (xClientId = 5 and xProgramId = 317 and xProjectId = 5908 ) -- HR страница
-- 3 3955 call brokenboeing.AddToConnectionTable(  5, 317, 5908,'%', 0  , 806 , 303 , 0 , 1001 , 601, 0 );
-- and (xClientId = 5 and xProgramId = 234 and xProjectId = 3333  ) -- 308 отдел продаж
-- 23 3952 call brokenboeing.AddToConnectionTable(  5, 234, 3333,'%', 0  , 806 , 308 , 0 , 1001 , 601, 0 );
-- and (xClientId = 5 and xProgramId = 234 and xProjectId = 3806  ) -- 304 Управление ресурсами
-- 6 3929 call brokenboeing.AddToConnectionTable(  5, 234, 3806,'%', 0  , 806 , 304 , 0 , 1001 , 601, 0 );
-- and not (xClientId = 5 and xProgramId = 234 and xProjectId = 284  ) -- Наставничество
-- 114 3923 call brokenboeing.AddToConnectionTable(  5, 234, 284,'%', 0  , 810 , 304 , 0 , 1001 , 601, 0 );
-- and (xClientId = 5 and xProgramId = 234 and xProjectId = 1627  ) -- Преподавание
-- 15 3809 call brokenboeing.AddToConnectionTable(  5, 234, 1627,'%', 0  , 810 , 304 , 0 , 1001 , 601, 0 );
-- and  (xClientId = 5 and xProgramId = 234 and xProjectId = 484  ) -- 308 отдел продаж
-- 207 3794 call brokenboeing.AddToConnectionTable(  5, 234, 484,'%', 0  , 806 , 308 , 0 , 1001 , 601, 0 );
-- and  (xClientId = 5 and xProgramId = 37 and xProjectId = 3468   ) -- 307 сисадмины
-- 214 3587 call brokenboeing.AddToConnectionTable(  5, 37, 3468,'%', 0  , 806 , 307 , 0 , 1001 , 601, 0 );
-- and  (xClientId = 5 and xProgramId = 37 and xProjectId = 3802   ) -- 302 Управление производством ЕСТЬ ВОПРОСЫ!!!
-- 108 3373 call brokenboeing.AddToConnectionTable(  5, 37, 3802,'%', 0  , 806 , 302 , 0 , 1001 , 601, 0 );
-- and (xClientId = 5 and xProgramId = 234 and xProjectId = 5558   ) -- английский
-- 12 3265 call brokenboeing.AddToConnectionTable(  5, 234, 5558,'%', 0  , 810 , 304 , 0 , 1001 , 601, 0 );
-- 33 3253 call brokenboeing.AddToConnectionTable(  5, 37, 4614,'%', 0  , 809 , 304 , 0 , 1001 , 601, 0 );
-- 79 3220 call brokenboeing.AddToConnectionTable(  5, 37, 5714,'%', 0  , 806 , 304 , 0 , 1001 , 601, 0 );
-- 58 3141 call brokenboeing.AddToConnectionTable(  5, 37, 3799,'%', 0  , 806 , 304 , 0 , 1001 , 601, 0 );
/*

-- Кадры 3083
call brokenboeing.AddToConnectionTable(  5, 37, 3804,'%', 0  , 806 , 305 , 0 , 1001 , 601, 0 );
insert into brokenboeing.TimeSheetConnectionTable (xClientId, xProgramId, xProjectId, xWorkType, xProjectResult_Id, projectpropertytable_Id, customertypetable_Id, projectphasetable_Id, typeofemploymenttable_Id, projectclasstable_Id, paymentmodeltable_Id) 
values (  5, 37, 3804,'%', 0  , 806 , 305 , 0 , 1001 , 601, 0 );


 --  	Спонсор		
 --  	ID	Наименование	
 --  	201	Внешний спонсор	
 --  	202	Внутренний спонсор	
 --  			
 --  	Название заказчика		
 --  	ID	Наименование	Спр_Спонсор_ID
 --  	301_0	Клиент	201
 --  	302	Управление производством	202
 --  	303	Управление персоналом	202
 --  	304	Управление ресурсами	202
 --  	305	АХО	202
 --  	306	Финансовый отдел	202
 --  	307	Отдел технической поддержки	202
 --  	308	Отдел продаж	202
 --  	309	Управление	202

 --  	Тип активноси						
 --  	ID	Наименование					
 --  	501	Активности производственные 					
 --  	502	Активность не производственная 					
 --  							
 --  	Классификация проектов (производственные активности)						
 --  	ID	Наименование					
 --  	601	Операционный 					
 --  	602	Инвестиционный 					
 --  							
 --  	Модель оплаты						
 --  	ID	Наименование					
 --  	701	Time & Material					
 --  	702	Fixed Price					
 --  	703	Full Time					
 --  	704	Outstaffing					
 --  							
 --  	Проект						
 --  	ID	Наименование	Спр_Тип Активности_ID	Спр_Спонсор_ID	Спр_Название заказчика_ID	Дата начала проекта	Дата окончания проекта
 --  	801_0	Внешний проект (произвольное название)	501	201	301_0	-	-
 --  	802_0	Внутренний проект (произвольное название)	501	202	302-309	-	-
 --  	803	Больничный	502	202	304	01.04.2022	31.03.2023
 --  	804	Ежегодный отпуск	502	202	304	01.04.2022	31.03.2023
 --  	805	Отпуск без сохранения заработной платы	502	202	304	01.04.2022	31.03.2023
 --  	806	Организационные задачи	502	202	304	01.04.2022	31.03.2023
 --  	807	Поиск и собеседование кандидатов	502	202	303	01.04.2022	31.03.2023
 --  	808	Развитие компетенций	502	202	304	01.04.2022	31.03.2023
 --  	809	Стажировка	502	202	304	01.04.2022	31.03.2023
 --  	810	Наставничество	502	202	304	01.04.2022	31.03.2023
 --  	811	Оплачиваемый выходной	502	202	303	01.04.2022	31.03.2023
 --  	812	Копроративные мероприятия	502	202	303	01.04.2022	31.03.2023
 --  	813	Отсутствие занятности	502	202	304	01.04.2022	31.03.2023
 --  							
 --  	Фаза проекта (производственные активности)						
 --  	ID	Наименование					
 --  	901	Пресейл					
 --  	902	Работы по созданию продукта					
 --  	903	Гарантийные работы					
 --  							
 --  	Вид занятости на проекте (производственные активности)						
 --  	ID	Наименование					
 --  	1001	Работа на проекте					
 --  	1002	Переработка					
 --  	1003	Отсутствие занятости					

 --  	Тип оплаты	
 --  	ID	Наименование
 --  	1101	Предоплата
 --  	1102	Оплата по завершению этапа
 --  		
 --  	Статус оплаты	
 --  	ID	Наименование
 --  	1201	Заявка на оплату не подана
 --  	1202	Ожидание оплаты
 --  	1203	Оплачено






insert into brokenboeing.TimeSheetConnectionTable (
   xClientId 
 , xProgramId
 , xProjectId
 , xWorkType
 , xProjectResult_Id
 , projectpropertytable_Id
 , customertypetable_Id
 , projectphasetable_Id
 , typeofemploymenttable_Id
 , projectclasstable_Id
 , paymentmodeltable_Id
 
 ) 
 values (  -- Кадры
 5 -- xClientId 
 , 37 -- xProgramId
 , 3801 -- xProjectId
 ,'%' --  xWorkType
 , 0 -- xProjectResult_Id
 , 806 --  projectpropertytable_Id поиск и собеседование кандидатов
 , 306 -- customertypetable_Id 
 , 0 -- projectphasetable_Id
 , 1001 -- typeofemploymenttable_ID  1001 работа на проекте 1002 переработки 1003 отсутвие занятости
 , 601 -- 601 операционный 602 инвестиционный 0 неприменимо
 , 0   -- модель оплаты 0 неприменимо  701 T&M
 );

insert into brokenboeing.TimeSheetConnectionTable (
   xClientId 
 , xProgramId
 , xProjectId
 , xWorkType
 , xProjectResult_Id
 , projectpropertytable_Id
 , customertypetable_Id
 , projectphasetable_Id
 , typeofemploymenttable_Id
 , projectclasstable_Id
 , paymentmodeltable_Id
 
 ) 
 values (  -- Кадры
 5 -- xClientId 
 , 37 -- xProgramId
 , 3800 -- xProjectId
 ,'%' --  xWorkType
 , 0 -- xProjectResult_Id
 , 807 --  projectpropertytable_Id поиск и собеседование кандидатов
 , 303 -- customertypetable_Id 
 , 0 -- projectphasetable_Id
 , 1001 -- typeofemploymenttable_ID  1001 работа на проекте 1002 переработки 1003 отсутвие занятости
 , 601 -- 601 операционный 602 инвестиционный 0 неприменимо
 , 0   -- модель оплаты 0 неприменимо  701 T&M
 );

insert into brokenboeing.TimeSheetConnectionTable (
   xClientId 
 , xProgramId
 , xProjectId
 , xWorkType
 , xProjectResult_Id
 , projectpropertytable_Id
 , customertypetable_Id
 , projectphasetable_Id
 , typeofemploymenttable_Id
 , projectclasstable_Id
 , paymentmodeltable_Id
 
 ) 
 values (
 5 -- xClientId 
 , 106 -- xProgramId
 , 100 -- xProjectId
 ,'%Отпуск%' --  xWorkType
 , 0 -- xProjectResult_Id
 , 804 --  projectpropertytable_Id
 , 304 -- customertypetable_Id
 , 0 -- projectphasetable_Id
 , 1003 -- typeofemploymenttable_ID
 , 0
 , 0
 );



insert into brokenboeing.TimeSheetConnectionTable (
   xClientId 
 , xProgramId
 , xProjectId
 , xWorkType
 , xProjectResult_Id
 , projectpropertytable_Id
 , customertypetable_Id
 , projectphasetable_Id
 , typeofemploymenttable_Id
 , projectclasstable_Id
 , paymentmodeltable_Id
 
 ) 
 values (
 5 -- xClientId 
 , 106 -- xProgramId
 , 100 -- xProjectId
 ,'%Больничный%' --  xWorkType
 , 0 -- xProjectResult_Id
 , 803 --  projectpropertytable_Id
 , 304 -- customertypetable_Id
 , 0 -- projectphasetable_Id
 , 1003 -- typeofemploymenttable_ID
 , 0
 , 0
 );




insert into brokenboeing.TimeSheetConnectionTable (
   xClientId 
 , xProgramId
 , xProjectId
 , xWorkType
 , xProjectResult_Id
 , projectpropertytable_Id
 , customertypetable_Id
 , projectphasetable_Id
 , typeofemploymenttable_Id
 , projectclasstable_Id
 , paymentmodeltable_Id
 
 ) 
 values (
 5 -- xClientId 
 , 106 -- xProgramId
 , 100 -- xProjectId
 ,'%Отгул%' --  xWorkType
 , 0 -- xProjectResult_Id
 , 805 --  projectpropertytable_Id
 , 304 -- customertypetable_Id
 , 0 -- projectphasetable_Id
 , 1003 -- typeofemploymenttable_ID
 , 0
 , 0
 );




insert into brokenboeing.TimeSheetConnectionTable (
   xClientId 
 , xProgramId
 , xProjectId
 , xWorkType
 , xProjectResult_Id
 , projectpropertytable_Id
 , customertypetable_Id
 , projectphasetable_Id
 , typeofemploymenttable_Id
 , projectclasstable_Id
 , paymentmodeltable_Id
 
 ) 
 values (
 5 -- xClientId 
 , 106 -- xProgramId
 , 100 -- xProjectId
 ,'%Отсутствие технической возможности%' --  xWorkType
 , 0 -- xProjectResult_Id
 , 813 --  projectpropertytable_Id
 , 304 -- customertypetable_Id
 , 0 -- projectphasetable_Id
 , 1003 -- typeofemploymenttable_ID
 , 0
 , 0
 );





insert into brokenboeing.TimeSheetConnectionTable (
   xClientId 
 , xProgramId
 , xProjectId
 , xWorkType
 , xProjectResult_Id
 , projectpropertytable_Id
 , customertypetable_Id
 , projectphasetable_Id 
 , typeofemploymenttable_Id
 , projectclasstable_Id
 , paymentmodeltable_Id
 
 )
 values (
 5 -- xClientId 
 , 106 -- xProgramId
 , 100 -- xProjectId
 ,'%Нет задач%' --  xWorkType
 , 0 -- xProjectResult_Id
 , 813 --  projectpropertytable_Id
 , 304 -- customertypetable_Id
 , 0 -- projectphasetable_Id
 , 1003 -- typeofemploymenttable_ID
 , 0
 , 0
  );
*/