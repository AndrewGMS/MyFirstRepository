-- create table AccumulationAndMovementRegister (
-- DateOperation timestamp,
-- use managementreport;
-- drop table managementreport.DocumentRegister;
create table managementreport.DocumentRegister (
DateOperation datetime,
DateTimeLastModification datetime,
DocumentStructureID int unsigned not null,
DocumentId int unsigned not null,
DocumentUnitId int unsigned not null check(DocumentUnitId = 0),
DocumentName varchar(200)
, foreign key (DocumentStructureID) references managementreport.maindictionarystructure (StructureId)
, foreign key (DocumentStructureID, DocumentUnitId, DocumentId) references managementreport.maindictionary (StructureId, UnitId, DataId)
)
 