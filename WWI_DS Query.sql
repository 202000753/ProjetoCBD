 /********************************************
 *	UC: Complementos de Bases de Dados 2022/2023
 *
 *	Projeto - Queries das tabelas da base de dados antiga
 *		Nuno Reis (202000753)
 *		Turma: 2ºL_EI-SW-08 - sala F155 (12:30h - 16:30h)
 *
 ********************************************/
 USE WWI_DS
 
 --City
select *
from dbo.City;

--Customer
select *
from dbo.Customer;

--Employee
select *
from dbo.Employee;

--Sale
select *
from dbo.Sale;

--Stock Item
select *
from dbo.[Stock Item];

--States
select *
from dbo.States;

--lookup
select *
from dbo.lookup;


 /********************************************
 *	Queries de verificação de conformidade
 ********************************************/
-- Nº de “Customers”
select count(*) as 'Nº de Customers'
from dbo.Customer;

-- Nº de “Customers” por “Category”
select Category, count(*)
from dbo.Customer
group by Category;

-- Total de vendas por “Employee”
-- Apenas deve ser contabilizada uma venda, mesmo que esta contenha vários produtos associados
select count(distinct [WWI Invoice ID])
from Sale;

-- Total monetário de vendas por “Stock Item”
-- Valor monetário obtido por quantity*Unit Price


-- Total monetário de vendas por ano por “Stock Item”
-- Valor monetário obtido por quantity*Unit Price
-- O ano deve ser retirado da coluna “Delivery Date Key”


-- Total monetário de vendas por ano por “City”
-- Valor monetário obtido por quantity*Unit Price
-- O ano deve ser retirado da coluna “Delivery Date Key”
