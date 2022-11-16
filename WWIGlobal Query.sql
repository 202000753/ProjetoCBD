 /********************************************
 *	UC: Complementos de Bases de Dados 2022/2023
 *
 *	Projeto - Queries das tabelas da base de dados nova
 *		Nuno Reis (202000753)
 *		Turma: 2ºL_EI-SW-08 - sala F155 (12:30h - 16:30h)
 *
 ********************************************/
 USE WWIGlobal
 
 --City
select *
from OldData.City;

--Customer
select *
from OldData.Customer;

--Employee
select *
from OldData.Employee;

--Sale
select *
from OldData.Sale;

--Stock Item
select *
from OldData.[Stock Item];

--States
select *
from OldData.States;

--lookup
select *
from OldData.lookup;

 /********************************************
 *	Tabelas novas
 ********************************************/
select *
from SalesInfo.Country;

select *
from SalesInfo.StateProvince;

select *
from SalesInfo.StateProvince as sp
join SalesInfo.Country as c
on sp.StaProCountry = c.CouID;

select *
from SalesInfo.City;

select *
from SalesInfo.StateProvince_City;

select c.CitName, sp.StaProName
from SalesInfo.City as c
join SalesInfo.StateProvince_City as spc
on c.CitID = spc.StaPro_CitCityID
join SalesInfo.StateProvince as sp
on sp.StaProID = spc.StaPro_CitStateID
order by c.CitName, sp.StaProName;
