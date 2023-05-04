call brokenboeing.GetAbsenceFromWork('2023-05-01');

-- call setabsencefromwork ('ООО «ММТР технологии»', '4401185451', '00000379', '2023-04-28', 'Отпуск очередной', '104', 'Ежегодный основной оплачиваемый отпуск', '09', '1', '440120558001', 'Баукин Кирилл Георгиевич', '2023-05-05', '2023-05-05', 'Нет', 'Да');

-- select * from brokenboeing.absencefromfork where CompanyTaxNumber = '4401069776' order by NumDoc;
/*
SET SQL_SAFE_UPDATES = 0; delete from brokenboeing.absencefromfork; SET SQL_SAFE_UPDATES = 1;
drop table brokenboeing.absencefromfork;
create table brokenboeing.absencefromfork
(
CompanyName varchar(200),
CompanyTaxNumber varchar(200),
NumDoc varchar(200),
DateOperation timestamp,
NPAType varchar(200),
NPAId int unsigned,
TimeName varchar(200),
TimeId int unsigned,
LineNumber int unsigned,
EmploeeTaxNumber varchar(200),
EmploeeName varchar(200),
BeginDate timestamp,
EndDate timestamp,
IsDeleted varchar(200),
IsWired varchar(200)
);
*/