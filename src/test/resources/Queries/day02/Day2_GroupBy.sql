select * from DEPARTMENTS ;

-- how many job ID we have?
select distinct JOB_ID from  EMPLOYEES;


-- display avg salary for 'IT_PROG'?
select avg(SALARY) from EMPLOYEES
    where  JOB_ID = 'IT_PROG';

-- display avg salary for 'SA_REP'?
select avg(SALARY) from EMPLOYEES
    where  JOB_ID = 'SA_REP';

-- display avg salary for 'MK_MAN'?
select avg(SALARY) from EMPLOYEES
    where  JOB_ID = 'MK_MAN';

select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID;


select JOB_ID, avg(SALARY), min(SALARY), max(SALARY), count(*) from EMPLOYEES
    group by JOB_ID ;

select DEPARTMENT_ID, count(*), sum(SALARY) from EMPLOYEES
    where DEPARTMENT_ID is not null
        group by DEPARTMENT_ID
            order by DEPARTMENT_ID;

-- how many departments we have in each location ?
select LOCATION_ID, count(*) from DEPARTMENTS
group by LOCATION_ID;


-- how many locations we have in each country ?
select COUNTRY_ID, count(*) from LOCATIONS
group by COUNTRY_ID
order by COUNTRY_ID asc ;

-- how many countries we have in each region ?
select REGION_ID, count(*) from COUNTRIES
group by REGION_ID
order by REGION_ID;

-- how many employees are working for each manager?
select  MANAGER_ID, count(*) from EMPLOYEES
    where MANAGER_ID is not null
        group by MANAGER_ID
        order by MANAGER_ID asc;
