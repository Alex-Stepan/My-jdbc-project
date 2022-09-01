select * from EMPLOYEES ;

/*

 */

 -- display employees whose names starts with 'B'
select * from EMPLOYEES
    where FIRST_NAME like 'B%' ;

-- display employees whose names starts with 'B' and has 5 chars total
select * from EMPLOYEES
    where  FIRST_NAME like 'B____' ;

-- display employees whose names has middle 'B' and has 5 chars total
select * from EMPLOYEES
    where FIRST_NAME like '__z__' ;


-- display employees whose names ends with 'R'
select * from EMPLOYEES
    where FIRST_NAME like '%r' ;

-- display employees whose names has second char 'a'
select * from EMPLOYEES
    where FIRST_NAME like '_a%' ;

select * from EMPLOYEES
    where FIRST_NAME like  '%r' ;


-- display any job title info which ends with manager from JOBS table
select JOB_TITLE from JOBS
    where JOB_TITLE like '%Manager';

---------------------------------------------------------------

-- display how many employees we have
select count(*) from JOBS
    where JOB_TITLE like '%Manager' ;
