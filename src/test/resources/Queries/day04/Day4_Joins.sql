select *from EMPLOYEES;

-- INNER JOIN:
select * from CUSTOMER;
select * from ADDRESS;

select  FIRST_NAME, LAST_NAME, ADDRESS,  PHONE
from CUSTOMER inner join ADDRESS
    on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID ;

select FIRST_NAME, LAST_NAME,CUSTOMER.ADDRESS_ID, ADDRESS.ADDRESS_ID, ADDRESS, PHONE
from  CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


-- LEFT OUTER JOIN - will show matching parts + unique data for left table
select * from CUSTOMER left outer join  ADDRESS
    on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID;

-- RIGHT OUTER JOIN - will show matching parts + unique data for left table
select * from CUSTOMER right outer join ADDRESS
    on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID;

-- FULL OUTER JOIN
select * from CUSTOMER full outer join ADDRESS
    on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;