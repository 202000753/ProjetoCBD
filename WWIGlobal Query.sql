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
from OldData.Customer
order by Customer;

--Employee
select *
from OldData.Employee;

--Sale
select *
from OldData.Sale
order by [WWI Invoice ID];

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
from UsersInfo.Country;

select *
from UsersInfo.StateProvince;

select *
from UsersInfo.City;

select *
from UsersInfo.Category;

select *
from UsersInfo.Region_Category;


select *
from UsersInfo.BuyingGroup;

select *
from UsersInfo.SysUser
where SysUseName = '
Tailspin Toys (Peeples Valley, AZ)
Tailspin Toys (Peeples Valley, AZ)';

select ci.*, sp.*, co.*, ca.*
from UsersInfo.Region_Category as rc
join UsersInfo.StateProvince as sp
on rc.Reg_CatCitStateProvinceId = sp.StaProId
join UsersInfo.Country as co
on rc.Reg_CatCountryId = co.CouID
join UsersInfo.City as ci
on rc.Reg_CatCityId = ci.CitId
join UsersInfo.Category as ca
on rc.Reg_CatCategoryId = ca.CatId;
