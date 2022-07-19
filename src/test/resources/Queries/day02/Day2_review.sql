select * from EMPLOYEES;


---------------------------------------

-- Display all info where job title is President, Sales Manager, Finance Manager
select * from JOBS
where JOB_TITLE in ('President', 'Sales Manager', 'Finance Manager');


-- Display all Departments that does not have manager_id in departments table
select * from DEPARTMENTS
where MANAGER_ID is null ;


-- Display all Locations in US or UK from Locations table
select * from LOCATIONS
where COUNTRY_ID in ('US', 'UK');

-- Display all Locations except US or UK from Locations table
select * from LOCATIONS
where COUNTRY_ID not in ('US', 'UK');


-- Display all Countries where Region_id is 1 and country_name is not Belgium
select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME != 'Belgium';

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME <> 'Belgium';

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME  not in('Belgium');


