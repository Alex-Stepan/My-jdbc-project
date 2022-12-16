select * from EMPLOYEES;


create view EmployeesInfo as
select
    substr(FIRST_NAME, 1, 1) || '.' || substr(LAST_NAME, 1, 1) || '.'   as initials ,
    FIRST_NAME || ' makes $' || SALARY   as Employee_Salary
from EMPLOYEES;

-- S.K. Steven King makes$24000
select * from EmployeesInfo;

drop view EmployeesInfo;