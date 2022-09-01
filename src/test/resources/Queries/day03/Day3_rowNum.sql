select * from EMPLOYEES;


-- display the first 5 highest salary

select * from EMPLOYEES
    where ROWNUM < 6
    order by SALARY desc ; -- WRONG

select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 6 ;  -- CORRECT

-- display all info who is receiving the 5th highest salary
select min(SALARY) from  ( select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 6 ;

select min(SALARY) from  ( select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 16 ;

select min(SALARY) from  ( select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 3 ;