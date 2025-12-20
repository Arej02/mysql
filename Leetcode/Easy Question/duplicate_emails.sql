
-- Testing you on Group By and difference between HAVING and WHERE clause
select email as "Email" from Person 
group by email having count(email)>1