select  * from  LOCATIONS;

/*
 MULTI-ROW / AGGREGATE / GROUPING FUNC
 count
 max
 min
 avg
 sum

 it will take multiple row and gives single output
 */

--How many departments we have?
select count (*) from DEPARTMENTS;

-- How many different name we have?
select count (distinct FIRST_NAME) from EMPLOYEES;

--how many employees we have works as IT_prog or "SA_REP
select count(*) from EMPLOYEES
where JOB_ID IN ('IT_PROG' , 'SA_REP');


--How many employees we have as department_id is null
select count (*) from EMPLOYEES
where DEPARTMENT_ID is null ;

select count (DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null ;


--How many employees we have as department_id is NOT null
select count (*) from EMPLOYEES
where DEPARTMENT_ID is not null ;

select count (DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null ;


-- MAX
-- get max salary from Employees
select max(SALARY) from EMPLOYEES;


-- MIN
-- get min salary from Employees
select min(SALARY) from EMPLOYEES;


-- SUM
--get total salary of employees
select sum(SALARY) from Employees;


--AVG
select  avg (SALARY) from  EMPLOYEES;

--ROUND-->
select round (avg(SALARY)) from EMPLOYEES;

select round (avg(SALARY), 1) from EMPLOYEES;
select round (avg(SALARY), 2) from EMPLOYEES;
select round (avg(SALARY), 3) from EMPLOYEES;

