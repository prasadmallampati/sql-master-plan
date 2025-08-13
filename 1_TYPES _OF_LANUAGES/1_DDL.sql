-- DDL  DATA DEFINTION LANGUAGE 
-- HERE THE THINGS CREATE,ALTER,RENAME,DROP,TURNCATE


-- 1 CREATE :: USED TO CREATE DATABASE/TABLE/VIEW/STORED PROCEDURE/TRIGGER
	# SYNTAX FOR CREATE  DATABASE AND EXAMPLE
	/*
	--	HOW TO CREATE DATABASE, SYNTAX
    
        CREATE DATABASE DATABASE_NAME;
        
	*/
    
    -- EXAMPLE DATABASE CREATION
    create database SQLMASTER;
    
    
    # HOW TO USE DATABASE 
    -- USE DATABASE_NAME;
    
    -- EXAMPLE 
    USE SQLMASTER;
    
	-- CREATE TABLE SYNTAX AND EXAMPLE
    
    /*
		-- SYNTAX FOR TABLE CREATION
		CREATE TABLE TABLE_NAME(FILEDS DATATYPE, CONSTRAINTS)
    
    */
	
    
	-- EXAMPLE FOR TABLE CREATION
    
    create table registrations(reg_id int, name varchar(30));
    
    create table logins (log_id int, name varchar(30));

	create table employee(emp_id int primary key,emp_name varchar(50),is_working bool,salary int);


				-- how to create view  syntax and example
                -- A view is a virtual table in SQL that is based on the result of a SELECT query. It doesn’t store data itself, but presents data stored in other tables.
				/*

				create view view_name  as
                select col 
                from table_name
                where condition;
                
				*/
                
                
                create view regisration_view as 
                
                select * from registration
                
                where reg_id=1;
                
                
                # TABLE FOR DCL ACTIONS
                CREATE TABLE DEMO(NAME VARCHAR(20), ID INT);
                CREATE TABLE DCLUSEAGE(ID INT,NAME VARCHAR(20));
                
                -- stored procedure :
                
                -- A stored procedure is a set of SQL statements saved in the database that can be executed as a single unit.
                -- It can take parameters, return values, and contain control-flow logic.
                
                -- syntax 
                /*
					create procedure procedure_name
                     parameter  datatype
                     
                     as
                     begin
                     
                     end
                
                */
                
                
		-- how to create trigger and syntax::::
        -- trigger is like store procedure when event occur it work like insert update etc...
        
        /*
			create trigger trigger_name 
			on table
			AFTER update
			as 
			
			BEGIN
					sql statement ::::::::::
			
			end
        
        */
		-- example trigger
		
		/*create trigger after_insert_reg  
		on  registrations
		
		after insert
		
		as 
		
		
		begin
					INSERT INTO logins (log_id, name)
				SELECT
					reg_id,
					name
				FROM
					logins;
		
		end
		*/
		
		
        
                
                
-- 2 ALTER  :: USED TO CHANGE STRUCTURE OF TABLE/
-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table. 
-- It can also be used to add and drop various constraints on a table.

-- Syntax for Adding a Column
	-- alter :: modify exsiting type or anythings
	
				/*
                
                
                alter table table_name
                add cloumn_name datatype;
				
				
				*/
                
                
                -- example
                
                alter table employee
                add dept_name varchar(20);
                
                
                
-- 3 RENAME :: USED TO RENAME TABLE/ EXSITING TO NEW  

  -- syntax 
  -- alter table employee rename  to new_tablename
  
  -- example
  
  
   alter table employee rename to emp;
   
   
   
-- 4 DROP   :: USED TO DROP EXSITING TABLE INCLUDIG  STRUCTURE ALSO
-- before drop create dummy 
-- sytax   drop table table_name;
 create table dummy(name varchar(20),id int);
# example 
 drop table dummy;
 
-- 5 TRUNCATE :: USED TO TRUNCATE REMOVE ALL ROW OF TABLE,IT WILL LEAVE STRUCTURE OF TABLE INTACT


# create dummy1 for truncate table


create table dummy1 (name varchar(40), id int);

-- syntax truncate table tablename;

# example

truncate table dummy1;





