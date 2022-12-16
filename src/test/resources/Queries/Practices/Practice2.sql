select * from EMPLOYEES;

/*
 ALIASES

 -- Rename Column

 -- Rename Table --> JOINS
 */


 -- Rename Column
select FIRST_NAME as Given_Name from EMPLOYEES;
select FIRST_NAME as "Given_Name" from EMPLOYEES;




/*
 String Functions

-- Concat:
 in Java: first + "_" + second
 in sql : first || "_" || second

 */

 -- add "@gmail.com" to the full_name
 select EMAIL || '@gmail.com' as Full_email from EMPLOYEES;
select concat(EMAIL, '@gmail.com') as full_email from EMPLOYEES;


-- LOWER
select lower ( concat(EMAIL, '@gmail.com') )   as full_email from EMPLOYEES;

-- UPPER
select upper ( concat(EMAIL, '@gmail.com') )   as full_email from EMPLOYEES;


-- INITCAP
select EMAIL from EMPLOYEES;
select initcap(EMAIL) from EMPLOYEES;


-- LENGTH
select length(EMAIL) from EMPLOYEES;


select distinct length(EMAIL) from EMPLOYEES
order by length(EMAIL)desc ;

select  FIRST_NAME, length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length_firstname;


/*
 SUBSTR( column name, beginIndex, number of chars)
 */

 -- Display all initials from employees : Steven King to S.K.
 select substr(FIRST_NAME, 0 , 1) || '.' || substr(LAST_NAME, 0, 1) || '.' from EMPLOYEES;

select substr(FIRST_NAME, 1 , 2) || '.' || substr(LAST_NAME, 1, 2) || '.' from EMPLOYEES;


select FIRST_NAME, salary from EMPLOYEES
where SALARY > 3000
order by substr( FIRST_NAME, 3 );


-- 1. display full addresses from locations table in a single column



-- 2. display all informations of the employee who has the minimum salary in employees table



-- 3. display the second minimum salary from the employees



-- 4. display all informations of the employee who has the second minimum salary


-- 5. list all the employees who are making above the average salary;



-- 6. list all the employees who are making less than the average salary


-- 7. display manager name of 'Neena'


-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)


-- 9. find the 5th maximum salary from the employees table (do not include duplicates)


-- 10. find the 7th maximum salary from the employees table (do not include duplicates)


-- 11. find the 10th maximum salary from the employees table (do not include duplicates)


-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)


-- 13. find the 5th minimum salary from the employees table (do not include duplicates)


-- 14. find the 7th maximum salary from the employees table (do not include duplicates)


-- 15. find the 10th maximum salary from the employees table (do not include duplicates)


