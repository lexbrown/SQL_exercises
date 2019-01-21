-- #1
SELECT Emp_L.name
FROM Employee AS Emp_L LEFT JOIN Employee AS Emp_H ON Emp_L.id_chief = Emp_H.id
WHERE Emp_L.Salary > Emp_H.Salary;

-- #2
SELECT Dpt.name AS Dep_name, COUNT(Emp.id)
FROM Employee AS Emp INNER JOIN Departament AS Dpt ON Emp.departament_id = Dpt.id
GROUP BY dpt.name
HAVING COUNT(Emp.id) <= 3;

-- #3
SELECT Emp.name, Dpt.name, MAX(salary)
FROM Employee AS Emp INNER JOIN Departament AS Dpt ON Emp.departament_id = Dpt.id
GROUP BY (Emp.name, Dpt.name);

-- #4
SELECT Emp_L.name
FROM Employee AS Emp_L LEFT JOIN Employee AS Emp_H ON Emp_L.id_chief = Emp_H.id
WHERE Emp_L.departament_id <> Emp_H.departament_id;

-- #5
SELECT Dep_name, MAX(sum_salary)
FROM (SELECT dpt.name AS Dep_name, SUM(Emp.salary) AS sum_salary
FROM Employee AS Emp INNER JOIN Departament AS Dpt ON Emp.departament_id = Dpt.id
GROUP BY dpt.name)