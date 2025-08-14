/*


1. What is SQL?

SQL (Structured Query Language) is a standard programming language used to manage and manipulate relational databases.

It allows you to:

Create database structures (tables, views, indexes)

Insert, Update, Delete, and Retrieve data

Control access to data (permissions, roles)

Ensure data integrity through constraints

It is declarative—you describe what you want, and the database decides how to get it.

2. History & Importance of SQL in Databases
History

1970: Dr. Edgar F. Codd (IBM) proposed the relational model for databases.

1974: IBM developed SEQUEL (Structured English Query Language), which later became SQL.

1986: ANSI (American National Standards Institute) adopted SQL as a standard.

1987–Present: ISO standardizes SQL, with regular updates (SQL-92, SQL:1999, SQL:2003, SQL:2011, SQL:2019).

Importance

Industry Standard – Almost all relational database systems (MySQL, PostgreSQL, Oracle, SQL Server) support SQL.

Data Integrity – Enforces rules like primary keys, foreign keys, and constraints.

Data Access Control – Manages who can view or change data.

Portability – SQL code can be adapted across different RDBMS with minor changes.

Versatility – Can be used for small-scale applications to massive enterprise systems.

3. SQL vs NoSQL
Feature	SQL (Relational)	NoSQL (Non-relational)
Data Model	Tables with rows & columns	Key-Value, Document, Column, or Graph
Schema	Fixed (predefined columns)	Flexible (schema-less)
Scalability	Vertical (scale up server resources)	Horizontal (add more servers)
Transactions	ACID-compliant (Atomicity, Consistency, Isolation, Durability)	Often BASE (Basically Available, Soft state, Eventual consistency)
Best For	Structured, consistent data	Unstructured/semi-structured, fast-changing data
Examples	MySQL, PostgreSQL, Oracle	MongoDB, Cassandra, Redis, Neo4j
4. Client-Server Architecture in Databases

Definition:
A model where the client (front-end application) requests data and the server (database system) processes and responds.

How it works:

Client sends a SQL query (e.g., from a web app, desktop app, or CLI).

Server (DBMS) receives the query, processes it, and fetches data.

Server sends results back to the client.

Client displays or uses the results.

Diagram (Text Version):

[Client App]  <--SQL Query-->  [Database Server]
               <--Results--


Benefits:

Centralized data storage & security

Multiple clients can access the same database

Easier maintenance and backups


*/