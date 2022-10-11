	-- Step : 01
	/*************************************************************
	-- Gool : Create a new database called AccountancyMySql.
	-- ***********************************************************
	-- Version    Date           Author      Description
	-- ******     **********     *******     **************
	-- 01         12-10-2022     JamilM       New 
	-- ***********************************************************/ 
	
	-- Check whether the database exists.
	DROP DATABASE IF EXISTS  AccountancyMySql;

	-- Create a new database.
	CREATE DATABASE IF NOT EXISTS  AccountancyMySql;
	
	-- Use  AccountancyMySql database.
	USE  AccountancyMySql;
	
	-- Step : 02
	/**************************************************************
	-- Gool : Create a new table called Person.
	-- ************************************************************
	-- Version    Date           Author      Description
	-- ******     **********     *******     **************
	-- 01         12-10-2022     JamilM       New 
	-- ************************************************************/ 
	
	-- Check whether the table Product exists.
	DROP TABLE IF EXISTS Person;
	
	-- Create a table Person whether not exists
	CREATE TABLE IF NOT EXISTS Person
	(
		 Id 				INT 				NOT NULL	AUTO_INCREMENT
		,FirstName			VARCHAR(50) 		NOT NULL
		,LastName			VARCHAR(50) 		NOT NULL	
		,Email 				VARCHAR(100) 		NOT NULL
		,IsActive			BIT					NOT NULL	DEFAULT 1                      
		,Note    			VARCHAR(200)      	NULL		DEFAULT NULL
		,DateCreated   		DATETIME			NOT NULL
		,DateModified		DATETIME			NOT NULL		
		,CONSTRAINT PK_Person_Id PRIMARY KEY CLUSTERED(Id)
	)ENGINE=InnoDB;
	
	-- Step : 03
	/**************************************************************
	-- Gool : Fill table Person with data.
	-- ************************************************************
	-- Version    Date           Author      Description
	-- ******     **********     *******     **************
	-- 01         12-10-2022     JamilM       New 
	-- ************************************************************/ 
	
	INSERT INTO Person
	(
		 FirstName
		,LastName 		
		,Email 	
		,IsActive 		  
		,Note 
		,DateCreated 
		,DateModified   
	)
	VALUES 
	 ('Hans', 'Sander', 'h.sander@gmail.com', 1, NULL, SYSDATE(), SYSDATE())
	,('Sam', 'Jan', 's.jan@hotmail.com', 1, NULL, SYSDATE(), SYSDATE())
	,('Hind', 'Jansen', 'h.jansen@online.nl', 1, NULL, SYSDATE(), SYSDATE())
	,('Pol', 'Jaohn', 'p.john@sun.com', 1, NULL, SYSDATE(), SYSDATE())
	,('Mo', 'Salah', 'm.salah@mobutrecht.nl', 1, NULL, SYSDATE(), SYSDATE());
	
	-- Step : 04
	/**************************************************************
	-- Gool : Create a new table called Invoice.
	-- ************************************************************
	-- Version    Date           Author      Description
	-- ******     **********     *******     **************
	-- 01         12-10-2022     JamilM       New 
	-- ************************************************************/ 
	
	-- Check whether the table Invoice exists.
	DROP TABLE IF EXISTS Invoice;
	
	-- Create a table Invoice whether not exists
	CREATE TABLE IF NOT EXISTS Invoice
	(
		 Id 				INT 				NOT NULL	AUTO_INCREMENT
		,PersonId			INT					NOT NULL
		,InvoiceNumber		INT 				NOT NULL	UNIQUE
		,InvoiceDate		DATETIME			NOT NULL
		,Amount				DECIMAL(5,2)		NOT NULL
		,ProductName		VARCHAR(100) 		NOT NULL	
		,IsActive			BIT					NOT NULL	DEFAULT 1                      
		,Note    			VARCHAR(200)      	NULL		DEFAULT NULL
		,DateCreated   		DATETIME			NOT NULL
		,DateModified		DATETIME			NOT NULL		
		,CONSTRAINT PK_Invoice_Id PRIMARY KEY CLUSTERED(Id)
		,FOREIGN KEY (PersonId) REFERENCES Person(Id)
	)ENGINE=InnoDB;

	-- Step : 05
	/**************************************************************
	-- Gool : Fill table Invoice with data.
	-- ************************************************************
	-- Version    Date           Author      Description
	-- ******     **********     *******     **************
	-- 01         12-10-2022     JamilM       New 
	-- ************************************************************/ 
	
	INSERT INTO Invoice
	(
		 PersonId
		,InvoiceNumber 		
		,InvoiceDate 	
		,Amount 		
		,ProductName    
		,IsActive    
		,Note 
		,DateCreated 
		,DateModified   
	)
	VALUES 
	 (1, 123456, '2022-10-01', 1.21, 'Cheese', 1, NULL, SYSDATE(), SYSDATE())
	,(2, 123457, '2022-10-02', 4.65, 'Banana', 1, NULL, SYSDATE(), SYSDATE())
	,(3, 123458, '2022-10-03', 3.35, 'Bread', 1, NULL, SYSDATE(), SYSDATE())
	,(4, 123459, '2022-10-04', 4.53, 'Tomato', 1, NULL, SYSDATE(), SYSDATE())
	,(5, 123451, '2022-10-05', 1.63, 'Coffee', 1, NULL, SYSDATE(), SYSDATE())