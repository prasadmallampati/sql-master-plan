# union and union all 


-- union :: combines two or more select statement into a single result set and remove duplicates.....

/*
	1: -combines two or more select statement into a single result set and remove duplicates.....
    2:- automatically remove duplicates
    3:  performs implit distinct sort to remove dulicates 
    4:: slower then unionall bcz checking duplicates
    
syntax:
	select * from table_1
    union
    select * from  table_2

*/

	select * from stutable
    union
    select * from coursetable;


-- union all :: union used for two or more select statement into single result and keeps dupliacates..


/*
	1:combines two or more select statement into single result  without remove of duplicatees
    2::keeps duplicates if any
    3::noextra sort
    4:: faster then union since no duplicate check
    
    
    -- syntax::
    
      select * from table_1
      
      union all 
      
      select * from table_2;
*/
-- example

 select * from stutable
 
 union all 
 
 select * from coursetable;
 
 
/*

5️ Performance Considerations

UNION:

Performs a duplicate removal step (equivalent to SELECT DISTINCT).

Can be significantly slower for large datasets due to sorting or hashing.

Uses more memory.

UNION ALL:

Simply appends results, so it’s faster.

Uses less memory.

Should be preferred when you do not need to remove duplicates.



*/
 