set @xBDate = '2022-08-01';
set @xEDate = '2022-08-31';

select * from work_records wr where wr.Date between @xBDate and @xEDate;