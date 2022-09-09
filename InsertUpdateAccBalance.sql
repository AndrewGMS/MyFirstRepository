/*
Set @DebDateOperaton = '2022-08-01';
Set @DebCompanyName = 'ММТР';
Set @DebBankName = 'ВТБ';
Set @DebSumOper = 1663737.92;
*/
-- select * from managementreport.debcompanyandbank
-- select * from managementreport.maindictionary

Set @DebDateOperaton = '2022-01-23';
Set @DebCompanyName = 'ММТР';
Set @DebBankName = 'ВТБКарта';
Set @DebSumOper = 93645.51;


call InsertUpdateAccBalance(@DebDateOperaton, @DebCompanyName, @DebBankName, @DebSumOper);

select SettlementBalance(@DebDateOperaton, 4, 1, 1);
-- select date_sub(@DebDateOperaton, interval 1 day)

/*
select SettlementBalance(@DebDateOperaton, 4, 1, 1)

Set @TestData = (select count(AccountName) from managementreport.debcompanyandbank DCB where DCB.DebCompanyName = @DebCompanyName and DCB.DebBankName = @DebBankName);

select * from managementreport.debcompanyandbank DCB where DCB.DebCompanyName = @DebCompanyName and DCB.DebBankName = @DebBankName


select ifnull(sum(AMR.TransactionAmount),0) as xSum, 'Дебетовый оборот' as xValue
from managementreport.AccumulationAndMovementRegister AMR
       where AMR.DebitStructureId = 4
       and AMR.DebitUnitId = 1
       and AMR.DebitDataId = 1
       and AMR.DateOperation <= @DebDateOperaton
union all
select ifnull(-sum(AMR.TransactionAmount),0) as xSum, 'Кредитовый оборот' as xValue 
from managementreport.AccumulationAndMovementRegister AMR
where AMR.DebitStructureId = 4 
       and AMR.DebitUnitId = 1
       and AMR.DebitDataId = 1
       and AMR.DateOperation <= @DebDateOperaton


if (@TestData = 0)
then

select @TestData
else 

select @TestData+100

end if;



-- select if (@TestData = 0, @TestData, @TestData)



select @TestData, AccountName from managementreport.debcompanyandbank DCB ,

select @TestData, AccountName from managementreport.debcompanyandbank DCB
)

select @TestData
*/

