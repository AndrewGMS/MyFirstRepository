-- SELECT * FROM brokenboeing.timesheetconnectiontable where xClientId = 108 and xProgramId = 303;
-- SELECT * FROM brokenboeing.agreementtable where xClientId = 108 and xProgramId != 162;

-- SELECT distinct * FROM brokenboeing.timesheetview  where xClientId = 108 and xProgramId != 162;

-- update brokenboeing.timesheetconnectiontable set paymentmodeltable_Id = 701 where projectpropertytable_Id = 801;
-- select distinct xProgrammName, xProjectName, xProjectId from brokenboeing.timesheetex where xClientId = 108 and xProgramId != 162 order by xProjectName;


-- insert into brokenboeing.agreementtable (xbDate, xeDate, xAgreement_Id, xContractorId, xClientId, xProgramId, xProjectId, xWorkType, xCustomerName, xCustomerINN, xCustomerAgrrementNumber, xCustomerAgrrementBDate, xCustomerAgrrementEDate, xCustomerAgrrementBudgetSum, xCustomerAgrrementPMName, xCustomerAgrrementPMINN)
--  select xbDate, xeDate, xAgreement_Id, xContractorId, xClientId, xProgramId, xProjectId, xWorkType, xCustomerName, xCustomerINN, xCustomerAgrrementNumber, xCustomerAgrrementBDate, xCustomerAgrrementEDate, xCustomerAgrrementBudgetSum, xCustomerAgrrementPMName, xCustomerAgrrementPMINN
--  from brokenboeing.agreementtable where  xClientId = 115; -- and xAgreement_Id = 14 and xContractorId = 111 and xProgramId = 303 and xProjectId = '%'

-- insert into brokenboeing.timesheetconnectiontable(xbDate, xeDate, xClientId, xProgramId, xProjectId, xWorkType, bustructuretable_Id, xProjectResult_Id, projectpropertytable_Id, customertypetable_Id, projectphasetable_Id, typeofemploymenttable_Id, projectclasstable_Id, paymentmodeltable_Id, xInvoiceClientId, xInvoiceProgramId, xInvoiceProjectId) 
-- select xbDate, xeDate, xClientId, xProgramId, 5928 /*xProjectId*/, xWorkType, bustructuretable_Id, xProjectResult_Id, projectpropertytable_Id, customertypetable_Id, projectphasetable_Id, typeofemploymenttable_Id, projectclasstable_Id, paymentmodeltable_Id, xInvoiceClientId, xInvoiceProgramId, 5791 /*xInvoiceProjectId*/
-- FROM brokenboeing.timesheetconnectiontable where xClientId = 108 and xProgramId = 303 and xProjectId = '%';

-- select xbDate, xeDate, xClientId, xProgramId, xProjectId, xWorkType, bustructuretable_Id, xProjectResult_Id, projectpropertytable_Id, customertypetable_Id, projectphasetable_Id, typeofemploymenttable_Id, projectclasstable_Id, paymentmodeltable_Id, xInvoiceClientId, xInvoiceProgramId, xInvoiceProjectId
-- FROM brokenboeing.timesheetconnectiontable where xClientId = 115; -- and xProgramId = 303;

-- delete from brokenboeing.timesheetconnectiontable where xClientId = 108 and xProgramId = 303 and xProjectId = '%';
