SELECT mdd.*, mds.DocumentUnitName, mds.DocumentUnitCaption FROM managementreport.maindocumentdata mdd
inner join managementreport.maindocumentstructure mds 
      on (mdd.DocumentStructureID = mds.DocumentStructureID 
          and mdd.DocumentUnitId = mds.DocumentUnitId
          and mdd.DataSectionId = mds.DataSectionId
          and mdd.DataTableIndexId = mds.DataTableIndexId
--          and mdd.DataRowNumberId = mds.DataRowNumberId
          and mdd.DataId = mds.DataId
          ) 
where DocumentId = 555