-- alter database brokenboeing;


call IssuedInvoices(
  '20000000000Август2022'
, '20000000000	1'
, 'Выставить счет клиенту "Аплана.Международные проекты" за проект "MSM EACQ Migration" период 01.08.2022 - 31.08.2022'
, 460000.00
, 'Закрыто'
, 'Ключников Андрей'
, 'Аплана.Международные проекты	Тинькофф банк	MSM EACQ Migration'
, '2022-08-01'
, 'inv2242'
, '2022-10-11 13:00:00'
)



/*
create table brokenboeing.IssuedInvoices (
 
   xExtendedID varchar(200) -- ExtendedID
 , xID varchar(200) -- ID
 , xNumber varchar(200) -- №	
 , xCaption varchar(200) -- Заголовок	
 , xSum  decimal(10,2) -- Сумма	
 , xStatus varchar(200) -- Статус	
 , xResponsiblePerson varchar(200) -- Ответственный	
 , xClient  varchar(200) -- Клиент	
 , xProgramm  varchar(200) -- Программа	
 , xProject varchar(200) -- Проект	
 , xDateOperation timestamp -- Дата
 , xInvoiceId  varchar(200) -- InvoiceId 
 , xDateModified timestamp -- дата время внесения изменений
 
 )
 
 */