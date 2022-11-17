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
CREATE OR ALTER FUNCTION UsersInfo.countryExists (@country varchar(30))
RETURNS int
BEGIN
	declare @result int
	set @result =(select CouID
		from UsersInfo.Country
		where CouName = @country)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select UsersInfo.countryExists('United States');

--Função que retorna id se existir um estado e 0 se não existir
CREATE OR ALTER FUNCTION UsersInfo.stateExistsByName (@StateProvince varchar(30))
RETURNS int
BEGIN
	declare @result int
	set @result =(select StaProID
		from UsersInfo.StateProvince
		where StaProName = @StateProvince)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select UsersInfo.stateExistsByName('Florida');


--Função que retorna id se existir um estado e 0 se não existir
CREATE OR ALTER FUNCTION UsersInfo.stateExistsByCode (@StateProvince varchar(30))
RETURNS int
BEGIN
	declare @result int
	set @result =(select StaProID
		from UsersInfo.StateProvince
		where StaProCode = @StateProvince)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select UsersInfo.stateExistsByCode('Fl');

--Função que retorna id se existir uma cidade e 0 se não existir
CREATE OR ALTER FUNCTION UsersInfo.cityExists (@City varchar(30))
RETURNS int
BEGIN
	declare @result int
	set @result =(select CitID
					from UsersInfo.City
					where CitName = @City)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select UsersInfo.cityExists('Powell');

--Função que retorna id se existir uma categoria e 0 se não existir
CREATE OR ALTER FUNCTION UsersInfo.categoryExists (@Category varchar(30))
RETURNS int
BEGIN
	declare @result int
	set @result =(select CatID
					from UsersInfo.Category
					where CatName = @Category)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select UsersInfo.categoryExists('Kiosk');

--Função que retorna id se existir um buying group e 0 se não existir
CREATE OR ALTER FUNCTION UsersInfo.buyingGroupExists (@buyingGroup varchar(30))
RETURNS int
BEGIN
	declare @result int
	set @result =(select BuyGrouId
					from UsersInfo.BuyingGroup
					where BuyGrouName = @buyingGroup)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select UsersInfo.buyingGroupExists('Tailspin Toys');

CREATE or alter FUNCTION UsersInfo.fnHashPassword (@password VARCHAR(20))
Returns varchar(20)
AS
BEGIN
	return HASHBYTES('SHA1', @password)
END;
--select UsersInfo.fnHashPassword('Pass123');

--Função que retorna id se existir um user e 0 se não existir
CREATE OR ALTER FUNCTION UsersInfo.userExists (@name varchar(30))
RETURNS int
BEGIN
	declare @result int
	set @result =(select SysUseId
				from UsersInfo.SysUser
				where SysUseName = @name)

	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select UsersInfo.userExists('Tailspin Toys (Head Office)');


--Função que retorna id se existir uma região associada a uma categoria e 0 se não existir
CREATE OR ALTER FUNCTION UsersInfo.Region_CategoryExists (@State varchar(30), @City varchar(30), @Category varchar(30))
RETURNS int
BEGIN
	declare @result int,
			@StateID int,
			@CityID int,
			@CategoryID int
		
	set @StateID = UsersInfo.stateExistsByCode(@State)
	set @CityID = UsersInfo.cityExists(@City)
	set @CategoryID = UsersInfo.categoryExists(@Category)
	
	set @result =(select Reg_CatId
					from UsersInfo.Region_Category
					where Reg_CatCitStateProvinceId = @StateID and Reg_CatCityId = @CityID and Reg_CatCategoryId = @CategoryID)
					
	if @result is null
	begin
		return 0
	end
	
	return @result
END;
--select UsersInfo.Region_CategoryExists('', '', '');

--Procedimento que importa os dados da tabela OldData.City para as novas tabelas UsersInfo.Country, UsersInfo.StateProvince, UsersInfo.City
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
		IF UsersInfo.countryExists (@Country) = 0
		BEGIN
			insert into UsersInfo.Country values(@Country, @Continent)
		END

		--StateProvince
		IF UsersInfo.stateExistsByName (@StateProvince) = 0
		BEGIN
			insert into UsersInfo.StateProvince (StaProName) values(@StateProvince)
		END

		--City
		IF UsersInfo.cityExists (@City) = 0
		BEGIN
			insert into UsersInfo.City (CitName, CitSalesTerritory, CitLasPopulationRecord) values(@City, @SalesTerritory, @LatestRecordedPopulation)
		END

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

