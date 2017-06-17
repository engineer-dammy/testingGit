/*1.	CustomerAW
(CustomerID, FirstName, MiddleName, LastName, CompanyName, EmailAddress)
2. CusomerAddress
(AddressID, CustomerID, AddressLine1, AddressLine2, City, StateProvince, CountyRegion, PostalCode)
4.	SalesOrderHeader
(SalesOrderID, RevisionNumber, OrderDate, CustomerID, BillToAddressID, ShipToAddressID, ShipMethod, SubTotal, TaxAmt, Freight)*/


CREATE database xpoint

create table CustomerAW
(
CustomerID int primary key identity(1,1),
FirstName nvarchar (50),
MiddleName nvarchar (30),
LastName nvarchar (40),
CompanyName nvarchar (50),
EmailAddress nvarchar (50)
)

create table CustomerAddress
(
AddressID int identity(1,1),
CustomerID int, 
AddressLine nvarchar (50),
AddressLine2 nvarchar (50),
City nvarchar (30), 
StateProvince nvarchar(30),
CountyRegion nvarchar(30),
PostalCode nvarchar (10)

)
Added new stuff
my name
