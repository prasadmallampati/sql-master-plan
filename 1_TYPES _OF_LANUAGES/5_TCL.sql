# tcl transaction control lanuage 
	/*
	definiton :=== Transaction Control Language (TCL) commands are used to manage transactions in a database. 
	A transaction is a sequence of one or more SQL statements that are executed as a single logical unit.
	 TCL commands ensure data integrity by allowing you to control whether a transaction's changes are made permanent or undone.
	 */

# 1 commit 
# 2 rollback
# 3 savepoint 

# 1 commit 
/*
The COMMIT command makes all changes made within the current transaction permanent.
 Once you commit a transaction, the changes are written to the database and cannot be undone with ROLLBACK
 
 
 
 syntax::
			commit;
 */
 
 
		-- example 
		 start transaction ;
		 
		 insert into  logins values(5,'css');
		 
		 
		 commit;
 
 
 
 
 
 
# 2 rollback

/*
The ROLLBACK command is used to undo all changes made during the current transaction.
 It restores the database to the state it was in before the transaction began.
 
-- syntax 

	rollback ;

*/


-- example

START TRANSACTION;


INSERT INTO logins VALUES (5, 'hey');

-- This command undoes the previous INSERT, and the new row is removed
ROLLBACK;




# 3  savepoint
/*

The SAVEPOINT statement creates a named marker within a transaction. 
You can then ROLLBACK to this specific point, undoing only the changes that occurred after it was created.


syntax :
		SAVEPOINT savepoint_name;


							-- Creating a Savepoint


							SAVEPOINT savepoint_name;



							-- Rolling Back to a Savepoint


							ROLLBACK TO SAVEPOINT savepoint_name;

*/


-- example

START TRANSACTION;

-- Insert the first record
INSERT INTO logins VALUES (6, 'hi');

-- Create a savepoint
SAVEPOINT my_savepoint;

-- Insert a second record
INSERT INTO logins VALUES (7, 'hell');

-- Rollback only to the savepoint. The second insert is undone, but the first is not.
ROLLBACK TO my_savepoint;

-- The transaction can still be committed to save the first insert.
COMMIT;
