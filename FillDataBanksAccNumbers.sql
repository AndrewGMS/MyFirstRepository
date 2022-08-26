
-- call managementreport.getCompanies();

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 1, 1, 'ВТБ банк');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 3, 1, 'ВТБ');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 1, 1, 'ВТБ банк');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 3, 1, 'ВТБ');



/*
insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (3, 'Банки', 0, 0, '');
insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (3, 'Банк. Наименование', 1, 0, '');
insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (3, 'Ключ. Дебиторка', 3, 0, '');


insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 1, 4, 'ООО "Дот альфа"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 2, 4, '0');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 3, 4, 'ДА');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 1, 1, 'ООО "ММТР"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 2, 1, '1');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 3, 1, 'ММТР');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 1, 2, 'ООО "ММТР технологии"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 2, 2, '1');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 3, 2, 'ММТР технологии');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 1, 3, 'ООО "СофтЭкспорт"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 2, 3, '1');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 3, 3, 'СофтЭкспорт');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 1, 4, 'ООО "Дот альфа"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 2, 4, '0');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 3, 4, 'ДА');


insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 1, 5, 'ООО "ТЕСТ_01 нет параметра дебиторка"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 2, 5, '0');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 1, 6, 'ООО "ТЕСТ_02 параметр дебиторка пустая строка"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 2, 6, '0');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 3, 6, '');




2	Организации. Юридические лица.	0	0	
2	Наименование Организации	1	0	
2	Бизнес единица.	2	1	0
2	Ключ. Дебиторка	3	0	

-- getcompanies
select DebKey.DataId as Id , DebKey.DataValue as DebKeyValue, NameValues.DataValue as nameCompany from managementreport.maindictionary as DebKey 
inner join managementreport.maindictionary as NameValues 
where DebKey.StructureId = 2 and DebKey.UnitId = 3 and DebKey.DataValue <> '' 
and NameValues.StructureId = 2 and NameValues.UnitId = 1 and DebKey.DataId = NameValues.DataId;
*/
