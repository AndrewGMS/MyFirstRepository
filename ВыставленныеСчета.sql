-- alter database brokenboeing;

select * from brokenboeing.NoProductionList

select * from brokenboeing.issuedinvoices;
select sum(xSum) from brokenboeing.issuedinvoices;
-- SET SQL_SAFE_UPDATES = 1; -- 0 разрешить удаление строк, 1 запретить
-- delete from brokenboeing.issuedinvoices;

select xInvoiceId, xExtendedID, xID, xNumber, xCaption, xSum, xStatus, xResponsiblePerson, xClient, xProgramm, xProject, xDateOperation, xDateModified from brokenboeing.issuedinvoices
/* 
call AddToIssuedInvoices('20000000000Август2022'  ,  '20000000000'  ,  '1'  ,  '1'  ,  '460000'  ,  'Закрыто'  ,  'Ключников Андрей'  ,  'Аплана.Международные проекты'  ,  'Тинькофф банк'  ,  'MSM EACQ Migration'  ,  '2022-8-1'  ,  'inv2242'  ,  '2022-10-11 14:52:00'); 

drop table brokenboeing.IssuedInvoices;

create table brokenboeing.IssuedInvoices (
 
   xExtendedID varchar(200) -- ExtendedID
 , xID varchar(200) -- ID
 , xNumber varchar(200) -- №	
 , xCaption varchar(200) -- Заголовок	
 , xSum  decimal(10,2) -- Сумма	
 , xStatus varchar(200) -- Статус	
 , xResponsiblePerson varchar(200) -- Ответственный	
 , xClient  varchar(200) -- Клиент	
 , xProgramm  varchar(200) -- Программа	
 , xProject varchar(200) -- Проект	
 , xDateOperation timestamp -- Дата
 , xInvoiceId  varchar(200) -- InvoiceId 
 , xClientId decimal(10) -- 
 , xProgramId decimal(10) -- 
 , xProjectId decimal(10) -- 
 , xDateModified timestamp -- дата время внесения изменений
 
 );
 
 
 
 
 create table brokenboeing.NoProductionList(
 
   xID numeric(4) -- ExtendedID
 , xValue varchar(200) -- ID
 
 )
 
 
 
insert into brokenboeing.NoProductionList (xId, xValue) values (803, 'Больничный');
insert into brokenboeing.NoProductionList (xId, xValue) values (804, 'Ежегодный отпуск');
insert into brokenboeing.NoProductionList (xId, xValue) values (805, 'Отпуск без сохранения заработной платы');
insert into brokenboeing.NoProductionList (xId, xValue) values (806, 'Организационные задачи');
insert into brokenboeing.NoProductionList (xId, xValue) values (807, 'Поиск и собеседование кандидатов');
insert into brokenboeing.NoProductionList (xId, xValue) values (808, 'Развитие компетенций');
insert into brokenboeing.NoProductionList (xId, xValue) values (809, 'Стажировка');
insert into brokenboeing.NoProductionList (xId, xValue) values (810, 'Наставничество');
insert into brokenboeing.NoProductionList (xId, xValue) values (811, 'Оплачиваемый выходной');
insert into brokenboeing.NoProductionList (xId, xValue) values (812, 'Копроративные мероприятия');
insert into brokenboeing.NoProductionList (xId, xValue) values (813, 'Отсутствие занятности');

*/