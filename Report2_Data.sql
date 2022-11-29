SELECT 
    tsv.xDate
-- 
--  , UserId
  , tsv.Customer AS Customer 
  , concat('Н40', agt.xAgreement_Id) as AgreementID
  , tsv.ProjectName AS ProjectName
--  , tsv.ProjectId AS ProjectId
  , '-' AS ProjectStage
  , '-start-' AS ProjectStartDate
  , '-end-' AS ProjectEndDate
  , '100' AS ProjectStagePercent
  , sum(tsv.WorkHours + OverWorkHours) AS WorkHours
  , sum(tsv.WorkHours + OverWorkHours) AS WorkHoursPlanning
  , '-' AS WorkHoursPlanningFromStartProject
  , '-' AS WorkHoursActing
  , concat(bust.tId, '_', bust.tDescription) as xContractorId
  , concat(ptt.tId, '_', ptt.tDescription) as xPaymentsType 
  , ifnull(iis.xActDate, '-') as xActDate
  , ifnull(iis.xActNumber, '-') as xActNumber
  , ifnull(iis.xSum*1.2, '-') as xActSum
  , ifnull(iis.xSum, '-') as xActSum
  , '-' as xPayStatus
  , ifnull(iis.xPayDate, '-') as xActPayDate
  , iis.*
  
 -- , tsv.BeName AS BeName
 -- , tsv.CustomerName AS CustomerName
 -- , tsv.ProjectClass AS ProjectClass
 -- , tsv.ActivityClass AS ActivityClass
 -- , tsv.Customer AS Customer
 -- , tsv.PaymentModel AS PaymentModel
 -- , agt.xAgreement_Id AS AgreementID
 -- , agt.xCustomerAgrrementPMINN AS AgreementPMID
 -- , agt.xCustomerAgrrementPMName AS AgreementPMName
 -- , sum(tsv.WorkHours + OverWorkHours) AS WorkHours
  

 FROM brokenboeing.timesheetview tsv
 JOIN brokenboeing.agreementtable agt ON (tsv.xClientId LIKE agt.xClientId)
            AND (tsv.xProgramId LIKE agt.xProgramId)
            AND (tsv.xProjectId LIKE agt.xProjectId)
            AND (tsv.xWorkType LIKE agt.xWorkType)
            AND (tsv.xDate BETWEEN agt.xbDate AND agt.xeDate) 
 JOIN brokenboeing.bustructuretable bust ON (bust.tId = agt.xContractorId)
 JOIN brokenboeing.paymenttypetable ptt ON (ptt.tId = 1102)
 
 JOIN brokenboeing.issuedinvoices iis ON (iis.xClientId LIKE agt.xClientId)
            AND (iis.xProgramId LIKE agt.xProgramId)
            AND (iis.xProjectId LIKE agt.xProjectId)
            AND (iis.xDateOperation BETWEEN agt.xbDate AND agt.xeDate) 
  
 GROUP BY ProjectId, BeName, ProjectName, ProjectStartDate, ProjectEndDate, CustomerName, ProjectClass, ActivityClass, Customer, PaymentModel
 
 