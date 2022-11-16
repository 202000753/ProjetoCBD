 /********************************************
 *	UC: Complementos de Bases de Dados 2022/2023
 *
 *	Projeto 1ª Fase - Criação do Layout
 *		Nuno Reis (202000753)
 *			Turma: 2ºL_EI-SW-08 - sala F155 (12:30h - 16:30h)
 *
 ********************************************/
USE master

CREATE DATABASE WWIGlobal
/*ON 
( NAME = WWIGlobal_Saledat,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WWIGlobalSaledat.mdf',
	SIZE = --,
	MAXSIZE = --,
	FILEGROWTH = -- ),
( NAME = WWIGlobal2_Productdat,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WWIGlobalProductdat.mdf',
	SIZE = --,
	MAXSIZE = --,
	FILEGROWTH = -- ),
( NAME = WWIGlobal2_Userdat,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WWIGlobalUserdat.mdf',
	SIZE = --,
	MAXSIZE = --,
	FILEGROWTH = -- )
LOG ON
( NAME = WWIGlobal_log,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WWIGloballog.ldf',
	SIZE = --,
	MAXSIZE = --,
	FILEGROWTH = -- ) ;*/
GO

USE WWIGlobal
GO

 /********************************************
 *	Schemas
 ********************************************/
--DROP SCHEMA SalesInfo;
CREATE SCHEMA SalesInfo;
GO

--DROP SCHEMA ProductsInfo;
CREATE SCHEMA ProductsInfo;
GO

--DROP SCHEMA UsersInfo;
CREATE SCHEMA UsersInfo;
GO

--DROP SCHEMA OldData;
CREATE SCHEMA OldData;
GO


 /********************************************
 *	Tabelas
 ********************************************/
 --DROP TABLE UsersInfo.Country;
CREATE TABLE UsersInfo.Country (
	CouID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CouName VARCHAR(20) NOT NULL,
	CouContinent VARCHAR(20) NOT NULL
);
GO

--DROP TABLE UsersInfo.StateProvince;
CREATE TABLE UsersInfo.StateProvince (
	StaProID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    StaProCountry INT NOT NULL FOREIGN KEY REFERENCES UsersInfo.Country(CouID),
	StaProName VARCHAR(50) NOT NULL,
	StaProCode VARCHAR(5)
);
GO

--DROP TABLE UsersInfo.City;
CREATE TABLE UsersInfo.City (
	CitID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CitName VARCHAR(50) NOT NULL,
	CitSalesTerritory VARCHAR(50),
	CitLasPopulationRecord INT
);
GO

--DROP TABLE UsersInfo.StateProvince_City;
CREATE TABLE UsersInfo.StateProvince_City (
	StaPro_CitStateID int NOT NULL foreign key references UsersInfo.StateProvince (StaProID),
	StaPro_CitCityID int NOT NULL foreign key references UsersInfo.City (CitID),
	PRIMARY KEY(StaPro_CitStateID, StaPro_CitCityID)
);
GO

 --DROP TABLE UsersInfo.SysUser;
CREATE TABLE UsersInfo.SysUser (
	SysUseID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    SysUseEmail NVARCHAR(30) UNIQUE NOT NULL,
	SysUsePassword NVARCHAR(20) NOT NULL,
	SysUseName VARCHAR(30) NOT NULL
);
GO

--DROP TABLE UsersInfo.Token;
CREATE TABLE UsersInfo.Token (
	TokID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    TokUserID INT NOT NULL FOREIGN KEY REFERENCES UsersInfo.SysUser(SysUseID),
    TokMail NVARCHAR(30) NOT NULL,
	TokDate TIMESTAMP NOT NULL,
	TokToken INT UNIQUE NOT NULL
);
GO

--DROP TABLE UsersInfo.ErrorLog;
CREATE TABLE UsersInfo.ErrorLog (
	ErrLogID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ErrLogUserID INT NOT NULL FOREIGN KEY REFERENCES UsersInfo.SysUser(SysUseID),
    ErrLogError NVARCHAR(100) NOT NULL,
	ErrLogDate Date NOT NULL
);
GO

--DROP TABLE UsersInfo.Employee;
CREATE TABLE UsersInfo.Employee (
	EmpID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    EmpUserID INT NOT NULL FOREIGN KEY REFERENCES UsersInfo.SysUser(SysUseID),
	EmpPreferedName VARCHAR(10),
	EmpIsSalesPerson BIT NOT NULL
);
GO

