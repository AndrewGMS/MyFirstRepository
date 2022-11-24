SELECT 
    tsv.xDate
-- 
--  , UserId
  , tsv.ProjectId AS ProjectId
  , tsv.BeName AS BeName
  , tsv.ProjectName AS ProjectName
  , '-start-' AS ProjectStartDate
  , '-end-' AS ProjectEndDate
  , tsv.CustomerName AS CustomerName
  , tsv.ProjectClass AS ProjectClass
  , tsv.ActivityClass AS ActivityClass
  , tsv.Customer AS Customer
  , tsv.PaymentModel AS PaymentModel
  , agt.xAgreement_Id AS AgreementID
  , agt.xCustomerAgrrementPMINN AS AgreementPMID
  , agt.xCustomerAgrrementPMName AS AgreementPMName
  , sum(tsv.WorkHours + OverWorkHours) AS WorkHours
  

 FROM brokenboeing.timesheetview tsv
 JOIN brokenboeing.agreementtable agt ON (tsv.xClientId LIKE agt.xClientId)
            AND (tsv.xProgramId LIKE agt.xProgramId)
            AND (tsv.xProjectId LIKE agt.xProjectId)
            AND (tsv.xWorkType LIKE agt.xWorkType)
            AND (pEdate BETWEEN agt.xbDate AND agt.xeDate) 
 
 GROUP BY xDate, ProjectId, BeName, ProjectName, ProjectStartDate, ProjectEndDate, CustomerName, ProjectClass, ActivityClass, Customer, PaymentModel