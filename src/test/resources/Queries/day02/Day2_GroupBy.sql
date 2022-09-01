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
