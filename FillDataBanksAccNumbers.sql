
select * from  managementreport.maindictionarystructure where StructureId = 4;
select * from  managementreport.maindictionarystructure where StructureId = 3;

call managementreport.getCompanies();
/*
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 3, 'СЭ. ГПБ.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 3, '3');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 3, '2');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 4, 'МТ. Тинькофф.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 4, '2');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 4, '3');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 5, 'ММТР. Сбер.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 5, '1');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 5, '4');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 6, 'МТ. Сбер.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 6, '2');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 6, '4');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 7, 'СЭ. Сбер.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 7, '3');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 7, '4');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 8, 'ДА. Сбер.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 8, '4');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 8, '4');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 9, 'МТ. Казначейство.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 9, '2');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 9, '5');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 10, 'ММТР. Валюта.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 10, '1');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 10, '6');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 11, 'СЭ. Валюта.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 11, '3');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 11, '6');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 12, 'ДА. Валюта.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 12, '4');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 12, '6');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 12, 'ДА. Валюта.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 12, '4');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 12, '6');




insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 1, 'ММТР. ВТБ.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 1, '1');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 1, '1');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 13, 'ММТР. ВТБ. Карта. ');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 13, '1');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 13, '7');


insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 1, 2, 'ДА. ВТБ.');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 4, 2, '4');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (4, 5, 2, '1');



insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (4, 'Расчетные счета в банках', 0, 0, '');
insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (4, 'Расчетный счет. Наименование', 1, 0, '');
insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (4, 'Расчетный счет. Организация', 4, 2, '');
insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (4, 'Расчетный счет. Банк', 5, 3, '');


insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 1, 1, 'ВТБ банк');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 3, 1, 'ВТБ');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 1, 2, 'Газпромбанк');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 3, 2, 'Газпромбанк');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 1, 3, 'Тинькофф банк');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 3, 3, 'Тинькофф');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 1, 4, 'Сбербанк');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 3, 4, 'Сбербанк');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 1, 5, 'Казначейские счета');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 3, 5, 'Казначейство');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 1, 6, 'Валюта в рублях');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 3, 6, 'Валюта');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 1, 7, 'ВТБ корп. карта');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (3, 3, 7, 'ВТБКарта');




insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (3, 'Банки', 0, 0, '');
insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (3, 'Банк. Наименование', 1, 0, '');
insert into managementreport.maindictionarystructure (StructureId, UnitName, UnitId, DictionaryId, ValueDefault) values (3, 'Ключ. Дебиторка', 3, 0, '');

insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 0, 1, 'ООО "ММТР"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 0, 2, 'ООО "ММТР технологии"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 0, 3, 'ООО "СофтЭкспорт"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 0, 4, 'ООО "Дот альфа"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 0, 5, 'ООО "ТЕСТ_01 нет параметра дебиторка"');
insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (2, 0, 6, 'ООО "ТЕСТ_02 параметр дебиторка пустая строка"');


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


insert into managementreport.maindictionary (StructureId, UnitId, DataId, DataValue) values (0, 0, 0, 'Empty|Base value');

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
