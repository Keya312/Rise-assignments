--Execute a literal select statement that returns your name.
select 'keya' 'name'

--Write the literal select statement that evaluates the product of 7 and 4.
select 7*4 as product

--Write the literal select statement that takes the difference of 7 and 4 then multiplies
that difference by 8.
select (7-4)*8

-- Write a literal select statement that returns the phrase “Brewster’s SQL Training
Class”.
Select 'Brewster''s SQL Training Class'

-- Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one
column and the result of 5*3 in another column.

select 'Day 1 of Training ',
5*3 as result



---Insert/Update/Delete-
---. Insert a new employee record with all details provided directly.

create database rise1

use rise1

create table employee (EID INT,NAME VARCHAR(20),DEPARTMENT VARCHAR(20),SALARY DECIMAL(8,2))

select*from employee

insert into employee values
(101,'keya','HR',20000),
(102,'ruchit','HR',25000),
(103,'mitali','HR',23000),
(104,'hitiksha','HR',27000),
(104,'sachin','HR',28000)

select *from employee

---3. Register an employee who hasn't been assigned a salary yet.
insert into employee(EID,NAME,DEPARTMENT) values
(105,'shreya','HR')

Select*from employee


