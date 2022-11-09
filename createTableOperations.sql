/*
drop table managementreport.MainDocumentData;


create table managementreport.MainDocumentData (
DocumentStructureID int unsigned not null,
DocumentUnitId int unsigned,
DocumentId int unsigned not null,

DataSectionId int unsigned not null,
DataTableIndexId int unsigned not null,
DataRowNumberId int unsigned not null,
DataId int unsigned not null,

DataValueStructureId int unsigned,
DataValueUnitId int unsigned,
DataValueId int unsigned,
DataValue varchar(200),

Primary key (DocumentStructureID, DocumentUnitId, DocumentId, DataSectionId, DataTableIndexId, DataRowNumberId, DataId),
foreign key (DocumentStructureID, DocumentUnitId, DataSectionId, DataTableIndexId, DataId) 
        references managementreport.MainDocumentStructure (DocumentStructureID, DocumentUnitId, DataSectionId, DataTableIndexId, DataId) 

, foreign key (DocumentStructureID, DocumentUnitId, DocumentId) references managementreport.MainDocument (DocumentStructureID, DocumentUnitId, DocumentId)     
, foreign key (DataValueStructureId, DataValueUnitId, DataValueId) references managementreport.MainDictionary (StructureID, UnitId, DataId)
)*/
-- foreign key (DocumentStructureID, DocumentUnitId, DocumentId) references managementreport.MainDocument (DocumentStructureID, DocumentUnitId, DataSectionId)     
-- foreign key (DataValueStructureId, DataValueUnitId, DataValueId) references managementreport.MainDictionary (StructureID, UnitId, DataId)

-- alter table managementreport.MainDocumentStructure add primary key (DocumentStructureID, DocumentUnitId, DataSectionId, DataTableIndexId, DataId, DictionarytStructureId);

-- alter table managementreport.MainDocument add foreign  key (DocumentStructureID, DocumentUnitID) references managementreport.MainDocumentStructure (DocumentStructureID, DocumentUnitID);

-- alter table managementreport.MainDocument add foreign  key (DocumentOwnerStructureID, DocumentOwnerUnitId, DocumentOwnerId) references managementreport.MainDictionary (StructureID, UnitId, DataId);
-- 
-- alter table managementreport.accumulationandmovementregister add foreign key (DocumentStructureID, DocumentUnitID, DocumentID) references managementreport.MainDocument (DocumentStructureID, DocumentUnitID, DocumentID);



--  `DocumentStructureID`, `DocumentUnitId`, `DocumentTypeName`, `DataSectionId`, `DataTableIndexId`, `DataId`, `DataDefaultValue`, `DictionarytStructureId`

-- alter table managementreport.MainDocumentStructure add column DataSectionId int unsigned not null;
-- alter table managementreport.MainDocumentStructure add column DataTableIndexId int unsigned not null;
-- alter table managementreport.MainDocumentStructure add column DataId int unsigned not null;
-- alter table managementreport.MainDocumentStructure add column DataDefaultValue varchar(200);
-- alter table managementreport.MainDocumentStructure add column DictionarytStructureId int unsigned;


-- alter table managementreport.MainDocumentStructure DROP PRIMARY KEY;
-- alter table managementreport.MainDocumentStructure DROP FOREIGN KEY maindocument_ibfk_1;
-- alter table managementreport.MainDocument DROP FOREIGN KEY maindocument_ibfk_1;
-- alter table managementreport.AccumulationAndMovementRegister DROP FOREIGN KEY accumulationandmovementregister_ibfk_1;


