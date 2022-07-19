select * from EMPLOYEES;

/*
 LIKE
Percent ( %)      -->  for matching any sequence of characters.
Underscore ( _ )  -->  for matching any single character.

  - contains
  - startwith
  - endswith

 */

 -- get all employees whose firstname starts with B

select * from  EMPLOYEES
where FIRST_NAME LIKE  'B%';

-- get all employees whose firstname starts with B and has only 5 letters
select * from  EMPLOYEES
where FIRST_NAME LIKE  'B____';

-- get 5 letter names, where the middle char is 'z'
select  * from EMPLOYEES
where FIRST_NAME like  '__z__' ;

-- get firstname where second char is 'a'
select  * from EMPLOYEES
where FIRST_NAME like  '_a%' ;

-- get all info whose first name ends with R
select  * from EMPLOYEES
where FIRST_NAME like  '%r' ;

--get job title info ends with manager from jobs table
select * from JOBS
where JOB_TITLE like '%Manager';

-- how many employee we have with (job title info ends with manager from jobs table)
select count (*) from JOBS
where JOB_TITLE like '%Manager';