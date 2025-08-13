# DML:: DATA MANIPLIATION LANGUAGE ::::
# INSERT : The INSERT statement is used to add new rows of data into a table.
# UPDATE : The UPDATE statement is used to modify existing data within a table.
# DELETE : The DELETE statement is used to remove one or more rows from a table




/*
insert syntax
=============

insert into table_name (column1,column2) values(value1,value2);
or
insert into table_name values(value1,value2);
*/


USE SQLMASTER;
# example

 INSERT INTO  registrations VALUES(1,'PYTHON');
 INSERT INTO registrations VALUES(2,'SQL');
 INSERT INTO registrations values(3,'FLASK');
 insert INTO registrations VALUES(4,'FASTAPI');
 
 insert into logins values(4,'tableau');
 insert into logins values(3,'powerbi');
 insert into logins values(2,'python');
 insert into  logins values(1,'fastapi');
 
 SELECT * FROM registrations;



insert INTO DCLUSEAGE VALUES(1,"PRASAD");
insert INTO DCLUSEAGE VALUES(2,"NARSI");
insert INTO DCLUSEAGE VALUES(3,"PALLAVI");


-- update is used to modify exsiting data 


-- syntax


-- update table_table set column_name == something  where  condition ;


UPDATE registrations
SET name = 'databricks'
WHERE reg_id = 3;


# -- delete


-- syntax delete  from  table_name where conditon;

# example

delete from registrations where reg_id =3;

select * from registrations;


