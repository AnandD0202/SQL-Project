----- Get all the details from the person table including email ID, phone number, and phone number type 
Select p.*,pe.EmailAddress, pt.Name
from [Person].[Person] as p inner join [Person].[EmailAddress] as pe 
on p.BusinessEntityID=pe.BusinessEntityID
inner join [Person].[PersonPhone] as pp 
on p.BusinessEntityID=pp.BusinessEntityID
inner join [Person].[PhoneNumberType] as pt
on pp.PhoneNumberTypeID=pt.PhoneNumberTypeID

Select top 1 * from [Person].[Person]
Select top 1 * from [Person].[EmailAddress] 
select top 1 * from [Person].[PersonPhone]
select top 1 * from [Person].[PhoneNumberType]
select top 1 * from [Sales].[SalesOrderHeader]
select top 1 * from [Sales].[SalesOrderHeaderSalesReason]

----Get the details of the sales header order made in May 2011

select * from [Sales].[SalesOrderHeader]
select *
from [Sales].[SalesOrderHeader] 
where MONTH(OrderDate)=5 and YEAR(OrderDate)=2011

 ----Get the details of the sales details order made in the month of May 2011 
 select sod.* 
 from [Sales].[SalesOrderHeader] as soh inner join [Sales].[SalesOrderDetail] as sod
 on soh.SalesOrderID=sod.SalesOrderID
 where MONTH(soh.OrderDate)=5 and  YEAR(soh.OrderDate)=2011

 ---Get the total sales made in may 2011
select sum(LineTotal)
 from [Sales].[SalesOrderHeader] as soh inner join [Sales].[SalesOrderDetail] as sod
 on soh.SalesOrderID=sod.SalesOrderID
 where MONTH(soh.OrderDate)=5 and  YEAR(soh.OrderDate)=2011

 ---Get the total sales made in the year 2011 by month order by increasing sales

select DATENAME(mm, OrderDate) as month_name, SUM(LineTotal) as tot_sales
from [Sales].[SalesOrderHeader] as soh inner join [Sales].[SalesOrderDetail] as sod
 on soh.SalesOrderID=sod.SalesOrderID
 where YEAR(OrderDate)=2011
 group by DATENAME(mm, OrderDate)
 order by tot_sales 



 select top 1 * from [Person].[Person]
 select top 1 * from [Sales].[SalesPerson]


  ---Get the total sales made to the customer with FirstName starts with g

select *
from [Sales].[SalesPerson] as sp inner join [Person].[Person] as p
on sp.BusinessEntityID=p.BusinessEntityID
where FirstName like 'g%'


