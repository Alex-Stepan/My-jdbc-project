/*
 we will use keyword WHERE to filter results
 */


 -- get firstname, last name, salary from Employees, where first name is David
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Lee';


-- get info about employee who is making salary more then 6000
select * from EMPLOYEES   where SALARY > 6000;


-- get info about employee who is making salary less and equal then 6000
select  * from EMPLOYEES  where SALARY<=6000;

--get first name and last name from employees where salary is more then 6000 and where department id = 80
select FIRST_NAME, LAST_NAME from EMPLOYEES
where SALARY>6000 and DEPARTMENT_ID=80;


--get first name and last name from employees where salary is more and equal 3000 and  salary is less then 6000
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY>=3000 and SALARY<=6000;

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY between  3000 and 6000;


-- get info from employees who is IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='SA_REP';

select * from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

select * from EMPLOYEES
where JOB_ID not in ('IT_PROG', 'SA_REP');


select * from LOCATIONS
where CITY in ('Roma', 'Tokyo');


select * from EMPLOYEES
where EMPLOYEE_ID in (113, 145, 124, 122);


--NULL  not Null
select * from EMPLOYEES
where DEPARTMENT_ID is null ;

select * from EMPLOYEES
where DEPARTMENT_ID is NOT null ;