select *from EMPLOYEES;


--How many different job-id we have?
select distinct JOB_ID from EMPLOYEES;

--Display average salary for 'IT_PROG'
select avg(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

--Display average salary for 'SA_REP'
select avg(SALARY) from EMPLOYEES
where JOB_ID='SA_REP';

--Display average salary for 'MK_MAN'
select avg(SALARY) from EMPLOYEES
where JOB_ID='MK_MAN';


select JOB_ID, avg(SALARY), min(SALARY), sum(salary), count(*) from EMPLOYEES
group by JOB_ID;

-- get sum(salary) each department in Employees table
select DEPARTMENT_ID, sum( SALARY), count (*), min(SALARY) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID;


-- get how many departments we have in each location
select LOCATION_ID, count(*) from DEPARTMENTS
group by LOCATION_ID
;

--get me locations we have in each country
select COUNTRY_ID, count (*) from LOCATIONS
group by COUNTRY_ID
order by COUNTRY_ID asc;

--how many countries we have in each region
select  REGION_ID, count (*) from COUNTRIES
group by REGION_ID
order by REGION_ID asc;


-- how many employees are working for each manager
select MANAGER_ID, count (*) from EMPLOYEES
where MANAGER_ID is not null  and MANAGER_ID>5
group by  MANAGER_ID
;