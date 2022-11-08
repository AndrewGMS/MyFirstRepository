/*
use managementreport;
select * from maindocument;
select * from maindocumentstructure;

call getdocumenttypes('','');

select * 
from managementreport.maindocumentstructure as mds 
*/
call getDocumentsOfTypeOverPeriod ('1970-01-02','2022-11-30',1,'-','-');