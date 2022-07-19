select * from EMPLOYEES;

--Display job_id where their avg salary is more than 5k
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES
              group by JOB_ID
having avg(SALARY)>5000
order by avg(SALARY) desc
;


--select departmentID where employees count bigger than 5
select  DEPARTMENT_ID, count (*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5
order by count(*);

-- display duplicate first_names from Employees table
select FIRST_NAME, count (*) from EMPLOYEES
group by FIRST_NAME
having count (*) >1
order by FIRST_NAME;