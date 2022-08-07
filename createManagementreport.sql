
create table managementreport.companies (
id INT NOT NULL AUTO_INCREMENT,
nameCompany varchar(255) not null,
isDelete int default 0,
primary key(id))

select * from managementreport.companies

insert into managementreport.companies set nameCompany = "ММТР"
insert into managementreport.companies set nameCompany = "ММТР технологии"
insert into managementreport.companies set nameCompany = "ДА"
insert into managementreport.companies set nameCompany = "СофтЭкспорт"

