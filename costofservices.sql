-- use accountingdb;


select * from accountingdb.costofservices;

call accountingdb.setserviceactclear('2023-07-01', '2023-07-31', '4401069776');

/*
requestBeginDate: '2023-07-01',
requestEndDate: '2023-07-01',
requestOwnerTaxNumber: '4401069776'
*/
select * from accountingdb.costofservices;


/*
create table costofservices(
requestId decimal(10)
, requestDate date
, requestNumber varchar(200)
, requestSum decimal(10,2)
, requestSumNoTax decimal(10,2)
, requestOwnerTaxNumber varchar(12)
);




В рамках данной задачи требуется:

В задаче в Jira по заявке на выставление счета требуется отобразить "ID заявки" с идентификатором выставляемого счета  
В МойММТР должна быть добавлена таблица в базе данных для заполнения данных по актам
ID заявки + 
Дата акта
Номер акта
Сумма акта (с НДС)
Выручка по акту (без НДС)
Должен быть предоставлен доступ руководителю отдела бухгалтерия
Данные в таблице должны быть доступны для обновления   
МойММТР должен сопоставлять загруженные данные актов по id заявки на выставление счетов и добавлять их в отчет "Доходы"
Если на один id заявки выставления счета присутствует несколько строк с данными по актам, то строка дублируется с разными данными актов 





*/