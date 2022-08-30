-- create table AccumulationAndMovementRegister (
-- DateOperation timestamp,
-- use managementreport;
-- drop table managementreport.DocumentRegister;




/*

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