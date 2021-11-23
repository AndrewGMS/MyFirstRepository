set @ProjectId = 4;
set @ClientId = 5;
set @EmployeeId = null;
set @StartDate = '2021-09-01';
set @FinishDate = '2021-09-30';

select wr.Date, wr.EmployeeId, concat(e.lastname,' ',e.firstname) as eName, wr.ProjectId, p.projectname, p.ClientId, c.companyname, wr.Time, wr.OverWork 
from timesheetdb.work_records as wr
join timesheetdb.projects as p on p.id = wr.projectid and p.ClientId = coalesce(@ClientId, p.ClientId)
join timesheetdb.clients as c on c.id = p.clientid
join timesheetdb.employees as e on e.id = wr.employeeid
where !wr.isdeleted and wr.ProjectId = coalesce(@ProjectId, wr.ProjectId) and wr.EmployeeId = coalesce(@EmployeeId, wr.EmployeeId) and wr.Date between @StartDate and @FinishDate