use intern
 create table emp
 (EID int , 
 Ename varchar(20) ,
 Department varchar(10), 
 Salary money)

 select*from emp
 insert into emp values
 (101,'ramesh','AI',100000),
 (102,'mahesh','cloud',65000),
 (103,'jayesh','AI',60000),
 (104,'suresh','DA',75000)

 --Write a query to display each Department and the total number of employees
working in that department from the Employee table.

select Department,
count(*) as_totalemployees
from emp
group by department

--Write a query to find the Department, the highest salary (MAX), and the
average salary (AVG) for each department.

select department,
max(Salary) as_highestsalary, 
avg(Salary) as_lowestsalary
from emp
group by department

--Write a query to count how many employees are in each Department.
select department,
COUNT (*) as_totalemployee
from emp
group by department


--Write a query to find the minimum salary in each Department
select department,
MIN(salary) as_minimumsalary
from emp
group by department

insert into emp values
(105,'keya','AI',70000),
(106,'RIYA','CLOUD',62000),
(107,'astha','DA',63000)

insert into emp values
(108,'mitali','QA',110000)

--Write a query to show departments that have more than 2 employees
SELECT department,
COUNT(*) as_totalemployees
from emp
group by department
having count(*) >2

---Write a query to show departments where the total salary payout is greater
than 100,000

SELECT department,
sum(salary) as_totalsalary
from emp
group by department
having sum(salary) > 100000

--Write a query to find departments where the average salary is above 60,000

select department,
AVG(salary) as_avgsalary
from emp
group by department
having AVG(salary) > 60000

--Write a query to show departments that have exactly 1 employee
select department,
count(*) as_employee
from emp
group by department
having count(*) = 1

--Write a query to list all employees sorted by Salary from highest to lowest
select salary from emp
order by salary desc

---Write a query to list all employees sorted by Ename in alphabetical order
select ename from emp
order by ename asc

--Write a query to list all employees sorted by Department alphabetically, and
then by Ename alphabetically.

select department from emp
order by Department asc, ename asc