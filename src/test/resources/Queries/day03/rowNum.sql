select * from EMPLOYEES;

--display all info who is getting first 5 highest salary

select * from EMPLOYEES
where rownum<6
order by SALARY desc;

select * from (select * from EMPLOYEES  order by SALARY desc)
where rownum<6
;


--display  who is getting the 5th highest salary
select min(SALARY)  from (select distinct SALARY from EMPLOYEES  order by SALARY desc)
where rownum<6
;


--display  who is getting the 15th highest salary
select min(SALARY)  from (select distinct SALARY from EMPLOYEES  order by SALARY desc)
where rownum<16
;


--display ALL who is getting the 15th highest salary
select * from EMPLOYEES
where SALARY = (select min(SALARY)  from (
                            select distinct SALARY from EMPLOYEES
                            order by SALARY desc)
                where rownum<6
                );