--Procedimento que importa os dados da tabela OldData.States para as nova tabela UsersInfo.StateProvince
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
	BEGIN
		IF UsersInfo.stateExistsByName (@Name) = 0
		BEGIN
			insert into UsersInfo.StateProvince (StaProName, StaProCode) values(@Name, @Code)
		END
		ELSE
		BEGIN
			declare @StateID int
			set @StateID = UsersInfo.stateExistsByName (@Name)
			
			UPDATE UsersInfo.StateProvince
			SET StaProCode = @Code
			WHERE StaProID = @StateID;
		END

		FETCH NEXT FROM stateCursor INTO
			@Name,
			@Code
	END 
	CLOSE stateCursor 
	DEALLOCATE stateCursor
END;

--Procedimento que importa os dados da tabela OldData.lookup para as nova tabela UsersInfo.Category
CREATE OR ALTER PROCEDURE Migrate_OldData_lookupTable
AS
BEGIN
	DECLARE lookupCursor CURSOR  
		FOR SELECT Name
		FROM OldData.lookup;

	DECLARE 
		@Name varchar(50)

	OPEN lookupCursor 
	FETCH NEXT FROM lookupCursor INTO 
		@Name
		
	WHILE @@FETCH_STATUS = 0 
	BEGIN
		IF UsersInfo.categoryExists (@Name) = 0
		BEGIN
			insert into UsersInfo.Category (CatName) values(@Name)
		END

		FETCH NEXT FROM lookupCursor INTO
			@Name
	END 
	CLOSE lookupCursor 
	DEALLOCATE lookupCursor
END;

