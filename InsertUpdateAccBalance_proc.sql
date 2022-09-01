CREATE DEFINER=`root`@`%` PROCEDURE `InsertUpdateAccBalance`(
  DebDateOperaton timestamp
, DebCompanyName varchar(100)
, DebBankName varchar(100)
, DebSumOper decimal(10,2)

)
BEGIN
-- проверяем остаток, если совпдает, то ничего не делаем
-- select DebDateOperaton, DebCompanyName, DebBankName, DebSumOper, AMR.* 
select sum(xSum) from
(
select ifnull(sum(AMR.TransactionAmount),0) as xSum, 'Дебетовый оборот' as xValue
from managementreport.AccumulationAndMovementRegister AMR
inner join managementreport.debcompanyandbank DCB 
   on (DCB.DebCompanyName = DebCompanyName 
       and DCB.DebBankName = DebBankName
       and AMR.DebitStructureId = DCB.AccountsStructureId 
       and AMR.DebitUnitId = AccountsUnitId 
       and AMR.DebitDataId = DCB.AccountsDataId
       and AMR.DateOperation <= DebDateOperaton
   )
union all
select ifnull(sum(AMR.TransactionAmount),0) as xSum, 'Кредитовый оборот' as xValue 
from managementreport.AccumulationAndMovementRegister AMR
inner join managementreport.debcompanyandbank DCB 
   on (DCB.DebCompanyName = DebCompanyName 
       and DCB.DebBankName = DebBankName
       and AMR.CreditStructureId = DCB.AccountsStructureId 
       and AMR.CreditUnitId = AccountsUnitId 
       and AMR.CreditDataId = DCB.AccountsDataId
       and AMR.DateOperation <= DebDateOperaton
   )
   
) as xxSum;
   
   
   
END