--DROP TABLE UsersInfo.Category;
CREATE TABLE UsersInfo.Category (
	CatID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CatName VARCHAR(20) NOT NULL
);
GO

--DROP TABLE ProductsInfo.Product;
CREATE TABLE ProductsInfo.Product (
	ProdID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	ProdName NVARCHAR(100) NOT NULL,
	ProdColor NVARCHAR(50),
	ProdSellingPackage NVARCHAR(20),
	ProdBuyingPackage NVARCHAR(20),
	ProdBrand NVARCHAR(50),
	ProdSize NVARCHAR(20),
	ProdLeadTimeDays INT,
	ProdQuantityPerOuter INT NOT NULL,
	ProdStock INT,
	ProdIsChiller BIT,
	ProdBarCode INT,
	ProdTaxRate FLOAT,
	ProdUnitPrice FLOAT NOT NULL,
	ProdRecommendedRetailPrice FLOAT,
	ProdTypicalWeightPerUnit FLOAT
);
GO

--DROP TABLE ProductsInfo.Promotion;
CREATE TABLE ProductsInfo.Promotion (
	PromID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	PromNewPrice FLOAT,
	PromDescription VARCHAR(100) NOT NULL,
	PromStartDate DATE NOT NULL,
	PromEndDate DATE NOT NULL
);
GO

--DROP TABLE UsersInfo.Customer;
CREATE TABLE UsersInfo.Customer (
	CusID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    CusUserID INT NOT NULL FOREIGN KEY REFERENCES UsersInfo.SysUser(SysUseID),
    CusCategoryID INT NOT NULL FOREIGN KEY REFERENCES UsersInfo.Category(CatID),
    CusCityID INT NOT NULL FOREIGN KEY REFERENCES UsersInfo.City(CitID),
    CusBillToCustomer INT FOREIGN KEY REFERENCES UsersInfo.Customer(CusID),
	CusBuyingGroup VARCHAR(30),
	CusPrimaryContact VARCHAR(40),
	CusPostalCode INT,
	CusDeliveryAddress VARCHAR(40)
);
GO

--DROP TABLE SalesInfo.Sale;
CREATE TABLE SalesInfo.Sale (
	SalID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    SalCustomerID INT NOT NULL FOREIGN KEY REFERENCES UsersInfo.Customer(CusID),
    SalEmployeeID INT NOT NULL FOREIGN KEY REFERENCES UsersInfo.Employee(EmpID),
	SalDate DATE NOT NULL,
	SalDeliveryDate DATE,
	SalWWWIInvoiceID INT,
	SalDescription NVARCHAR(50),
	SalIsChiller BIT,
	SalIsFinished BIT NOT NULL,
	SalProfit FLOAT,
	SalTaxAmount FLOAT,
	SalTotalExcludingTax FLOAT,
	SalTotalPrice FLOAT
);
GO

--DROP TABLE SalesInfo.Product_Sale;
CREATE TABLE SalesInfo.Product_Sale (
	Prod_SalProductID int NOT NULL foreign key references ProductsInfo.Product (ProdID),
	Prod_SalSaleID int NOT NULL foreign key references SalesInfo.Sale (SalID),
	Prod_SalQuantity INT NOT NULL,
	PRIMARY KEY(Prod_SalProductID, Prod_SalSaleID)
);
GO

--DROP TABLE ProductsInfo.Product_Promotion;
CREATE TABLE ProductsInfo.Product_Promotion (
	Prod_PromProductID int NOT NULL foreign key references ProductsInfo.Product (ProdID),
	Prod_PromPromotionID int NOT NULL foreign key references ProductsInfo.Promotion (PromID),
	PRIMARY KEY(Prod_PromProductID, Prod_PromPromotionID)
);
GO

--DROP TABLE SalesInfo.ProductPromotion_Sale;
CREATE TABLE SalesInfo.ProductPromotion_Sale (
	ProdProm_SalPromotionID int NOT NULL foreign key references ProductsInfo.Promotion (PromID),
	ProdProm_SalSaleID int NOT NULL foreign key references SalesInfo.Sale (SalID),
	PRIMARY KEY(ProdProm_SalPromotionID, ProdProm_SalSaleID)
);
GO