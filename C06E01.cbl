       IDENTIFICATION DIVISION.                                                 
       PROGRAM-ID. C06E01.                                                      
       AUTHOR. Andrei Stoica.                                                   
      * Continually calculates using two numbers and an operator                
	     * Ends when "s" is entered instead of an operator                         
                                                                                
       DATA DIVISION.                                                           
       WORKING-STORAGE SECTION.                                                 
       01 Num1                                   PIC 9.                         
                                                                                
       01 Num2                                   PIC 9.                         
       01 Result                                 PIC --9.99                     
                                                 VALUE ZERO.                    
                                                                                
       01 Operator                               PIC X.                         
          88 ValidOperator              VALUE '+', '-', '*', '/', 'S'.          
          88 StopOperator               VALUE 'S'.                              
                                                                                
       PROCEDURE DIVISION.                                                      
       00000-CALCULATE-RESULT.                                                  
                                                                                
		         PERFORM GetValidOperator UNTIL ValidOperator                         
                                                                                
           PERFORM UNTIL StopOperator                                           
                                                                                
               DISPLAY 'Enter a single digit number - '                         
               ACCEPT Num1                                                      
                                                                                
               DISPLAY 'Enter a single digit number - '                         
               ACCEPT Num2                                                      
                                                                                
               EVALUATE Operator                                                
               WHEN '+'                                                         
                   ADD      Num1 TO   Num2 GIVING Result                        
               WHEN '-'                                                         
                   SUBTRACT Num2 FROM Num1 GIVING Result                        
               WHEN '*'                                                         
                   MULTIPLY Num1 BY   Num2 GIVING Result                        
               WHEN '/'                                                         
                   DIVIDE   Num1 BY   Num2 GIVING Result                        
               END-EVALUATE                                                     
                                                                                
               DISPLAY 'Result is = ' Result                                    
                                                                                
               INITIALIZE Operator                                              
			            PERFORM GetValidOperator UNTIL ValidOperator                     
                                                                                
           END-PERFORM                                                          
                                                                                
		         DISPLAY 'Exiting calculator.'                                        
                                                                                
           STOP RUN.                                                            
                                                                                
	      GetValidOperator.                                                        
           DISPLAY 'Enter operator(+,-,*,/) OR "S" to Quit - '                  
           ACCEPT Operator                                                      
		         .                                                                    
