-- select * from timesheetdb.clients order by CompanyName;

set @pMainCustomerId = 179;
set @pAgreementId =  'H536';
set @pAgreementProjectStr = ', 5550,';

-- select * from accountingdb.agreements where mainCustomerId = 0 and customerName like '%ски%';
-- SET SQL_SAFE_UPDATES = 0; delete from brokenboeing.issuedinvoices; SET SQL_SAFE_UPDATES = 1;  
update accountingdb.agreements set mainCustomerId = @pMainCustomerId where agreementId = @pAgreementId;
-- update accountingdb.agreements set agreementProjectStr = ', 6041, 6022, 56, 4195, 3974, 6039, 6043, 6040, 1310, 12, 5251, 5117, 755,' where agreementId = 'H529';
update accountingdb.agreements set agreementProjectStr = @pAgreementProjectStr where agreementId = @pAgreementId;

/*
insert into accountingdb.agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId, agreementProjectStr) 
values ('H551', '1', 13, 'Софтлайн', '-', '-', '', '0', 37, ', 5681, 6032,');

6025, 6055, 6030, 5954, 5980
3818, 3819, 3820, 3821, 3822, 3823, 3824,



*/