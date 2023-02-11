drop table vacation_details;
drop table Emp_details;

create table Emp_details (
EmployeeId int not null primary key,
Department	varchar(255) not null,
EmployeeName varchar(255) not null 
);

create table vacation_details (
EmployeeId int not null,
VacationYear year not null default 2000,
VacationDays int not null,
CONSTRAINT empYr PRIMARY KEY (EmployeeId,VacationYear)
);

INSERT INTO Emp_details VALUES
(12,'Sales','Luke Ye'),
(13,'Marketing','Mark Brown'),
(14,'Management','John Smith'),
(15,'Marketing','Mark Brown'),
(16,'Engineering','James Tevlin'),
(17,'HR','Ross Becker');

INSERT INTO vacation_details VALUES
(12,2011,6),
(12,2012,1),
(12,2013,2),
(13,2012,7),
(14,2011,13),
(15,2013,8),
(15,2014,2),
(16,2011,4),
(16,2012,3),
(17,2012,4),
(17,2013,2);


select * from Emp_details;
select * from vacation_details;
select a.EmployeeId,a.EmployeeName,a.Department,b.VacationYear,b.VacationDays  
from Emp_details as a inner join vacation_details as b on a.EmployeeId=b.EmployeeId
order by a.EmployeeName , b.VacationYear; 


