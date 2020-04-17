-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName as 'pname from Prod', CategoryName as 'cname from Cat'
FROM [Product]
JOIN [Category]
WHERE [Product].CategoryId = [Category].id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [Order].id, OrderDate, CompanyName
from [order] join [Shipper]
on [Order].ShipVia = [Shipper].id
where [Order].OrderDate < '2012-08-09'


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select ProductName, Quantity, OrderId
from [Product]
join [orderdetail]
on [OrderDetail].productid = [product].id
where [OrderDetail].orderid = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select [Order].id, CompanyName, LastName
from [Order] join [Customer]
on [Order].CustomerId = [Customer].id
join [Employee]
on [Order].EmployeeId = [Employee].id
