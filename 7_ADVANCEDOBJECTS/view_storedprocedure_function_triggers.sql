# advanced  objects

# 1 views
# 2 stored procedures
# 3 functions
# 4 triggers
/*
| Object Type          | Returns Data? | Stores Data? | Auto Executes? | Accepts Parameters? | Use Inside Query? |
| -------------------- | ------------- | ------------ | -------------- | ------------------- | ----------------- |
| **View**             | ✅ Yes         | ❌ No         | ❌ No           | ❌ No                | ✅ Yes             |
| **Stored Procedure** | ✅/❌ Optional  | ❌ No         | ❌ No           | ✅ Yes               | ❌ No              |
| **Function**         | ✅ Yes         | ❌ No         | ❌ No           | ✅ Yes               | ✅ Yes             |
| **Trigger**          | ❌ No          | ❌ No         | ✅ Yes          | ❌ No                | ❌ No              |


*/

# 1 views

/*
Definition
A view is a virtual table that stores a SQL query for reuse.
It does not store actual data; it stores the query definition 
and pulls data from the underlying tables when accessed.
Syntax :
create view view_name as
select columns from table
where condition;

Use Cases

Simplifies complex queries.

Improves security by restricting column access.

Keeps logic in one place instead of repeating queries.
*/

-- example 

create view student_names_data as

select name from Stutable2

where status='active';

select * from student_names_data;


--  stored procedures


/*
Definition

A stored procedure is a precompiled set of SQL statements stored in the database, 
which can be executed by calling its name

Use Cases

Automates repetitive tasks.

Improves performance by precompiling SQL.

Can accept parameters for dynamic execution.

Syntax 


create procedure procedure_name as

begin
sql statements

end;


*/

-- example 

delimiter $$


create procedure active_students()
begin
select name from stutable2;
end $$
delimiter ;
call active_students();



# Functions

/*

Defintion 
A function is similar to a stored procedure but must return a value and can be used inside SQL queries.

Syntax 
create function function_name(parameter data type)
return datatype
begin
  return (value or expression)
end;

*/

-- example 
delimiter $$
create function getStudentCount()
returns int
deterministic
begin
		declare totalstu int;
        select  count(*) into totalstu from stutable2;
        return totalstu;
end $$
delimiter ;


SELECT getStudentCount();









# Triggers

/*
Definition

A trigger is a set of SQL statements that automatically executes
in response to certain database events (INSERT, UPDATE, DELETE).

Syntax 
		create trigger trigger_name
		on table_name
		as
		begin
		--statements
		end
        
        
Use Cases

Automatically log changes.

Enforce business rules.

Keep audit trails without manual effort.
*/



-- example

DELIMITER $$

CREATE TRIGGER trg_inactive_student
BEFORE UPDATE ON stutable2
FOR EACH ROW
BEGIN
    IF NEW.status = 'Inactive' THEN
        SET NEW.branch = 'N/A';
    END IF;
END $$

DELIMITER ;










 CREATE TABLE stutable2 (student_id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(50),
    year_of_passout INT,
    status VARCHAR(20)   -- Active / Inactive
);


-- Students
INSERT INTO Stutable2 VALUES
(1, 'Alice', 'CSE', 2024, 'Active'),
(2, 'Bob', 'CSE', 2024, 'Active'),
(3, 'Charlie', 'ECE', 2023, 'Inactive');


