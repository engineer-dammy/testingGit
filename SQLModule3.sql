 /*


*/

--Question1  Prepare a report of all the persons with first name starting from 'J'--

select firstName from [Person].[Person]
where firstName like 'J%'


select firstName +'   '+ MiddleName +'   '+LastName [Full Name] from [Person].[Person] 
where firstName like 'J%'

 --Question 2  Prepare a report of employees with the job title containing 'Marketing'--

select firstName +'   '+ MiddleName +'   '+ LastName [Full Name],JobTitle Title from [HumanResources].[Employee] e
full outer join [Person].[Person] p on e.BusinessEntityID = p.BusinessEntityID
where JobTitle like '%Marketing%'


--Question 3  Report all the products that the business started in year 2005--

select Name from  [Production].[Product]
where SellStartDate = 2008


--Question 4 Prepare a report of Sales Year Till Date and Sales Last Year of all the sales person in the company. First and Latsname must be presented in a column named "Full Name"--

select SalesYTD, SalesLastYear, FirstName +'   '+ LastName [Full Name], TerritoryID from [Sales].[SalesPerson] S join [Person].[Person] P
 on S.BusinessEntityID = P.BusinessEntityID


 --Question 5 From above report, generate another report showing the difference between Sales Year till Date and Sales Last Year--

 select SalesYTD, SalesLastYear,(SalesYTD - SalesLastYear) as SalesDifference FROM [Sales].[SalesPerson]

 
--Question 6 Prepare a report of Sales Year Till Date and Sales Last Year from all the territory in which the business operate--

SELECT SalesYTD, SalesLastYear, TerritoryID FROM [Sales].[SalesPerson] 


/* Question 7 ●	In Adventureworks, Sales persons' Sales Quota get changed quite frequently and the Sales Manager is curious to know more.
 As a data analyst you are required to present 
a report of how many times each Sales person's Sales Quota have been changed throughout their time in the company*/

select SalesPersonID,count(SalesQuota) as [Sales Quota per Person] from [Sales].[SalesOrderHeader] O join [Sales].[SalesPerson] q on O.TerritoryID = q.TerritoryID
JOIN [Person].[Person] p ON p.BusinessEntityID = q.TerritoryID group by SalesPersonID




select * from [Sales].[SalesOrderHeader]
SELECT * FROM [Sales].[SalesPerson]
SELECT * FROM [Person].[Person]



select * from [HumanResources].[Employee]
 select * from [Sales].[SalesOrderHeader]