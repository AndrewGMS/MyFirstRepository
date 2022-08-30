SELECT * FROM managementreport.maindictionarystructure;
use managementreport
select * from managementreport.MainDocument;
select * from managementreport.MainDocumentStructure;

select * from debcompanyandbank
SELECT * FROM managementreport.maindictionary order by unitid

select * from managementreport.MainDocument MDoc 
inner join managementreport.MainDocumentStructure MDocType on (MDoc.DocumentStructureID = MDocType.StructureId and MDoc.DocumentUnitId = MDocType.UnitId and MDoc.DocumentId = MDocType.DataId);
inner join managementreport.maindictionary MDict on (MDoc.DocumentStructureID = MDict.StructureId and MDoc.DocumentUnitId = MDict.UnitId and MDoc.DocumentId = MDict.DataId);


DocumentId, DocumentOwnerStructureID, DocumentOwnerUnitId, DocumentOwnerId