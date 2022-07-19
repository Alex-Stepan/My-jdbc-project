select * from EMPLOYEES;

-- get me all info from employees who is making low salary to high
select * from EMPLOYEES
order by SALARY asc ;

-- get me all info from employees who is making high salary to low
select * from EMPLOYEES
order by SALARY desc ;


-- How we can use index to sort data? (order by index for column 8)
--      Index means how many columns
select * from EMPLOYEES
order by  8 ;

select email, FIRST_NAME from EMPLOYEES
order by 2;

-- get me all info where employee_id < 120
-- and order them based alphabetical order
select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by  FIRST_NAME asc;


--IQ --> get all data from employees based on first name asc and last name desc
select * from EMPLOYEES
order by FIRST_NAME , LAST_NAME desc ;
