-- SELECT * FROM managementreport.maindocumentstructure;
-- SELECT * FROM managementreport.maindocumentdata;

-- call ClearDocumentData(1, 4);


-- (DocumentStructureID, DocumentUnitId, DocumentId,                   DataSectionId, DataTableIndexId, DataRowNumberId, DataId, DataValueStructureId, DataValueUnitId, DataValueId, DataValue)
-- (DocumentStructureID, DocumentUnitId,             DocumentTypeName, DataSectionId, DataTableIndexId,                  DataId, DataDefaultValue, DictionarytStructureId)

set @DebCompanyName = 'ММТР';
set @DebBankName = 'ВТБ';

set @StructureId = -1;
set @UnitId = -1;
set @DataId = -1;  
set @CompanyID = -1; 
set @CompanyDictionaryID = -1; 
set @BankID = -1;
set @BankDictionaryID = -1;


-- set @StructureId = (select DCB.AccountsStructureId from managementreport.debcompanyandbank DCB where DCB.DebCompanyName = @DebCompanyName and DCB.DebBankName = @DebBankName);
-- set @UnitId =      (select DCB.AccountsUnitId      from managementreport.debcompanyandbank DCB where DCB.DebCompanyName = @DebCompanyName and DCB.DebBankName = @DebBankName);
-- set @DataId =      (select DCB.AccountsDataId      from managementreport.debcompanyandbank DCB where DCB.DebCompanyName = @DebCompanyName and DCB.DebBankName = @DebBankName);

select @StructureId = DCB.AccountsStructureId
     , @UnitId = DCB.AccountsUnitId
     , @DataId = DCB.AccountsDataId  
     , @CompanyID = DCB.CompanyID 
     , @CompanyDictionaryID = DCB.CompanyDictionaryID 
     , @BankID = DCB.BankID
     , @BankDictionaryID = DCB.BankDictionaryID
  
     from managementreport.debcompanyandbank DCB 
     where DCB.DebCompanyName = @DebCompanyName 
       and DCB.DebBankName = @DebBankName
       
  --   limit 1  
    ; 
    

-- AccountName, AccountsStructureId, AccountsUnitId, AccountsDataId, CompanyID, CompanyDictionaryID, CompanyName, DebCompanyName, BankID, BankDictionaryID, BankName, DebBankName
select @StructureId, @UnitId, @DataId, @CompanyID, @CompanyDictionaryID, @BankID, @BankDictionaryID;

-- select * from managementreport.debcompanyandbank DCB where DCB.DebCompanyName = @DebCompanyName and DCB.DebBankName = @DebBankName;