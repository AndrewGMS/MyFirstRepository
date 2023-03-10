-- SELECT * FROM accountingdb.productionPeople;

-- call accountingdb.tsformthree_v1('2023-02-01');
-- call accountingdb.tsformtwo_v1('2023-02-01');
-- select * from timesheetdb.work_records limit 10
-- select * from timesheetdb.company_legal_entities
-- select * from timesheetdb.projects limit 20
-- select * from timesheetdb.clients

-- 1. Отчет_1 (Таймшит) tsreportone_v1
-- 2. Форма_3 (Проект) tsformthree_v1
-- 3. Отчет_2 (Доходы) tsreporttwo_v1
-- 4. Отчет_4 ФОТ tsreportfour_v1
-- 5. Отчет_5 (ШР) tsreportfive_v3

-- use accountingdb;
select * from accountingdb.agreements -- where agreementId = 'H505';
-- SET SQL_SAFE_UPDATES = 0; delete from brokenboeing.issuedinvoices; SET SQL_SAFE_UPDATES = 1;  
-- update accountingdb.agreements set mainCustomerId = 1 where agreementId = 'H505';
-- update accountingdb.agreements set agreementProjectStr = ', 3749,' where agreementId = 'H505';


/*
drop table agreements;
create table agreements (
  agreementId varchar(20)
, legalEntitiesId int(11)
, mainCustomerId int(11)
, customerName varchar(200)
, agreementNumber varchar(200)
, agreementDate varchar(200)
, agreementDateEnd varchar(200)
, agreementBudget int(12)
, agreementAmId int(11)
, agreementProjectStr varchar(200)
);

 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H501', '1', '0', 'ООО "ЛАНИТ ТЕХНОЛОГИИ"', '-', '-', '', '0', '41');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H502', '1', '0', 'АО "ЛАНИТ"', '-', '-', '', '0', '41');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H503', '2', '0', 'ООО "Солит Клаудз"', '-', '-', '', '0', '37');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H504', '2', '0', 'АО "Т-Информ"', '2019-04-23', '23.04.2019', '', '0', '55');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H505', '2', '0', 'ООО "Программный Продукт"', '52-1907/009', '04.07.2019', '', '0', '1220');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H506', '2', '0', 'АО "Инфосистемы Джет"', '14042021_01', '14.04.2021', '', '0', '272');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H507', '2', '0', 'АО "СофтЛайн Трейд"', 'MMTR-14042022', '20.04.2022', '', '0', '185');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H508', '2', '0', 'ООО "Айдиэнлаб"', 'ADL-MT-1804', '18.04.2022', '', '0', '22');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H509', '2', '0', 'ООО "АксТим"', '47nc/2020', '10.08.2020', '', '0', '272');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H510', '2', '0', 'ООО "Аплана. ЦР"', 'APL-MT-0206', '02.06.2022', '', '0', '1147');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H511', '2', '0', 'ООО "Артлоджик-СК"', '2019-06-06', '06.06.2019', '', '0', '1147');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H512', '2', '0', 'ООО "ГЛОБУС-ИТ"', '2021-01-21', '21.01.2021', '', '0', '272');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H513', '2', '0', 'ООО "Диасофт"', '15042022-08', '31.08.2022', '', '0', '37');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H514', '2', '0', 'ООО "Итерация"', '01062021-1', '01.06.2021', '', '0', '37');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H515', '2', '0', 'ООО "КТЕ Лэбс"', '2023-01-09', '09.01.2023', '', '0', '37');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H516', '2', '0', 'ООО "Оператор-ЦРПТ"', 'MMTR-0911', '01.11.2021', '', '0', '272');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H517', '2', '0', 'ООО "ОрбИТа"', 'OR/MT-0808', '08.08.2022', '', '0', '1147');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H518', '2', '0', 'ООО "Пулинг-ми"', '01082022', '01.08.2022', '', '0', '1147');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H519', '2', '0', 'ООО "Р.Т Решения"', '68716', '28.06.2022', '', '0', '272');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H520', '2', '0', 'ООО "РТК-Элемент"', '№РТКЭ-СУБ/221122-002', '22.11.2022', '', '0', '272');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H521', '2', '0', 'ООО "Синтека"', 'SNT-MT-0806', '08.06.2022', '', '0', '22');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H522', '2', '0', 'ООО "СЭТ"', '2020/09/01', '01.09.2020', '', '0', '1460');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H523', '2', '0', 'ООО "ЭрСиСи"', '29112021', '29.11.2021', '', '0', '272');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H524', '2', '0', 'ООО "Ю-Ти-Джи Интегрейшн"', 'UI-13-22-S', '01.07.2022', '', '0', '1460');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H525', '2', '0', 'ООО "Ю-Ти-Джи-Групп"', 'UG-6-22-C', '27.05.2022', '', '0', '1460');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H526', '2', '0', 'ПАО СК "Росгосстрах"', '2020-02-01', '13.05.2020', '', '0', '38');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H527', '2', '0', 'СООО "Белитсофт интернешнл"', '23/11/2022', '23.11.2022', '', '0', '16');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H528', '1', '0', 'ООО "ЛАНИТ ТЕХНОЛОГИИ"', '-', '-', '', '0', '41');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H529', '1', '0', 'АО "ЛАНИТ"', '-', '-', '', '0', '41');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H530', '1', '0', 'КБ «Ренессанс Кредит» (ООО)', 'РК04092020/1644', '01.09.2020', '', '0', '37');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H531', '1', '0', 'ООО "ПИТ"', '09-ПИТ/2022', '27.05.2022', '', '0', '1147');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H532', '1', '0', 'ООО "Скилаз"', '2019-03-18', '18.03.2019', '', '0', '171');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H533', '1', '0', 'ПАО СК "Росгосстрах"', '2018-09-03', '03.09.2018', '', '0', '38');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H534', '3', '0', 'ООО "Аплана МП"', 'SE-0104', '01.04.2022', '', '0', '272');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H535', '3', '0', 'ООО "Ситек"', '01042022/2', '01.04.2022', '', '0', '272');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H536', '3', '0', 'ООО "Софтлайн Платформы"', '2022-06-01', '01.06.2022', '', '0', '1147');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H537', '3', '0', 'ООО "Наймикс"', '2021-09-01', '01.09.2021', '', '0', '16');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H538', '3', '0', 'ООО "Скилаз"', '2022-06-01', '01.06.2022', '', '0', '171');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H539', '3', '0', 'ООО "Кволитика"', '08/12/22', '08.12.2022', '', '0', '37');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H540', '2', '0', 'ООО "Техцентр"', '14-21/Р/АДМ', '15.07.2021', '', '0', '16');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H541', '2', '0', 'ООО "Феникс"', '№ 2019-04-17', '17.04.2019', '', '0', '16');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H542', '3', '0', 'WebCertain', '-', '-', '', '0', '16');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H543', '3', '0', 'ООО "Городище"', 'G/2022-11', '01.11.2022', '', '0', '1110');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H544', '2', '0', 'ООО "М5"', '1/ПОСТ-2023', '15.01.2023', '', '0', '16');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H545', '3', '0', 'ООО "3 квадрат"', '2022-01-10', '10.01.2022', '', '0', '96');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H546', '3', '0', 'ИП Кузнецов Алексей Николаевич', '2021/05/19-8', '19.05.2021', '', '0', '16');
 insert into agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId) values ('H547', '3', '0', 'ООО "ОрбИТа"', 'OR/SE-0223', '09.01.2023', '', '0', '1433');
*/
-- describe timesheetdb.company_legal_entities;
-- describe timesheetdb.projects;
-- describe timesheetdb.work_records;
-- Период	ID	Спр_ЮЛ_Наименование ЮЛ	ИД ЮЛ	Спр_Главный Заказчик_Наименование	Спр_Заказчик_Наименование	Полный номер договора	Дата заключения договора 	Дата окончания	Бюджетная (плановая) сумма выручки (оплаченной отгрузки) проекта, руб.	Отвественный АМ_ФИО сотрудника	ИД АМ
