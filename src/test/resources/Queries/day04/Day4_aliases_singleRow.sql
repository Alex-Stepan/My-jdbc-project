select * from EMPLOYEES ;

/*
 ALIASES
 */


-- Rename column --> Give a temporary name for column
select  distinct FIRST_NAME as Given_name from EMPLOYEES
order by FIRST_NAME ASC;

select max(SALARY) as highest_salary from EMPLOYEES ;


select  distinct FIRST_NAME as Given_name from EMPLOYEES ;

select  distinct FIRST_NAME as "given_name" from EMPLOYEES ;


/*
-- CONCAT

In Java --> +   --> firstname + " " + lastname
In SQL  --> ||  --> firstname || ' ' || lastname

 */


 -- add email to @gmail.com domain, and display as a full_email
select * from EMPLOYEES ;

        -->SKING@gmail.com  --> column name is full_email
        select EMAIL || '@gmail.com'  as full_email     from EMPLOYEES ;

        select concat(EMAIL, '@gmail.com') as full_email from EMPLOYEES;


--LOWER
select lower(concat(EMAIL, '@gmail.com') ) as full_email from EMPLOYEES;

-- UPPER
select upper(concat(EMAIL, '@gmail.com') ) as full_email from EMPLOYEES;


/*
 INITCAP
 -- it makes first letter upper case
 */
select email from EMPLOYEES;
select initcap(email) from EMPLOYEES;


/*
 LENGTH
 -- it will provide length of the word
 */
 select length(email) from EMPLOYEES;


    -- display all employees frits name and first name length, order based of length
select FIRST_NAME, length(FIRST_NAME) as length_firstName
from EMPLOYEES
order by length(FIRST_NAME) asc;



/*
 SUBSTR
 beginning with index 0

 */

 --show the initials
select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0,1) || '.' from EMPLOYEES;

-- IQ from screenshot
select FIRST_NAME, SALARY from EMPLOYEES
where SALARY > 3000
order by lower(substr(FIRST_NAME, -3)) asc, SALARY desc ;