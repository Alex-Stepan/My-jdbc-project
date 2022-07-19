/*

 DISTINCT

    Removes duplicate from your requested result

 */


-- display only first name from employees table:
select FIRST_NAME from EMPLOYEES;

-- display only UNIQUE first name from employees table:
select distinct FIRST_NAME from EMPLOYEES;


-- display only UNIQUE jobs-id from employees table:
select distinct JOB_ID from EMPLOYEES;


-- display only UNIQUE country-id from Location table:
select distinct COUNTRY_ID from LOCATIONS;
