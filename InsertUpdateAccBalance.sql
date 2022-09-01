
Set @DebDateOperaton = '2022-08-01';
Set @DebCompanyName = 'ММТР';
Set @DebBankName = 'ВТБ';
Set @DebSumOper = 1663737.92;

call InsertUpdateAccBalance(@DebDateOperaton, @DebCompanyName, @DebBankName, @DebSumOper);

Set @TestData = (select count(AccountName) from managementreport.debcompanyandbank DCB where DCB.DebCompanyName = @DebCompanyName and DCB.DebBankName = @DebBankName);

if @TestData = 0
then

-- select @TestData
else 

-- select @TestData+100

end if;



-- select if (@TestData = 0, @TestData, @TestData)


/*
select @TestData, AccountName from managementreport.debcompanyandbank DCB ,

select @TestData, AccountName from managementreport.debcompanyandbank DCB
)

select @TestData
*/

