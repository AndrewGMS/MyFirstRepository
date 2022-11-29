set @xBDate = '2022-08-01';
set @xEDate = '2022-08-31';

SELECT 
--    tsv.xDate

  @xEDate as xDate
, agt.xbDate
, agt.xeDate
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
  , sum(tsv.Cost) AS WorkHoursPlanningFromStart
  , concat(bust.tId, '_', bust.tDescription) as xContractorId
  , concat(ptt.tId, '_', ptt.tDescription) as xPaymentsType 
  , ifnull(iis.xActDate, '-') as xActDate
  , ifnull(iis.xActNumber, '-') as xActNumber
  , ifnull(iis.xSum, 0) as xActSum
  , ifnull(iis.xSum, 0) as xActSum
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
 JOIN brokenboeing.agreementtable agt ON ((tsv.xClientId LIKE agt.xClientId)
            AND (tsv.xProgramId LIKE agt.xProgramId)
            AND (tsv.xProjectId LIKE agt.xProjectId)
            AND (tsv.xWorkType LIKE agt.xWorkType)
            AND (tsv.xDate BETWEEN agt.xbDate AND agt.xeDate)
            AND (tsv.xDate BETWEEN @xBDate AND @xEDate)
            AND (@xEDate BETWEEN agt.xbDate AND agt.xeDate)
            AND (tsv.xClientId = 115))
 JOIN brokenboeing.bustructuretable bust ON (bust.tId = agt.xContractorId)
 JOIN brokenboeing.paymenttypetable ptt ON (ptt.tId = 1102)
 
 JOIN brokenboeing.issuedinvoices iis ON ((iis.xClientId LIKE tsv.xInvoiceClientId)
            AND (iis.xProgramId LIKE tsv.xInvoiceProgramId)
            AND (iis.xProjectId LIKE tsv.xInvoiceProjectId)
            AND (iis.xDateOperation BETWEEN agt.xbDate AND agt.xeDate))
 -- GROUP BY AgreementID
 
 -- GROUP BY ProjectId, BeName, ProjectStartDate, ProjectEndDate, CustomerName, ProjectClass, ActivityClass, Customer, PaymentModel
 GROUP BY 
   -- xDate
   -- ,
   xbDate, xeDate
 ,  Customer, AgreementID, ProjectName
 , ProjectStage, ProjectStartDate, ProjectEndDate, ProjectStagePercent
 -- , WorkHours
 -- , WorkHoursPlanning
 , WorkHoursPlanningFromStartProject
 , WorkHoursActing
 -- , WorkHoursPlanningFromStart
 , xContractorId, xPaymentsType, xActDate, xActNumber, xActSum, xActSum, xPayStatus, xActPayDate
 -- , xExtendedID, xID, xNumber, xCaption, xSum, xStatus, xResponsiblePerson, xClient, xProgramm, xProject, xDateOperation, xInvoiceId, xClientId, xProgramId, xProjectId, xDateModified, xPayDate, xActDate, xActNumber
 ORDER BY tsv.Customer
 ;
 

