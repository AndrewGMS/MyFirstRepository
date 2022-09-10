


set @SettlementBalanceDate = '2022-09-10';

call GetBanksCurrentBalances (@SettlementBalanceDate);

/*
set @StructureId = 4; -- int unsigned,
set @UnitId = 1; -- int unsigned,
set @DataId = 1 ; -- int unsigned) RETURNS decimal(10,2)

declare @CurrentBalanceDate timestamp;
set @CurrentBalanceDate = @SettlementBalanceDate;
select DCA.*, CurrenBalance.StructureId, CurrenBalance.UnitId, CurrenBalance.DataId, max(xDateOperation) as LastOperationDate, sum(xSum) as CurrenBalance, @CurrentBalanceDate as CurrentBalanceDate from
(
select MD.StructureId, MD.UnitId, MD.DataId, ifnull(max(AMR.DateOperation),0) as xDateOperation, ifnull(sum(AMR.TransactionAmount),0) as xSum, 'Дебетовый оборот' as xValue
from managementreport.AccumulationAndMovementRegister AMR
inner join managementreport.maindictionary MD on (AMR.DebitStructureId = MD.StructureId and AMR.DebitUnitId = MD.UnitId and AMR.DebitDataId = MD.DataId)
       where 
--       AMR.DebitStructureId = @StructureId and
--       AMR.DebitUnitId = @UnitId and
--       AMR.DebitDataId = @DataId and
       AMR.DateOperation <= @SettlementBalanceDate
       group by MD.StructureId, MD.UnitId, MD.DataId
       
union all
select MD.StructureId, MD.UnitId, MD.DataId, ifnull(max(AMR.DateOperation),0) as xDateOperation, ifnull(-sum(AMR.TransactionAmount),0) as xSum, 'Кредитовый оборот' as xValue 
from managementreport.AccumulationAndMovementRegister AMR
inner join managementreport.maindictionary MD on (AMR.CreditStructureId = MD.StructureId and AMR.CreditUnitId = MD.UnitId and AMR.CreditDataId = MD.DataId)
       where
--       AMR.CreditStructureId = @StructureId and 
--       AMR.CreditUnitId = @UnitId and 
--       AMR.CreditDataId = @DataId and 
       AMR.DateOperation <= @SettlementBalanceDate
       group by MD.StructureId, MD.UnitId, MD.DataId
   
) CurrenBalance
inner join debcompanyandbank DCA on (CurrenBalance.StructureId = DCA.AccountsStructureId and CurrenBalance.UnitId = DCA.AccountsUnitId and CurrenBalance.DataId = DCA.AccountsDataId)
group by CurrenBalance.StructureId, CurrenBalance.UnitId, CurrenBalance.DataId;

*/