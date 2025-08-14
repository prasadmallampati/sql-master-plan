
# 3 Constraints::

/*

SQL constraints are rules enforced on data columns:
in a  table to limit  the type of data that can be inserted or updated ,
the ensures the accuracy and intigrity  of data within  a database 
They are listed below 
*/

/*

PRIMARY KEY: done 
A constraint that uniquely identifies each record in a table.
It must contain unique values and cannot contain NULL values. 
A table can only have one primary key.


FOREIGN KEY: done
A constraint that links two tables together by referencing the primary key of another table. 
It ensures referential integrity, 
preventing actions that would destroy links between tables.


UNIQUE: done
A constraint that ensures all values in a column are distinct.
Unlike a primary key, a table can have multiple unique constraints,
and a unique column can contain one NULL value.


CHECK: done
A constraint that enforces a specific condition on the values in a column. 
Only values that satisfy the defined condition can be inserted or updated in that column.


DEFAULT: done 
A constraint that provides a default value for a column when no value is explicitly specified during an INSERT operation.


NOT NULL: done 
A constraint that ensures a column cannot contain NULL values. This means that a value must always be provided for that column when inserting or updating records.

note : we can remove constraints 


alter table table_name
drop  check constraint_name;

-- example
ALTER TABLE Students
DROP CHECK constraint_name;
*/


# syntax ::
# filed_name datatype constrint_name;



create table students (
			student_id int,
            student_name varchar(50),
            age int );
create table orders (
			order_id int,
            order_no int,
            student_id int);


# alter table to add primary key
alter table students
add primary key(student_id);

# alter table to  add foreign key
alter table orders
add foreign key(student_id)
references  students(student_id);


# add unique

alter table orders
add unique(order_no);


# check 

alter table voters
add check(voter_age>=18);

# not null 

create table voters(
voter_id int primary key,
voter_no int unique,
voter_name varchar(100) not null,
voter_age int,
vote_cate_date  timestamp default current_timestamp
);

# default 

create table voters(
voter_id int primary key,
voter_no int unique,
voter_name varchar(100) not null,
voter_age int,
vote_cate_date  timestamp default current_timestamp
);