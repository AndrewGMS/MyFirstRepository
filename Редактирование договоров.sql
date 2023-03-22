-- select * from timesheetdb.clients order by CompanyName;

set @pMainCustomerId = 155;
set @pAgreementId =  'H555';
set @pAgreementProjectStr = ', 5441,'; 
-- H511, 2, 115, ООО "Артлоджик-СК", 2019-06-06, 06.06.2019, , 0, 1147, , 5441, 2442, 3670, 1863, 2622, 4718,

-- select * from accountingdb.agreements where customerName like '%лайн%';
-- SET SQL_SAFE_UPDATES = 0; delete from brokenboeing.issuedinvoices; SET SQL_SAFE_UPDATES = 1;  
-- update accountingdb.agreements set mainCustomerId = @pMainCustomerId where agreementId = @pAgreementId;
-- update accountingdb.agreements set customerName = 'АО "Софтлайн Трейд"' where agreementId = @pAgreementId;
-- update accountingdb.agreements set agreementProjectStr = ', 6041, 6022, 56, 4195, 3974, 6039, 6043, 6040, 1310, 12, 5251, 5117, 755,' where agreementId = 'H529';
-- update accountingdb.agreements set agreementProjectStr = @pAgreementProjectStr where agreementId = @pAgreementId;
-- update accountingdb.agreements set agreementAmId = 37 where agreementId = @pAgreementId;
/*
insert into accountingdb.agreements (agreementId, legalEntitiesId, mainCustomerId, customerName, agreementNumber, agreementDate, agreementDateEnd, agreementBudget, agreementAmId, agreementProjectStr) 
values ('H555', '2', 204, 'Филиппины', '-', '-', '', '0', 38, ', 5946, 5987,');

6025, 6055, 6030, 5954, 5980
3818, 3819, 3820, 3821, 3822, 3823, 3824,



*/