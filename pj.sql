/* Create Employees Table */
drop table if exists employees3; 
CREATE TABLE employees3 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

/* Insert Data into Employees */
INSERT INTO employees3 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);

SELECT * FROM employees3;

/* Create Departments Table */
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

/* Insert Data into Departments*/
INSERT INTO departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');


SELECT * FROM departments;

/* INNER JOIN:-*/

SELECT e.employee_id, e.first_name, e.last_name, 
		d.department_id, d.department_name 
FROM Employees3 e 
RIGHT JOIN
Departments d
ON e.department_id=d.department_id;


/*LEFT JOINS:-
 Retrieve all employees3 and their department names,
including those without a department:
*/

select e.employee_id, e.first_name, e.last_name, d.department_name
from employees3 as e left join departments as d
on e.department_id=d.department_id;

/*RIGHT JOINS:-
 Retrieve all employees3 and their department names,
including those without a department:
*/


select e.employee_id, e.first_name, e.last_name, d.department_name
from employees3 as e right join departments as d
on e.department_id=d.department_id;


/*FULL OUTER JOINS:-
 Retrieve all employees3 and  department 
including non-matching recordes from both the tables:-
*/

select e.employee_id, e.first_name, e.last_name, d.department_name
from employees3 as e full outer join departments as d on
e.department_id=d.department_id ;

/*
Cross Join:-
retrieve all possible combinations of employees3 and their departments:-
*/

select e.first_name, e.last_name , d.department_name
from employees3 as e cross join
departments as d


/*SELF JOINS:-
find employees3 who share the same departments:-
*/

select e.first_name, e2.first_name, d.department_name from employees3 as e
join employees3 as e2 on
e.department_id=e2.department_id and e.employee_id!=e2.employee_id
join departments as d
on e.department_id=d.department_id;






