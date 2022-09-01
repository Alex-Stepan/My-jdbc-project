select * from LOCATIONS;

-- display jobs-id where avg salary > 5000
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES
    group by JOB_ID
        having avg(SALARY)>5000
        order by avg(SALARY) asc;


-- display departments-id where employees count > 5
select DEPARTMENT_ID, count(*) from EMPLOYEES
    group by DEPARTMENT_ID
        having count(*) > 5
        order by DEPARTMENT_ID;


-- display duplicate names from employee table
select FIRST_NAME, count(*) from EMPLOYEES
    group by FIRST_NAME
        having count(FIRST_NAME)>1
        order by FIRST_NAME asc;
