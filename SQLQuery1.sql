create database intern

use intern

create table employee
(EID INT,
NAME VARCHAR(20),
DEPARTMENT VARCHAR(20),
SALARY DECIMAL(8,2),
BONUS INT,
EXPERIANCE DECIMAL(2,1),
CITY VARCHAR(10) )

SELECT * FROM EMPLOYEE

insert into EMPLOYEE (EID, Name, Department, Salary, Bonus, Experiance, City)
VALUES
(101,'ramesh','IT',25000,3000,1,'MUMBAI'),
(102,'mahesh','CLOUD',30000,4000,3,'DELHI'),
(103,'naresh','IT',35000,2000,2.5,'VADODARA'),
(104,'suresh','DA',60000,1000,4.5,'MUMBAI'),
(105,'hitesh','IT',55000,5000,5,'DELHI')

--Write a query to display all employees whose salary is greater than 50,000.
select * from employee
where salary > 50000

--Retrieve employees who work in the IT department and have more than 3 years ofexperience.
select * from employee
where department = 'IT'
AND experiance > 3 

--Write a query to display employees whose salary is between 45,000 and 60,000.
select *from employee
where salary between 45000 and 60000

--Display employees whose city is either Mumbai or Delhi.
select *from employee
where city in ('mumbai' ,'delhi')

--Write a query to display employee name along with their annual income

select name ,(salary*12) as anual_income 
from employee

insert into EMPLOYEE (EID, Name, Department, Salary, Bonus, Experiance, City)
VALUES
(106,'ARMY','IT',25000,3000,1,'MUMBAI')

--Find employees whose name starts with the letter 'A'.
select *from employee
where name like 'a%'

--Find the highest salary among all employees.
select max(salary) as highest_salary  from employee

--Find the total bonus paid to employees in the IT department.
select sum(bonus)  as bonus_paid
from employee
where department = 'IT'

--Display the minimum and maximum experience of employees.
select min(Experiance), 
max(Experiance)
from employee

--Count the number of employees in each department.
select count(*) 
from employee
group by  department

--Find the total bonus paid to employees in the IT department.
select SUM(bonus) from employee
where department = 'IT'

--Write an SQL statement to add a new column named Email of type VARCHAR(100)
to the Employees table.

alter table employee
add email varchar(100)

SELECT* FROM EMPLOYEE

--Write an SQL statement to modify the Salary column so that it becomes
DECIMAL(10,2).

--- for practice
alter table employee
alter column salary int 

alter table employee
alter column salary decimal (10,2)

select * from employee

--Write an SQL statement to drop the Bonus column from the Employees table.

alter table employee
drop column bonus

