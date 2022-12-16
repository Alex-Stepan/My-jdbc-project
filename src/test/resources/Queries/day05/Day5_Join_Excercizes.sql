select * from EMPLOYEES;

--1. Display all first name and department name
select * from EMPLOYEES;
select * from DEPARTMENTS;

select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e join DEPARTMENTS d
    on d.DEPARTMENT_ID = e.DEPARTMENT_ID;


--2. Display all first name and department name including departments without employee
select FIRST_NAME, DEPARTMENT_NAME
    from DEPARTMENTS d  left outer join  EMPLOYEES e
        on d.DEPARTMENT_ID = e.DEPARTMENT_ID;


--3. Display all first name and department name including employee without departments
select FIRST_NAME, DEPARTMENT_NAME
    from DEPARTMENTS d  right outer join  EMPLOYEES e
        on d.DEPARTMENT_ID = e.DEPARTMENT_ID;


--4. Display all first name and department name,
-- including departments without employee
-- including employee without departments
select FIRST_NAME, DEPARTMENT_NAME
    from DEPARTMENTS d full join EMPLOYEES e
        on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

--5. Display all cities and related country names
select  COUNTRY_NAME, CITY
    from LOCATIONS l  inner join COUNTRIES c
        on c.COUNTRY_ID = l.COUNTRY_ID  ;

--6. Display all cities and related country names, including with countries without city
select COUNTRY_NAME, CITY
    from LOCATIONS l  right join COUNTRIES c
        on c.COUNTRY_ID = l.COUNTRY_ID  ;


--7. Display all department name and street address
select DEPARTMENT_NAME, STREET_ADDRESS
    from DEPARTMENTS dp inner join LOCATIONS lc
        on dp.LOCATION_ID = lc.LOCATION_ID;


--8. Display firstName, lastName and departmentName, city for all employees
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME,CITY from EMPLOYEES em
    inner join DEPARTMENTS dp
        on dp.DEPARTMENT_ID = em.DEPARTMENT_ID
    inner join LOCATIONS lc
        on dp.LOCATION_ID = lc.LOCATION_ID;


--9. Display firstName, lastName and departmentName, city for all employees for all employees
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, COUNTRY_NAME from EMPLOYEES em
    left join DEPARTMENTS dp
        on dp.DEPARTMENT_ID = em.DEPARTMENT_ID
    inner join LOCATIONS lc
        on dp.LOCATION_ID = lc.LOCATION_ID
    inner join COUNTRIES ct
        on lc.COUNTRY_ID = ct.COUNTRY_ID;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, COUNTRY_NAME from EMPLOYEES em
inner join DEPARTMENTS dp  on em.DEPARTMENT_ID = dp.DEPARTMENT_ID
inner join LOCATIONS lc  on dp.LOCATION_ID = lc.LOCATION_ID
inner join COUNTRIES ct  on lc.COUNTRY_ID = ct.COUNTRY_ID ;

--9.2 Select only unique for left joint
select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER left outer join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
WHERE ADDRESS.ADDRESS_ID is null;


select  CUSTOMER_ID, FIRST_NAME, LAST_NAME, CUSTOMER.ADDRESS_ID, ADDRESS.ADDRESS_ID, PHONE
from CUSTOMER left outer join ADDRESS
    on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null;


--10. Display firstName, lastName, departmentName, city,  who is living in United Kingdom
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, COUNTRY_NAME from EMPLOYEES em
    inner join DEPARTMENTS dp  on em.DEPARTMENT_ID = dp.DEPARTMENT_ID
    inner join LOCATIONS lc  on dp.LOCATION_ID = lc.LOCATION_ID
    inner join COUNTRIES ct  on lc.COUNTRY_ID = ct.COUNTRY_ID
where COUNTRY_NAME = 'United Kingdom'; --where ct.COUNTRY_ID = 'UK';


--11. Display how many employee we have for each country name
select COUNTRY_NAME, count(*) from EMPLOYEES em
    inner join DEPARTMENTS dp  on em.DEPARTMENT_ID = dp.DEPARTMENT_ID
    inner join LOCATIONS lc  on dp.LOCATION_ID = lc.LOCATION_ID
    inner join COUNTRIES ct  on lc.COUNTRY_ID = ct.COUNTRY_ID
group by COUNTRY_NAME
order by 2 asc;

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, CUSTOMER.address_id, address.address_id, PHONE
from customer left outer join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null;





