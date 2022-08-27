-- select * from managementreport.maindictionary where StructureId = 2 order by DataId;
-- select * from managementreport.maindictionarystructure where StructureId = 4;


-- delete from managementreport.maindictionary where StructureId = 4
select * from managementreport.debcompanyandbank order by CompanyName;

select Accounts.DataValue as AccountName
, Accounts.StructureId as AccountsStructureId
, Accounts.UnitId as AccountsUnitId
, Accounts.DataId as AccountsDataId
, Company.DataValue as CompanyID
, CompanyStructure.DictionaryId as CompanyDictionaryID
, CompanyName.DataValue as CompanyName
, DebCompanyName.DataValue as DebCompanyName
, Bank.DataValue as BankID
, BankStructure.DictionaryId as BankDictionaryID
, BankName.DataValue as BankName
, DebBankName.DataValue as DebBankName
 from managementreport.maindictionary as Accounts 
 inner join managementreport.maindictionary as Company on (Company.StructureId = Accounts.StructureId and Company.DataId = Accounts.DataId and Company.UnitId = 4)
 inner join managementreport.maindictionarystructure as CompanyStructure on (Company.StructureId = CompanyStructure.StructureId and Company.UnitId = CompanyStructure.UnitId)
 inner join managementreport.maindictionary as CompanyName on (CompanyName.StructureId = CompanyStructure.DictionaryId and CompanyName.DataId = Company.DataValue and CompanyName.UnitId = 1)
 inner join managementreport.maindictionary as DebCompanyName on (DebCompanyName.StructureId = CompanyStructure.DictionaryId and DebCompanyName.DataId = Company.DataValue and DebCompanyName.UnitId = 3)
  
 inner join managementreport.maindictionary as Bank on (Bank.StructureId = Accounts.StructureId and Bank.DataId = Accounts.DataId and Bank.UnitId = 5)
 inner join managementreport.maindictionarystructure as BankStructure on (Bank.StructureId = BankStructure.StructureId and Bank.UnitId = BankStructure.UnitId)
 inner join managementreport.maindictionary as BankName on (BankName.StructureId = BankStructure.DictionaryId and BankName.DataId = Bank.DataValue and BankName.UnitId = 1)
 inner join managementreport.maindictionary as DebBankName on (DebBankName.StructureId = BankStructure.DictionaryId and DebBankName.DataId = Bank.DataValue and DebBankName.UnitId = 3)
 
 
 
 
 
 where Accounts.StructureId = 4 and Accounts.UnitId = 1 order by Accounts.DataId