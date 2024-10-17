SELECT * FROM accountingdb.costofserviceslockdate;
SET SQL_SAFE_UPDATES = 0; 
update accountingdb.costofserviceslockdate set lockDate = '2024-08-31';
SET SQL_SAFE_UPDATES = 1;