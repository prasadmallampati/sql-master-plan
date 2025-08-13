# dcl :: data control language ;



# 1 grant (USED FOR  PERMIT USER (PRIVILEGES))
			/*
			This command is used to give specific privileges to users or roles on various database objects
			 (e.g., tables, views, stored procedures). 
			 Privileges can include actions like SELECT, INSERT, UPDATE, DELETE, CREATE, ALTER, etc
			 
			 
			 SYNTAX ::===
			 
			 GRANT PRIVALAGE1,PRIVILAGE2 ON TABLE_NAME TO FILEDS

			*/
            
            
         -- NEED USER TO give  access  ACCESS PRIVILEGES 
         CREATE USER 'DEMO'@'LOCALHOST' identified BY 'demopass';
        
        -- to know current how many instance or user there in which privileges givrn to then 
		SHOW GRANTS FOR CURRENT_USER;
        
        
        
        -- example 
        

        GRANT SELECT ON dcluseage TO 'demo'@'localhost';
# 2 revoke  (USED FOR REMOVE AUTHORIZATION)
		/*
		 DEFINITION :===This command is used to remove previously granted privileges from users or roles. 
		It effectively takes away (TAKING BACK )access rights that were assigned using the GRANT command.
        
     
                
                
                /*
                # revoke 
                
                REVOKE privilege_name ON object_name FROM user_name;
                
                
                */
                
                
                -- example
                
                revoke select on dcluseage from 'demo@localhost'