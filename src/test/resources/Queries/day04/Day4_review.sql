select * from EMPLOYEES ;



-- find the 3th maximum salary from employees table (do not include duplicates)
    -- sort desc, cut the row, use min from the list
select * from EMPLOYEES
    where SALARY = (select min(SALARY) from (   select distinct salary from EMPLOYEES order by SALARY desc  )
                        where ROWNUM < 4
                    );

select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum<4;
select * from EMPLOYEES
    where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum<4);







-- find the 3th minimum salary from employees table (do not include
    -- sort in asc order --> cut list  from line 4 --> get mas salary from 3 remaining
select * from EMPLOYEES
    where  SALARY = (select max(SALARY)
                     from (select distinct SALARY from EMPLOYEES order by SALARY asc)
                     where ROWNUM < 4)
;

select * from EMPLOYEES
    where salary = (select max(salary) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where rownum <4)
;


-- Ho to get info about 3rd min employee
select * from EMPLOYEES
where salary = (
                select max( salary) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
                where rownum < 4
    );
