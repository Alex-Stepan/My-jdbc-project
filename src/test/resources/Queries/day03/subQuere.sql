select * from EMPLOYEES;

/*
 SUBQUERY

    - Query inside Query
    - Inner queries will run first
 */

 -- Dispaly all info from employeed who is making  highest salary in the company

select max(SALARY) from EMPLOYEES;

select * from EMPLOYEES
where salary = 24000;

select * from EMPLOYEES
where  SALARY = (select max(SALARY) from EMPLOYEES);


--display info who is making second highest salary

    --find max salary
    select max(SALARY) from EMPLOYEES;
    --find second max salary
    select max(SALARY) from EMPLOYEES
    where  SALARY <24000;

    select max(SALARY) from EMPLOYEES
    where  SALARY <(select max(SALARY) from EMPLOYEES);

    --find info who is making second highest salary
    select * from EMPLOYEES
    where SALARY = 17000;

-- SECOND HIGHEST SALARY
            select * from EMPLOYEES
            where SALARY = (select max(SALARY) from EMPLOYEES
                            where SALARY <  (select max(SALARY) from EMPLOYEES)
                            );


--display all info about who is getting more than average salary
select * from EMPLOYEES
where SALARY > 6462;

select avg(salary) from EMPLOYEES
;

select * from EMPLOYEES
where SALARY > (
                select round( avg(SALARY)) from EMPLOYEES
                );