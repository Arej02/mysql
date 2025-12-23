-- We can find the customers who did not order by joining the table or using a subquery
-- Method 1
select t1.name as Customers from Customers t1
left join Orders t2 on t1.id=t2.customerId
where customerId is null

-- Method 2
select name as  Customers from Customers where id not in (select customerID from Orders)