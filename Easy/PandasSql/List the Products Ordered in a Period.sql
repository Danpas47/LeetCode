'''
Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.

Return the result table in any order.
'''
  
SELECT product_name,sum(unit) as unit
FROM Products
inner JOIN Orders
ON Products.product_id=Orders.product_id
where order_date between '2020-02-01' and '2020-02-29'
group by Orders.product_id
HAVING sum(unit)>=100
