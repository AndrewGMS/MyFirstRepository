use brokenboeing;

/*
create table brokenboeing.PaymentStatusTable(
tId decimal(10),
tDescription varchar(200)
);

insert into brokenboeing.PaymentStatusTable(tId, tDescription) values (1201,'Заявка на оплату не подана');
insert into brokenboeing.PaymentStatusTable(tId, tDescription) values (1202,'Ожидание оплаты');
insert into brokenboeing.PaymentStatusTable(tId, tDescription) values (1203,'Оплачено');

select * from brokenboeing.PaymentStatusTable;




create table brokenboeing.PaymentTypeTable(
tId decimal(10),
tDescription varchar(200)
);

insert into brokenboeing.PaymentTypeTable(tId, tDescription) values (1101,'Предоплата');
insert into brokenboeing.PaymentTypeTable(tId, tDescription) values (1102,'Оплата по завершению этапа');

select * from brokenboeing.PaymentTypeTable;


create table brokenboeing.BUStructureTable(
tId decimal(10),
tDescription varchar(200),
tBUName varchar(200),
tTaxForm varchar(200)
);

insert into brokenboeing.BUStructureTable (tId, tDescription, tBUName, tTaxForm) values ('111', ' ООО "СофтЭкспорт"', 'ММТР', 'УСН');
insert into brokenboeing.BUStructureTable (tId, tDescription, tBUName, tTaxForm) values ('112', 'ООО "ММТР Технологии"', 'ММТР', 'ОСН');
insert into brokenboeing.BUStructureTable (tId, tDescription, tBUName, tTaxForm) values ('113', 'ООО "ММТР"', 'ММТР', 'ОСН');

select * from brokenboeing.BUStructureTable;

*/
/*
create table brokenboeing.CustomerTypeTable(
tId decimal(10),
tDescription varchar(200),
tSponsor_ID decimal(10)
);

insert into brokenboeing.CustomerTypeTable (tId, tDescription, tSponsor_ID) values ('301', 'Клиент', '201');
insert into brokenboeing.CustomerTypeTable (tId, tDescription, tSponsor_ID) values ('302', 'Управление производством', '202');
insert into brokenboeing.CustomerTypeTable (tId, tDescription, tSponsor_ID) values ('303', 'Управление персоналом', '202');
insert into brokenboeing.CustomerTypeTable (tId, tDescription, tSponsor_ID) values ('304', 'Управление ресурсами', '202');
insert into brokenboeing.CustomerTypeTable (tId, tDescription, tSponsor_ID) values ('305', 'АХО', '202');
insert into brokenboeing.CustomerTypeTable (tId, tDescription, tSponsor_ID) values ('306', 'Финансовый отдел', '202');
insert into brokenboeing.CustomerTypeTable (tId, tDescription, tSponsor_ID) values ('307', 'Отдел технической поддержки', '202');
insert into brokenboeing.CustomerTypeTable (tId, tDescription, tSponsor_ID) values ('308', 'Отдел продаж', '202');
insert into brokenboeing.CustomerTypeTable (tId, tDescription, tSponsor_ID) values ('309', 'Управление', '202');


select * from brokenboeing.CustomerTypeTable;
*/
/*
create table brokenboeing.SponsorTable(
tId decimal(10),
tDescription varchar(200)
);

insert into brokenboeing.SponsorTable(tId, tDescription) values (201,'Внешний спонсор');
insert into brokenboeing.SponsorTable(tId, tDescription) values (202,'Внутренний спонсор');

select * from brokenboeing.SponsorTable;


*/

