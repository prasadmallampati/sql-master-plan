# advanced  objects

# 1 views
# 2 stored procedures
# 3 functions
# 4 triggers


# 1 views

/*
Definition
A view is a virtual table that stores a SQL query for reuse.
It does not store actual data; it stores the query definition and pulls data from the underlying tables when accessed.
Syntax :
create view view_name as
select columns from table
where condition;
*/

-- example 

create view student_names as

select name from stutable

where id=1;



