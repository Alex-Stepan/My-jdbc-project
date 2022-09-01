select * from EMPLOYEES;


-- display all info for the employees who is making salary low to high
select * from EMPLOYEES
order by SALARY asc ;

-- display all info for the employees who is making salary high to low
select * from EMPLOYEES
order by SALARY desc ;

-- display data  and sort by index of the column
select * from EMPLOYEES
order by 2 ;


-- display all info where employee-id < 120, and order them in alphabetical order
select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by LAST_NAME ;


-- display all info based on first name asc and last name desc
select * from EMPLOYEES
order by FIRST_NAME asc, LAST_NAME desc
;