/*
create table brokenboeing.TypeOfEmploymentTable(
tId decimal(10),
tDescription varchar(200)
);



insert into brokenboeing.TypeOfEmploymentTable(tId, tDescription) values (1001,'Работа на проекте');
insert into brokenboeing.TypeOfEmploymentTable(tId, tDescription) values (1002,'Перереботка');
insert into brokenboeing.TypeOfEmploymentTable(tId, tDescription) values (1003,'Отсутствие занятости');

select * from brokenboeing.TypeOfEmploymentTable;

*/
/*
create table brokenboeing.ProjectPhaseTable(
tId decimal(10),
tDescription varchar(200)
);



insert into brokenboeing.ProjectPhaseTable(tId, tDescription) values (901,'Пресейл');
insert into brokenboeing.ProjectPhaseTable(tId, tDescription) values (902,'Работы по созданию продукта');
insert into brokenboeing.ProjectPhaseTable(tId, tDescription) values (903,'Гарантийные работы');
insert into brokenboeing.ProjectPhaseTable(tId, tDescription) values (0,'-');

select * from brokenboeing.ProjectPhaseTable;
*/
/*
create table brokenboeing.ProjectPropertyTable(
tId decimal(10),
tDescription varchar(200),
tActivity_ID decimal(10),
tSponsor_ID decimal(10),
tCustomer_ID decimal(10),
tBDate date,
tEDate date
);

insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID) values ('801', 'Внешний проект (произвольное название)', '501', '201', '301');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID) values ('802', 'Внутренний проект (произвольное название)', '501', '202', '302');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('803', 'Больничный', '502', '202', '304', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('804', 'Ежегодный отпуск', '502', '202', '304', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('805', 'Отпуск без сохранения заработной платы', '502', '202', '304', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('806', 'Организационные задачи', '502', '202', '304', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('807', 'Поиск и собеседование кандидатов', '502', '202', '303', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('808', 'Развитие компетенций', '502', '202', '304', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('809', 'Стажировка', '502', '202', '304', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('810', 'Наставничество', '502', '202', '304', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('811', 'Оплачиваемый выходной', '502', '202', '303', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('812', 'Копроративные мероприятия', '502', '202', '303', '2022-04-01', '2023-03-31');
insert into brokenboeing.ProjectPropertyTable (tId, tDescription, tActivity_ID, tSponsor_ID, tCustomer_ID, tBDate, tEDate) values ('813', 'Отсутствие занятности', '502', '202', '304', '2022-04-01', '2023-03-31');



select * from ProjectPropertyTable; 


-- ID	Наименование	Спр_Тип Активности_ID	Спр_Спонсор_ID	Спр_Название заказчика_ID	Дата начала проекта	Дата окончания проекта

*/
/*
create table brokenboeing.PaymentModelTable(
tId decimal(10),
tDescription varchar(200)
);



insert into brokenboeing.PaymentModelTable(tId, tDescription) values (701,'Time & Material');
insert into brokenboeing.PaymentModelTable(tId, tDescription) values (702,'Fixed Price');
insert into brokenboeing.PaymentModelTable(tId, tDescription) values (703, 'Full Time');
insert into brokenboeing.PaymentModelTable(tId, tDescription) values (704, 'Outstaffing');
insert into brokenboeing.PaymentModelTable(tId, tDescription) values (0, '-');

select * from brokenboeing.PaymentModelTable;
*/
/*
create table brokenboeing.ProjectClassTable(
tId decimal(10),
tDescription varchar(200)
);

delete from brokenboeing.ProjectClassTable where tId = 601;
delete from brokenboeing.ProjectClassTable where tId = 602;
insert into brokenboeing.ProjectClassTable(tId, tDescription) values (601, 'Операционный');
insert into brokenboeing.ProjectClassTable(tId, tDescription) values (602, 'Инвестиционный');
insert into brokenboeing.ProjectClassTable(tId, tDescription) values (0, '-');
select * from brokenboeing.ProjectClassTable;
*/
/*
create table brokenboeing.ActivityTable(
tId decimal(10),
tDescription varchar(200)
)

insert into brokenboeing.ActivityTable(tId, tDescription) values (501, 'Активности производственные');
insert into brokenboeing.ActivityTable(tId, tDescription) values (502, 'Активности Активность непроизводственная');
--  501	Активности производственные 502	Активность не производственная 

select * from brokenboeing.ActivityTable
*/