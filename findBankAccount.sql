-- SELECT * FROM managementreport.maindictionarystructure where StructureId = 3;
-- SELECT * FROM managementreport.maindictionary where StructureId = 4 and DataId = 7;

/*
call managementreport.InsertUpdateBankStatement('ООО "СофтЭкспорт"', '4401038993', '40702810729000004845', '043469623',
  '000002-ост', '2022-12-31', '-----', '2022-12-31', 'Прочее списание','51', 'корректировка остатков',
  '0', '44435786.32', 'КОСТРОМСКОЕ ОТДЕЛЕНИЕ N 8640 ПАО СБЕРБАНК (Расчетный)', '7707083893', '00', '-', '-');


*/

-- set @CompanyDataId = managementreport.FindUnitByOneParam(2, 4, '4401038993');
-- select @CompanyDataId;


/*
select * from managementreport.maindictionary md where md.StructureId = 3 and md.UnitId = 5 and md.DataId in
(select DataValue from managementreport.maindictionary md5 
where md5.StructureId = 4 
and md5.UnitId = 5 
and md5.DataId in 
(select md6.DataId from managementreport.maindictionary md6 
where md6.StructureId = 4 
and md6.UnitId = 6 
and md6.DataValue =  '40702810729000004845'
and md6.DataId in 
(select md4.DataId from managementreport.maindictionary md4 where md4.StructureId = 4 and md4.UnitId = 4 and md4.DataValue = @CompanyDataId)
)
);
*/
-- and md5.DataValue =  '043469623'

-- select * from managementreport.maindictionary md4 where md4.StructureId = 4;
/*
set @pDataId = 
(
select DataId from managementreport.maindictionary md5
where 
md5.UnitId = 5
and md5.StructureId = 4 
and md5.DataValue in 
(
select DataId from managementreport.maindictionary mdb
where 
mdb.StructureId = 3 
and mdb.UnitId = 4
and mdb.DataValue =  '043469623'
)

and md5.DataId in
(
select DataId from managementreport.maindictionary md6 
where 
md6.UnitId = 6
and md6.StructureId = 4 
and md6.DataValue =  '40702810729000004845'
and md6.DataId in (select md4.DataId from managementreport.maindictionary md4 where md4.StructureId = 4 and md4.UnitId = 4 and md4.DataValue = @CompanyDataId)
)
);

select @pDataId;
*/