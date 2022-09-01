select * from EMPLOYEES;

/*
 SUBQUERY -

 */

 -- display all info from employees who is making the highest salary in company

select max(SALARY) from EMPLOYEES; --24k

select * from EMPLOYEES
    where SALARY = (select max(SALARY) from EMPLOYEES) ; --dynamic


-- display all info about the person who is making the 2nd highest salary

    -- find max salary
        select max(SALARY) from EMPLOYEES;

    -- find second max salary
        select max(SALARY) from EMPLOYEES
        where SALARY <  24000;

    -- make it dynamic
        select max(SALARY) from EMPLOYEES
        where SALARY <  (select max(SALARY) from EMPLOYEES);

    -- find info about second highest salary
        select * from EMPLOYEES
            where SALARY = (
                            select max(SALARY) from EMPLOYEES
                            where SALARY <  (select max(SALARY) from EMPLOYEES)
                            ) ;


-- display all info about who is getting more than avg salary
select  * from EMPLOYEES
    where SALARY > ( select round( avg(salary), 2 ) from EMPLOYEES ) ;

select * from EMPLOYEES                                                                                     --
    where  SALARY = ( select min(SALARY) from                                                               -- select min options
                                             ( select distinct SALARY from EMPLOYEES order by SALARY desc ) -- select min salary
                        where rownum < 6                                                                    -- put limits
                    )

