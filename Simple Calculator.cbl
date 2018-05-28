       IDENTIFICATION DIVISION.                                         00000200
       PROGRAM-ID. XPE05.                                               00000300
       AUTHOR. Michael Coughlan.                                        00000400
      * Accepts two numbers from the user, multiplies them together     00000500
      * and then displays the result.                                   00000600
       DATA DIVISION.                                                           
       WORKING-STORAGE SECTION.                                                 
       01 Num1                                   PIC 9.                         
                                                                                
       01 Num2                                   PIC 9.                         
       01 Result                                 PIC --9.99                     
                                                 VALUE ZERO.                    
                                                                                
       01 Operator                               PIC X.                         
          88 ValidOperator              VALUE '+', '-', '*', '/'.               
                                                                                
       PROCEDURE DIVISION.                                                      
       00000-CALCULATE-RESULT.                                                  
           DISPLAY 'Enter a single digit number - ' WITH NO ADVANCING           
           ACCEPT Num1                                                          
                                                                                
           DISPLAY 'Enter a single digit number - ' WITH NO ADVANCING           
           ACCEPT Num2                                                          
                                                                                
           DISPLAY 'Enter operator(+,-,*,/) - ' WITH NO ADVANCING               
           ACCEPT Operator                                                      
                                                                                
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
                                                                                
           IF ValidOperator                                                     
               DISPLAY 'Result is = ' Result                                    
           ELSE                                                                 
               DISPLAY 'Operator is not valid!'                                 
           END-IF                                                               
                                                                                
           STOP RUN.                                                            
