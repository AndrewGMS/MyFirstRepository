call getDocumentSection(3, 0, 555, '-', '-');



/*
set @pDocumentStructureID= 3;
set @pDataSectionId =  0;
set @pDocumentId =  555;


select 
 mds.DocumentStructureID
 , mds.DataSectionId
 , mds.DataTableIndexId
 , mds.DataId
 , mds.DataDefaultValue
 , mds.DictionarytStructureId
 , mds.DocumentUnitName
 , mds.DocumentUnitCaption
 , ifnull(mdd.DocumentId, @pDocumentId) 
 , ifnull(mdd.DataValue, mds.DataDefaultValue)
 from managementreport.maindocumentstructure mds 
 left join managementreport.maindocumentdata mdd 
      on mdd.DocumentStructureID = mds.DocumentStructureID 
         and mdd.DataSectionId = mds.DataSectionId
         and mdd.DataId = mds.DataId 
         and mdd.DocumentId = @pDocumentId
      
 where mds.DocumentStructureID = @pDocumentStructureID
   and mds.DataSectionId = @pDataSectionId
 ;
 
 */