-- create table AccumulationAndMovementRegister (
-- DateOperation timestamp,
-- use managementreport;
-- drop table managementreport.DocumentRegister;
/*

insert into managementreport.AccumulationAndMovementRegister (
 DateOperation, 
 DocumentStructureID,
 DocumentUnitId,
 DocumentId,
 
 DebitStructureId,
 DebitUnitId,
 DebitDataId,
 
 CreditStructureId,
 CreditUnitId,
 CreditDataId,
 
 TransactionQuantity,
 TransactionAmount,
 TransactionDescriptiom)
 values (
 '2022-07-31', -- DateOperation, 
 1, -- DocumentStructureID,
 0, -- DocumentUnitId,
 1, -- DocumentId,
 
 4, -- DebitStructureId,
 1, -- DebitUnitId,
 1, -- DebitDataId,
 
 0, -- CreditStructureId,
 0, -- CreditUnitId,
 0, -- CreditDataId,
 
 0, -- TransactionQuantity,
 1663737.92, -- TransactionAmount,
 'первая операция' -- TransactionDescriptiom
 
)



insert into managementreport.MainDocument (
DateOperation,
DateTimeLastModification,
DocumentStructureID,
DocumentUnitId,
DocumentId,
DocumentOwnerStructureID,
DocumentOwnerUnitId,
DocumentOwnerId,
DocumentValue)
values (
'2022-07-31',              -- DateOperation datetime,
current_timestamp(),-- DateTimeLastModification datetime,
1, -- DocumentStructureID int unsigned not null,
0, -- DocumentUnitId int unsigned,
1, -- DocumentId int unsigned not null,
2, -- DocumentOwnerStructureID int unsigned not null,
1, -- DocumentOwnerUnitId int unsigned,
1, -- DocumentOwnerId int unsigned not null,
'First transaction document' -- DocumentValue varchar(200)
)


 -- drop table AccumulationAndMovementRegister;
 
 create table AccumulationAndMovementRegister (
 DateOperation timestamp, 
 DocumentStructureID int unsigned not null,
 DocumentUnitId int unsigned,
 DocumentId int unsigned not null,
 
 DebitStructureId int unsigned,
 DebitUnitId int unsigned check(DebitUnitId =0),
 DebitDataId int unsigned,
 
 CreditStructureId int unsigned,
 CreditUnitId int unsigned check(CreditUnitId =0),
 CreditDataId int unsigned,
 
 TransactionQuantity decimal(10,4),
 TransactionAmount decimal(10,2),
 TransactionDescriptiom varchar(200)
 
 , foreign key (DocumentStructureID, DocumentUnitId, DocumentId) references managementreport.MainDocument (DocumentStructureID, DocumentUnitId, DocumentId)
 , foreign key (CreditStructureId, CreditUnitId, CreditDataId) references managementreport.MainDictionary (StructureId, UnitId, DataId)
 , foreign key (DebitStructureId, DebitUnitId, DebitDataId) references managementreport.MainDictionary (StructureId, UnitId, DataId)
 
 )
 



-- drop table managementreport.MainDocument;


create table managementreport.MainDocument (
DateOperation datetime,
DateTimeLastModification datetime,
DocumentStructureID int unsigned not null,
DocumentUnitId int unsigned,
DocumentId int unsigned not null,
DocumentOwnerStructureID int unsigned not null,
DocumentOwnerUnitId int unsigned,
DocumentOwnerId int unsigned not null,
DocumentValue varchar(200),
Primary key (DocumentStructureID, DocumentUnitId, DocumentId),
foreign key (DocumentStructureID, DocumentUnitId) references managementreport.MainDocumentStructure (DocumentStructureID, DocumentUnitId),
foreign key (DocumentOwnerStructureID, DocumentOwnerUnitId, DocumentOwnerId) references managementreport.MainDictionary (StructureId, UnitId, DataId)

)




insert into managementreport.MainDocumentStructure (DocumentStructureID, DocumentUnitId, DocumentTypeName) values (1, 0, 'Дебиторка. Ввод текущих остатков по расчетным счтам');


create table managementreport.MainDocumentStructure (
DocumentStructureID int unsigned not null,
DocumentUnitId int unsigned not null,
DocumentTypeName varchar(200),
Primary key (DocumentStructureID, DocumentUnitId)
)

 */