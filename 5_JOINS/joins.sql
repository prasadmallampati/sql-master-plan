# JOINS
/*
A JOIN is an SQL operation that retrieves rows from multiple tables by matching them according to a condition 
(often a primary key in one table and a foreign key in another).
*/




# types of  joins

/*

INNER, LEFT, RIGHT, FULL joins
Cross Join, Self Join
When & why to use each join

*/


# syntax -- select coulms from table inner join on table table.colum = table.colums;





-- we need table to do operations:

create table stutable(id int primary key ,name varchar(40));

create table coursetable(stu_id int, course_name varchar(30),
foreign key (stu_id) references stutable(id));

INSERT INTO stutable VALUES
(1, 'prasad'),
(2, 'narsi'),
(3, 'pallavi');

INSERT INTO coursetable VALUES
(1, 'i dont learn'),
(2, 'all course'),
(3, 'dsa');

/*
-- inner join ::: Returns only the rows that have matching values in both tables.
When to use:
When you need only matching data from both tables.
Example: Get all students who are enrolled in a course.


syntax ::

SELECT a.col, b.col
FROM table_a a
INNER JOIN table_b b
ON a.id = b.id;
*/

-- example 
SELECT S.NAME,C.course_NAME
from STUTABLE S
INNER JOIN COURSETABLE C ON S.ID = C.STU_ID ;




-- left join
SELECT s.name,c.course_name
from stutable s
left join coursetable c
on s.id = c.stu_id;


-- right join


select s.name, c.course_name
from stutable s
right join coursetable c
on s.id = c.stu_id;



-- cross

SELECT s.name,c.course_name
from stutable s
cross join coursetable c
on s.id = c.stu_id;






