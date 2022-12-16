select * from EMPLOYEES;


/*
 CREATE TABLE SYNTAX:

 create table TableName(
    colName1 DataType Constrains,
    colName2 DataType Constrains (optional),
    colName3 DataType Constrains (optional),
    ...
 );

 */

CREATE TABLE ScrumTeam(
     employeeID Integer PRIMARY KEY ,
     firstName varchar(30) not null ,
     lastName varchar(30) not null ,
     lobTitle varchar(20) not null ,
     age Integer,
     salary Integer
 );


select * from SCRUMTEAM;



/*
 INSERT:
 */
 INSERT INTO SCRUMTEAM (employeeID, firstName, lastName, lobTitle, age, salary)
    VALUES (1, 'Mike', 'Jameson', 'Tester', 25, 120000);

INSERT INTO SCRUMTEAM (employeeID, firstName, lastName, lobTitle, age, salary)
VALUES (2, 'Arnold', 'Szwartzanegger', 'Tester', 45, 110000);

INSERT INTO SCRUMTEAM (employeeID, firstName, lastName, lobTitle, age, salary)
VALUES (3, 'James', 'Bond', 'Tester', 25, 96000);

INSERT INTO SCRUMTEAM (employeeID, firstName, lastName, lobTitle)
VALUES (4, 'Super', 'Man', 'Tester');


INSERT INTO SCRUMTEAM
VALUES (11, 'Pirate1', 'One', 'Developer', 31, 64000);
INSERT INTO SCRUMTEAM
VALUES (12, 'Pirate2', 'Two', 'Developer', 32, 74000);
INSERT INTO SCRUMTEAM
VALUES (13, 'Pirate3', 'Three', 'Developer', 33, 84000);


-- Increase all employees salary

UPDATE SCRUMTEAM
SET salary = salary + 25000
where salary< 30000;


select * from SCRUMTEAM;


-- Add Age for Super Man
UPDATE SCRUMTEAM
Set age = 37
where  firstName = 'Super';

UPDATE SCRUMTEAM
Set salary = 137000
where  firstName = 'Super';


/*
 DELETE:

 */
 delete  from SCRUMTEAM
where firstName = 'Mike';

select * from SCRUMTEAM;


commit;


/*
 ALTER:

 to change existing Table Structure
 */

 -- Add new Column
ALTER TABLE SCRUMTEAM
Add Gender varchar(10);

select * from SCRUMTEAM;

-- Update all scrumteam gender as male
UPDATE SCRUMTEAM
Set GENDER = 'male';


--Rename Column
ALTER TABLE SCRUMTEAM
RENAME COLUMN Salary to Annual_Salary;


--Drop Column
ALTER TABLE SCRUMTEAM
DROP column  GENDER;

select * from SCRUMTEAM;


--Rename Table
ALTER TABLE SCRUMTEAM
RENAME to AgileTeam;

select * from AGILETEAM;


--TRUNCATE: it will delete all contain data
TRUNCATE TABLE AGILETEAM;


-- DROP
Drop TABLE AgileTeam;

commit ; -- to save changes

