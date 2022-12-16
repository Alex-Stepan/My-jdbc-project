select * from EMPLOYEES;

-- 1. Create Table Developers
create table Developers(
    Id_Number Integer primary key,
    Names varchar(30),
    Salary Integer
);

-- 2. Create table Testers
create table Testers(
    Id_Number Integer primary key,
    Names varchar(30),
        Salary Integer
);


-- 3. Input data to Developers
insert into Developers values (1, 'Mike', 155000);
insert into Developers values (2, 'John', 142000);
insert into Developers values (3, 'Steven', 138000);
insert into Developers values (4, 'David', 172000);

-- 4. Input data to Testers
insert into Testers values (1, 'Laura', 95000);
insert into Testers values (2, 'Kate', 88000);
insert into Testers values (3, 'Martha', 97000);
insert into Testers values (4, 'Maria', 75000);

-- 5.
commit work;

-------------------------------------------------


select * from Developers;

select * from Testers;


/*
 UNION
 */

select * from Developers
    union
select * from Testers;


select Names from Developers
union
select Names from Testers;



select Names from Developers
union all
select Names from Testers;


/*
 MINUS
 */

select Names from Developers
minus
select Names from Testers;


/*
 INTERSECT - it will sort and will remove duplicates
 */

select * from Developers
intersect
select * from Testers;