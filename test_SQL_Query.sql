SELECT * FROM managementreport.maindictionarystructure;
use managementreport
select * from managementreport.MainDocument;
select * from managementreport.MainDocumentStructure;

select * from managementreport.MainDocument MD;

select * from debcompanyandbank
SELECT * FROM managementreport.maindictionary order by unitid

select * from managementreport.MainDocument MDoc 
inner join managementreport.MainDocumentStructure MDocType on (MDoc.DocumentStructureID = MDocType.DocumentStructureId and MDoc.DocumentUnitId = MDocType.DocumentUnitId)
inner join managementreport.maindictionary MDict on (MDoc.DocumentOwnerStructureID = MDict.StructureId and MDict.UnitId = 1 and MDoc.DocumentOwnerId = MDict.DataId);

select * from AccumulationAndMovementRegister
-- DocumentId, DocumentOwnerStructureID, DocumentOwnerUnitId, DocumentOwnerId