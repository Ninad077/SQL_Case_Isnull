
-- CASE statement (same like IF ELSE) here we have CASE WHEN THEN
Select customerNumber, customerName,creditLimit,
case
	when  creditLimit>=5000 then "High"
    when creditLimit<5000 then "Low"
end as "Customer_status"
from customers;

-- Conditional statement on creditLimit displaying Customer status as High, Low and Medium and sorting based on creditlimit
Select customerNumber, customerName,creditLimit,
case
	when creditlimit> 100000 then "High"
    when creditlimit between 25000 and 100000 then "Medium"
    when creditlimit< 25000 then "Low"
end as "Customer_status"
from customers
order by creditLimit desc;

-- Is null
select  count(customerName)
from customers
where salesRepEmployeeNumber is Null;

-- Is not null
select customerName
from customers
where salesRepEmployeeNumber is not Null;

-- Isnull() shows 1 for null values
select customerName,
isnull(salesRepEmployeeNumber)
from customers;

-- ifnull() imputes (replaces) null values with value sepcified in the argument
select customerName,salesRepEmployeeNumber,
ifnull(salesRepEmployeeNumber, 1370) as "Assigned Salesrep"
from customers;

-- Coalesce(1st priority, 2nd priority,...)  will check every priority and it imputes the value in a new column from the priorit whose values are non-null
select customerName,
coalesce(postalCode,state,country)
from customers;