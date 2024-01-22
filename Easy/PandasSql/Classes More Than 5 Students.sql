'''
Write a solution to find all the classes that have at least five students.

Return the result table in any order.
'''

select distinct class
from Courses
group by class
having count(class)>=5

