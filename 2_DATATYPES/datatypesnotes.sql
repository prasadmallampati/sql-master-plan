#  SQL DATA TYPES

/*

SQL data types define the kind of data 
that can be stored in a column, 
such as numbers, strings, dates, and times.
Choosing the correct  data type for each column helps ensure data integrity, 
optimizes storage,and improves query performance.


*/

# 1 NUMARIC ::: 
-- These types are used to store numerical data. 
--  The choice depends on whether you need to store
--  whole numbers, decimal values, or large integers.
													/*


													| Data Type                         | Description                                                          |
													| ----------------------------------| ---------------------------------------------------------------------|
													| TINYINT                           | Very small integer (1 byte, range: -128 to 127 or 0 to 255 for unsigned) |
													| SMALLINT                          | Small integer (2 bytes)                                                  |
													| MEDIUMINT                         | Medium integer (3 bytes)                                                 |
													| INT / INTEGER                     | Standard integer (4 bytes)                                               |
													| BIGINT                            | Large integer (8 bytes)                                                  |
													| DECIMAL (M,D) / NUMERIC (M,D)     | Fixed-point exact values                                                 |
													| FLOAT (M,D)                       | Approximate floating point (single precision)                            |
													| DOUBLE (M,D) / REAL               | Approximate floating point (double precision)                            |
													| BIT(M)                            | Bit-field type                                                           |




													*/




-- DATE TIME

													/*

													| Data Type     | Description                                  |
													| ------------- | -------------------------------------------- |
													| DATE      | Stores date only (YYYY-MM-DD)                |
													| DATETIME  | Stores date and time (YYYY-MM-DD HH\:MM\:SS) |
													| TIMESTAMP | Stores date and time (UTC, auto-updated)     |
													| TIME      | Stores time only (HH\:MM\:SS)                |
													| YEAR(2/4) | Stores year values (YYYY)                    |


											    	*/






-- CHAR TYPE STRING

							/*


							| Data Type               | Description                                           |
							| ------------------------| ----------------------------------------------------- |
							| CHAR(M)                 | Fixed-length string (0–255)                           |
							| VARCHAR(M)              | Variable-length string (0–65535, depends on row size) |
							| BINARY(M)               | Fixed-length binary data                              |
							| VARBINARY(M)            | Variable-length binary data                           |
							| TINYBLOB                | Tiny binary large object (≤255 bytes)                 |
							| BLOB                    | Binary large object (≤65 KB)                          |
							| MEDIUMBLOB              | Medium binary large object (≤16 MB)                   |
							| LONGBLOB                | Large binary large object (≤4 GB)                     |
							| TINYTEXT                | Tiny text (≤255 characters)                           |
							| TEXT                    | Text (≤65 KB)                                         |
							| MEDIUMTEXT              | Medium text (≤16 MB)                                  |
							| LONGTEXT                | Large text (≤4 GB)                                    |
							| ENUM('val1','val2',...) | One value from a predefined list                      |
							| SET('val1','val2',...)  | Multiple values from a predefined list                |


							*/
                            
                            
                            
                            
                            -- syntax  
                            -- filed name  datatype 
                            
                            -- example
                            
                            create table datatypesexampletable(
                            id int, 
                            name varchar(20), 
                            address char(50),
                            salary float,
                            join_date date,
                            job_title text,
                            current_datee timestamp default current_timestamp,
                            offer_date date);
                            
                            

                            
                            
                            
                            
                            
                            
                            