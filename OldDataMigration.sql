 /********************************************
 *	UC: Complementos de Bases de Dados 2022/2023
 *
 *	Projeto 1ª Fase - Migração das tabelas antigas para as novas
 *		Nuno Reis (202000753)
 *			Turma: 2ºL_EI-SW-08 - sala F155 (12:30h - 16:30h)
 *
 ********************************************/
USE WWIGlobal
GO

--Função que retorna o id se existir um pais de um continente e 0 se não existir
CREATE OR ALTER FUNCTION countryExists (@country varchar(30), @continent varchar(30))
RETURNS int
BEGIN
	declare @result int
	set @result =(select CouID
		from SalesInfo.Country
		where CouName = @country and CouContinent = @continent)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select dbo.countryExists('United States', 'North America');

--Função que retorna id se existir um estado de um pais e 0 se não existir
CREATE OR ALTER FUNCTION dbo.stateExists (@StateProvince varchar(30), @CountryID int)
RETURNS int
BEGIN
	declare @result int
	set @result =(select StaProID
		from SalesInfo.StateProvince
		where StaProName = @StateProvince and StaProCountry = @CountryID)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select dbo.stateExists('Florida', 1);

--Função que retorna id se existir uma cidade de um estado e 0 se não existir
CREATE OR ALTER FUNCTION dbo.cityExists (@City varchar(30), @StateProvinceID int)
RETURNS int
BEGIN
	declare @result int
	set @result =(select c.CitID
					from SalesInfo.City as c
					join SalesInfo.StateProvince_City as sp
					on c.CitID = sp.StaPro_CitCityID
					where c.CitName = @City and StaPro_CitStateID = @StateProvinceID)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select dbo.cityExists('Powell', 3);

--Procedimento que importa os dados da tabela OldData.City para as novas tabelas SalesInfo.Country, SalesInfo.StateProvince, SalesInfo.City
CREATE OR ALTER PROCEDURE Migrate_OldData_CityTable
AS
BEGIN
	DECLARE cityCursor CURSOR  
		FOR SELECT City, [State Province], Country, Continent, [Sales Territory], [Latest Recorded Population]
			FROM OldData.City;

	DECLARE 
		@City varchar(50),
		@StateProvince varchar(50),
		@Country varchar(50),
		@Continent varchar(50),
		@SalesTerritory varchar(50),
		@LatestRecordedPopulation int

	DECLARE
		@CountryID int,
		@StateProvinceID int,
		@CityID int

	OPEN cityCursor 
	FETCH NEXT FROM cityCursor INTO 
		@City,
		@StateProvince,
		@Country,
		@Continent,
		@SalesTerritory,
		@LatestRecordedPopulation

	WHILE @@FETCH_STATUS = 0 
	BEGIN
		--Country
		IF dbo.countryExists (@Country, @Continent) = 0
		BEGIN
			insert into SalesInfo.Country values(@Country, @Continent)
		END

		set @CountryID = dbo.countryExists (@Country, @Continent)

		--StateProvince
		IF dbo.stateExists (@StateProvince, @CountryID) = 0
		BEGIN
			insert into SalesInfo.StateProvince (StaProName, StaProCountry) values(@StateProvince, @CountryID)
		END
		
		set @StateProvinceID = dbo.stateExists (@StateProvince, @CountryID)

		--City
		insert into SalesInfo.City (CitName, CitSalesTerritory, CitLasPopulationRecord) values(@City, @SalesTerritory, @LatestRecordedPopulation)

		set @CityID = (select count(*)
						from SalesInfo.City)
		insert into SalesInfo.StateProvince_City (StaPro_CitCityID, StaPro_CitStateID)  values(@CityID, @StateProvinceID)

		FETCH NEXT FROM cityCursor INTO 
			@City,
			@StateProvince,
			@Country,
			@Continent,
			@SalesTerritory,
			@LatestRecordedPopulation
	END 
	CLOSE cityCursor 
	DEALLOCATE cityCursor
END;

--Procedimento que importa os dados da tabela OldData.City para as novas tabelas SalesInfo.Country, SalesInfo.StateProvince, SalesInfo.City
CREATE OR ALTER PROCEDURE Migrate_OldData_StatesTable
AS
BEGIN
	DECLARE stateCursor CURSOR  
		FOR SELECT Name, Code
	FROM OldData.States;

	DECLARE 
		@Name varchar(50),
		@Code varchar(50)

	OPEN stateCursor 
	FETCH NEXT FROM stateCursor INTO 
		@Name,
		@Code
		
	WHILE @@FETCH_STATUS = 0 
	BEGIN print 'State: ' + @Name
		IF dbo.stateExists (@Name, 1) = 0
		BEGIN
			insert into SalesInfo.StateProvince (StaProName, StaProCode, StaProCountry) values(@Name, @Code, 1)
		END
		ELSE
		BEGIN
			declare @StateID int
			set @StateID = dbo.stateExists (@Name, 1)
			
			UPDATE SalesInfo.StateProvince
			SET StaProCode = @Code
			WHERE StaProID = @StateID;
		END

		FETCH NEXT FROM stateCursor INTO
			@Name,
			@Code
	END 
	CLOSE stateCursor 
	DEALLOCATE stateCursor
END

--Procedimento que importa os dados das tabelas OldData.Tabela para as novas tabelas SalesInfo.Tabela
CREATE OR ALTER PROCEDURE MigrateAll
AS
BEGIN
	Exec Migrate_OldData_CityTable
	Exec Migrate_OldData_StatesTable
END;
Exec MigrateAll;
