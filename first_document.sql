-- SELECT * FROM managementreport.maindocumentstructure;


-- alter table managementreport.MainDocumentStructure add column DocumentUnitName varchar(200) not null default '';
-- alter table managementreport.MainDocumentStructure add column DocumentUnitCaption varchar(200) not null default '';
-- update managementreport.MainDocumentStructure set DocumentUnitCaption = DocumentTypeName
-- alter table managementreport.MainDocumentStructure drop column DocumentTypeName;

/*
insert into managementreport.maindocumentstructure 
    (DocumentStructureID, DocumentUnitId, DocumentTypeName, DataSectionId
     , DataTableIndexId, DataId, DataDefaultValue, DictionarytStructureId)
    values 
     (3, 0, 'Выписки банка', 0
      , 0, 0, '', 0)
*/

call managementreport.InsertUpdateBankStatement('ООО "СофтЭкспорт"', '4401038993', '40702810729000004845', '043469623',
  '000001', '2023-02-09', '33002', '2023-02-09', 'Прочее списание','51', 'Заработная плата по реестру №514 от 09.02.2023 в соответствии с Договором 29011573 от 11.10.2016',
  '72981', '0', 'КОСТРОМСКОЕ ОТДЕЛЕНИЕ N 8640 ПАО СБЕРБАНК (Расчетный)', '7707083893', '70', '-', '-');



/*
  _CompanyName: 'ООО "СофтЭкспорт"',
  _CompanyTaxNumber: '4401038993',
  _AccountBankNumber: '40702810729000004845',
  _AccountBankId: '043469623',
  _NumOperation: '330',
  _DateOperation: '09.02.2023 12:11:52',
  _NumDoc: '33002',
  _DateDoc: '09.02.2023 0:00:00',
  _TypeOperation: 'Прочее списание',
  _MasterAccountNumber: '51',
  _TextOperation: 'Заработная плата по реестру №514 от 09.02.2023 в соответствии
 с Договором 29011573 от 11.10.2016',
  _AmountOperation: '72 981',
  _CorrespondValue: 'КОСТРОМСКОЕ ОТДЕЛЕНИЕ N 8640 ПАО СБЕРБАНК (Расчетный)',
  _CorrespondTaxNumber: '7707083893',
  _SlaveAccountNumber: '70'
*/