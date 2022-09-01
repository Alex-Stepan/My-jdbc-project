select * from LOCATIONS;


-- how many departments we have?
select count(*) from DEPARTMENTS ;


-- how many different names we have?
select count( distinct FIRST_NAME) from EMPLOYEES;


-- how many employees are working as 'IT_PROG' or 'SA_REP'?
select count(*) from EMPLOYEES
    where JOB_ID in ('IT_PROG', 'SA_REP') ;

-- how many employees has department_id as NULL?
select count(*) from EMPLOYEES
    where  DEPARTMENT_ID is null ;


-- MAX --
-- display max salary from employees
select  max(SALARY) from EMPLOYEES;


-- MIN --
-- display min salary from employees
select  min(SALARY) from EMPLOYEES;


-- SUM --
-- display SUM salary from employees
select  sum(SALARY) from EMPLOYEES;


-- AVG --
-- display avg salary from employees
select  avg(SALARY) from EMPLOYEES;

-- display avg salary from employees
select  round(avg(SALARY), 2) from EMPLOYEES;