--Procedimento que importa os dados da tabela OldData.Customer para as novas tabelas UsersInfo.SysUser, UsersInfo.Customer, UsersInfo.Region_Category, UsersInfo.BuyingGroup
CREATE OR ALTER PROCEDURE Migrate_OldData_CustomerTable
AS
BEGIN
	DECLARE customerCursor CURSOR  
		FOR SELECT Customer, [Bill To Customer], Category, [Buying Group], [Primary Contact], [Postal Code]
		FROM OldData.Customer;

	DECLARE 
		@Customer varchar(50),
		@BillToCustomer varchar(50),
		@Category varchar(50),
		@BuyingGroup varchar(50),
		@PrimaryContact varchar(50),
		@PostalCode int

	DECLARE
		@FirstSplit varchar(50),
		@SecondSplit varchar(50),
		@City varchar(50),
		@State varchar(50),
		@Mail varchar(50),
		@Pass varchar(20)

	declare
	@result int, 
		@StateID int,
		@CityID int,
		@CategoryID int

	SET @Pass = (UsersInfo.fnHashPassword('Pass123'));

	OPEN customerCursor 
	FETCH NEXT FROM customerCursor INTO 
		@Customer,
		@BillToCustomer,
		@Category,
		@BuyingGroup,
		@PrimaryContact,
		@PostalCode
		
	WHILE @@FETCH_STATUS = 0 
	BEGIN
		IF UsersInfo.buyingGroupExists (@BuyingGroup) = 0
		BEGIN
			insert into UsersInfo.BuyingGroup (BuyGrouName) values(@BuyingGroup)
		END

		
		set @result = UsersInfo.userExists (@Customer)

		print '' + @Customer + ' - ' + cast(@result as varchar(30))

		IF UsersInfo.userExists (@Customer) = 0
		BEGIN
			DECLARE splitCursor CURSOR  
				FOR SELECT * from string_split(@Customer, '(');

			OPEN splitCursor 
			FETCH NEXT FROM splitCursor INTO 
				@FirstSplit

			WHILE @@FETCH_STATUS = 0 
			BEGIN
				set @State = ''
				set @City = ''

				DECLARE SecondSplitCursor CURSOR  
				FOR SELECT * from string_split(@FirstSplit, ',');

				OPEN SecondSplitCursor 
				FETCH NEXT FROM SecondSplitCursor INTO 
					@SecondSplit
				
				WHILE @@FETCH_STATUS = 0 
				BEGIN
					if(UsersInfo.cityExists(REPLACE(@SecondSplit,')','')) != 0)
					begin
						set @City = REPLACE(REPLACE(@SecondSplit,')',''),' ','_')
					end
					
					if(UsersInfo.stateExistsByCode(REPLACE(REPLACE(@SecondSplit,')',''),' ','')) != 0)
					begin
						set @State = REPLACE(REPLACE(@SecondSplit,')',''),' ','')
					end

					FETCH NEXT FROM SecondSplitCursor INTO
						@SecondSplit
				END 
				CLOSE SecondSplitCursor 
				DEALLOCATE SecondSplitCursor

				if(@State != '' and @City != '')
				begin
					set @Mail = REPLACE(@Category,' ','_') + '' + @City + '' + @State + '@' + REPLACE(@BuyingGroup,' ','_')+ '.com'
				end
				else
				begin
					set @Mail = 'HeadOffice@' + REPLACE(@BuyingGroup,' ','_')+ '.com'
				end

				FETCH NEXT FROM splitCursor INTO
				@FirstSplit
			END 
			CLOSE splitCursor 
			DEALLOCATE splitCursor
			
			insert into UsersInfo.SysUser (SysUseEmail, SysUsePassword, SysUseName) values(@Mail, @Pass, @Customer)
		END
		
			/*print 's ' + @State + ' c ' + REPLACE(@City,'_',' ') + ' c ' + @Category
			
			print 'aaaaaaaaaaaaaaaaaaaaaaa'
			set @StateID = UsersInfo.stateExistsByCode(@State)
			set @CityID = UsersInfo.cityExists(REPLACE(@City,'_',' '))
			set @CategoryID = UsersInfo.categoryExists(@Category)
	
			print 'bbbbbbbbbbbbbbbbbbbbbbbbbb'
			set @result =(select Reg_CatId
			from UsersInfo.Region_Category
			where Reg_CatCitStateProvinceId = @StateID and Reg_CatCityId = @CityID and Reg_CatCategoryId = @CategoryID)
					
			print 'ccccccccccccccccccccccccccccccc'
		
		IF UsersInfo.Region_CategoryExists (@State, REPLACE(@City,'_',' '), @Category) = 0
		BEGIN
			set @StateID = UsersInfo.stateExistsByCode(@State)
			set @CityID = UsersInfo.cityExists(REPLACE(@City,'_',' '))
			set @CategoryID = UsersInfo.categoryExists(@Category)
			
			print 's ' + @State + ' c ' + REPLACE(@City,'_',' ') + ' c ' + @Category
			print 's ' + cast(@StateID as varchar(30)) + ' c ' + cast(@CityID as varchar(30)) + ' c ' + cast(@CategoryID as varchar(30))
			insert into UsersInfo.Region_Category (Reg_CatCitStateProvinceId, Reg_CatCityId, Reg_CatCategoryId, Reg_CatCountryId, Reg_CatPostalCode) values(@CategoryID, @CityID, @StateID, 1, @PostalCode)
		END*/

		FETCH NEXT FROM customerCursor INTO
			@Customer,
			@BillToCustomer,
			@Category,
			@BuyingGroup,
			@PrimaryContact,
			@PostalCode
	END 
	CLOSE customerCursor 
	DEALLOCATE customerCursor
END;

--Procedimento que importa os dados das tabelas OldData.Tabela para as novas tabelas SalesInfo.Tabela
CREATE OR ALTER PROCEDURE MigrateAll
AS
BEGIN
	--Exec Migrate_OldData_CityTable
	--DROP TABLE OldData.City
	--Exec Migrate_OldData_StatesTable
	--DROP TABLE OldData.States
	--Exec Migrate_OldData_lookupTable
	--DROP TABLE OldData.lookup
	--Exec Migrate_OldData_CustomerTable
	print 'Importar' 
END;
Exec MigrateAll;




