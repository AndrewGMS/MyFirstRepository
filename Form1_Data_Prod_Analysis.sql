-- call brokenboeing.Form1_Data('2022-08-01', '2022-08-31');


-- select concat('call brokenboeing.AddToConnectionTable(', tsex.xClientId, ', ', xProgramId,' , ''%'', ''%'', 0  , 801 , 301 , 902 , 1001 , 601, 0 );') from brokenboeing.timesheetex tsex
select  tsex.* from brokenboeing.timesheetex tsex
where xClientId != 5 
-- and not (xClientId = 4 and xProgramId like '%' and xProjectId  like '%' ) -- MЭШ
-- and not (xClientId = 4 and xProgramId like '319' and xProjectId  like '%' ) -- MЭШ
-- and not (xClientId = 4 and xProgramId like '20' and xProjectId  like '%' ) -- ЕМИАС 

/*
and not (xClientId = 5 and xProgramId = 241 and xProjectId = 4040  ) -- Camunda      

*/

-- group by xClientId, xProgramId -- , xProjectId


call getTSData('2022-08-01', '2022-08-31', 'Август 200022г.');

