'''
Write a solution to find the second highest salary from the Employee table. If there is no second highest salary
'''

select max(salary) as SecondHighestSalary
from Employee
where salary not in (select max(salary)
from Employee)
