-- SELECT * FROM brokenboeing.timesheetview;

set @BDate = concat('2022-08-01',' 00:00:00');
set @EDate = concat('2022-08-31',' 23:59:59');
set @xStageProject = 'Август 2022г.';

SELECT @EDate as Period
  , agt.xAgreement_Id 
  , bust.tDescription
  , agt.xCustomerAgrrementNumber
  , agt.xCustomerAgrrementBDate
  , agt.xCustomerAgrrementEDate
  , xCustomerAgrrementBudgetSum
  , xCustomerAgrrementPMINN
  , xCustomerAgrrementPMName
  , sum(xTimeSheetWorkHours + xTimeSheetOverWorkHours) as xTimeSheetWorkHours
  
  , bust.* , agt.*, tsex.* 
  FROM brokenboeing.timesheetex tsex
        JOIN brokenboeing.agreementtable agt ON (tsex.xClientId LIKE agt.xClientId)
            AND (tsex.xProgramId LIKE agt.xProgramId)
            AND (tsex.xProjectId LIKE agt.xProjectId)
            AND (tsex.xWorkType LIKE agt.xWorkType)
            AND (@EDate BETWEEN agt.xbDate AND agt.xeDate)        
            AND (tsex.xDate BETWEEN @BDate AND @EDate)    
            join brokenboeing.bustructuretable bust on (bust.tId = agt.xContractorId)
          
group by agt.xClientId, agt.xProgramId;