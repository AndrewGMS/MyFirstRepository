-- SELECT * FROM brokenboeing.timesheetex where xClientId = 1 order by xProgrammName;

select * from brokenboeing.timesheetview;
-- select * from brokenboeing.AgreementTable;
-- delete from brokenboeing.AgreementTable;
-- SET SQL_SAFE_UPDATES = 0; delete from brokenboeing.AgreementTable; SET SQL_SAFE_UPDATES = 1; 
/*
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 1, 112, 1, 150, '%', '%', 'ООО "Программный Продукт"', '7810268545', '52-1907/009', '2019-07-04', '2023-12-31', 0, 'Смирнов Роман Александрович', '440200353183');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 2, 112, 1, 6, '%', '%', 'АО "Т-Информ"', '7728793823', '2019-04-23', '2019-04-23', '2023-12-31', 0, 'Смирнов Роман Александрович', '440200353183');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 3, 0, 5, '%', '%', '%', 'Внутренние проекты', '-', '-', '2002-01-01', '2023-12-31', 0, 'Смирнов Роман Александрович', '440200353183');
-- Lanit
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 4, 112, 4, '20', '%', '%', 'ООО "Солит Клаудз"', '7701416948', 'ЕМИАС', '2016-01-01', '2023-12-31', 0, 'Татаринова Любовь Сергеевна', '440124198328');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 5, 113, 4, '21', '%', '%', 'АО "ЛАНИТ"', '7727004113', 'ЕИС', '2016-01-01', '2023-12-31', 0, 'Смирнов Михаил Евгеньевич', '440701498648');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 5, 113, 4, '321', '%', '%', 'АО "ЛАНИТ"', '7727004113', 'ЕИС', '2016-01-01', '2023-12-31', 0, 'Смирнов Михаил Евгеньевич', '440701498648');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 5, 113, 4, '320', '%', '%', 'АО "ЛАНИТ"', '7727004113', 'ЕИС', '2016-01-01', '2023-12-31', 0, 'Смирнов Михаил Евгеньевич', '440701498648');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 5, 113, 4, '87', '%', '%', 'АО "ЛАНИТ"', '7727004113', 'ЕИС', '2016-01-01', '2023-12-31', 0, 'Смирнов Михаил Евгеньевич', '440701498648');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 5, 113, 4, '322', '%', '%', 'АО "ЛАНИТ"', '7727004113', 'ЕИС', '2016-01-01', '2023-12-31', 0, 'Смирнов Михаил Евгеньевич', '440701498648');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 5, 113, 4, '319', '%', '%', 'АО "ЛАНИТ"', '7727004113', 'ЕИС', '2016-01-01', '2023-12-31', 0, 'Смирнов Михаил Евгеньевич', '440701498648');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 5, 113, 4, '262', '%', '%', 'АО "ЛАНИТ"', '7727004113', 'ЕИС', '2016-01-01', '2023-12-31', 0, 'Смирнов Михаил Евгеньевич', '440701498648');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 5, 113, 4, '277', '%', '%', 'АО "ЛАНИТ"', '7727004113', 'ЕИС', '2016-01-01', '2023-12-31', 0, 'Смирнов Михаил Евгеньевич', '440701498648');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 6, 113, 92, '236', '%', '%', 'ПАО СК «Росгосстрах»', '7707067683', '2018-09-13', '2018-09-13', '2023-12-31', 0, 'Токарева Людмила Константиновна', '440118467117');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 7, 112, 92, '295', '%', '%', 'ПАО СК «Росгосстрах»', '7707067683', '2020-01-01', '2020-05-13', '2023-12-31', 0, 'Токарева Людмила Константиновна', '440118467117');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 8, 111, 116, '%', '%', '%', 'ООО "Наймикс"', '5047217640', '2021-09-01', '2021-09-01', '2023-12-31', 0, 'Атаманчугов Вадим Рудольфович', '440126360015');
call brokenboeing.AddToAgreementTable ('2022-08-01', '2022-08-31', 9, 112, 203, '%', '%', '%', 'ООО "Лаборатория медицинских информационных технологий "Элемент"', '7704878147', '17082022', '2022-08-17', '2022-08-31', 0, 'Репин Игорь Николаевич', '441403944144');

call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 11, 112, 198, '%', '%', '%', 'ООО "Ю-Ти-Джи Интегрейшн"', '7727489034', 'UI-13-22-S', '2022-07-01', '2023-12-31', 0, 'Курченкова Наталия Евгеньевна', '370224640306');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 12, 112, 67, '%', '%', '%', 'ООО «ГЛОБУС-ИТ»', '5260365605', '2021-02-21', '2021-01-21', '2023-12-31', 0, 'Репин Игорь Николаевич', '441403944144');
call brokenboeing.AddToAgreementTable ('2022-01-01', '2023-03-31', 13, 112, 84, '%', '%', '%', 'ООО «Оператор-ЦРПТ»', '7731376812', 'MMTR-0911', '2021-11-01', '2023-12-31', 0, 'Репин Игорь Николаевич', '441403944144');


*/

/*

drop table brokenboeing.AgreementTable;

create table brokenboeing.AgreementTable (
   xbDate timestamp default '2022-01-01'
 , xeDate timestamp default '2023-03-31'
 , xAgreement_Id int
 , xContractorId varchar(10)
 , xClientId varchar(10)
 , xProgramId varchar(10)
 , xProjectId varchar(10)
 , xWorkType varchar(100)
 , xCustomerName varchar(100)
 , xCustomerINN varchar(100)
 , xCustomerAgrrementNumber varchar(100)
 , xCustomerAgrrementBDate timestamp default '2022-01-01'
 , xCustomerAgrrementEDate timestamp default '2023-03-31'
 , xCustomerAgrrementBudgetSum numeric(10,2)
 , xCustomerAgrrementPMName varchar(100)
 , xCustomerAgrrementPMINN varchar(100)

  
 );
 
 */