select  * from EMPLOYEES;

-- Revew


--  Display all infromation  where job title President ,Sales Manager, Finance manager
select * from JOBS
where JOB_TITLE='President' or 'Sales Manager' or 'Finance Manager' ;

-- select * from JOBS
--     where JOB_TITLE in ('President' , 'Sales Manager' not 'Finance Manager' );

-- Display all Department that does not have manager_id in departments table
select * from  DEPARTMENTS
where MANAGER_ID is NULL ;

--  Display all Locations in US or UK from Locations table
select * from LOCATIONS
where COUNTRY_ID IN ('UK', 'US');

--  Display all Locations except US or UK from Locations table
select * from LOCATIONS
where COUNTRY_ID NOT IN ('UK', 'US');

--  Display all Countries where Region_ID is 1 and Country_Name not Belgium
select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME!='Belgium'