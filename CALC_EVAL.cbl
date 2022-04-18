      ******************************************************************
      * Author: Cristopher Bohol
      * Date: March 29, 2022
      * Purpose: Programming Languages Report
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALC_EVAL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01  NUM1      PIC 9(3).
           01  NUM1-TXT  PIC X(3) VALUE SPACES.
           01  NUM2      PIC 9(3) VALUE 0.
           01  NUM2-TXT  PIC X(3) VALUE SPACES.
           01  RESULT    PIC S9(6)V9(2) VALUE 0.
           01  RESULT-EDIT   PIC -ZZZ,ZZ9.99.
           01  OPERATOR     PIC X VALUE SPACES.
       PROCEDURE DIVISION.
           DISPLAY "COBOL CALCULATOR".
           DISPLAY "Enter First Number : ".
           ACCEPT NUM1-TXT.
           MOVE NUM1-TXT TO NUM1.
           DISPLAY "Enter Operator (+,-,*,/): ".
           ACCEPT OPERATOR.
           DISPLAY "Enter Second Number: ".
           ACCEPT NUM2-TXT.
           MOVE NUM2-TXT TO NUM2.
           EVALUATE OPERATOR
               WHEN "+"
                   ADD NUM1, NUM2 GIVING RESULT
               WHEN "-"
                   SUBTRACT NUM2 FROM NUM1 GIVING RESULT
               WHEN "*"
                   MULTIPLY NUM1 BY NUM2 GIVING RESULT
               WHEN "/"
                   IF NUM2 = 0 THEN
                       DISPLAY "Cannot Be Divided to 0"
                       GOBACK
                   ELSE
                       DIVIDE NUM1 BY NUM2 GIVING RESULT
               WHEN OTHER
                   DISPLAY "INVALID OPERATOR".
           MOVE RESULT TO RESULT-EDIT.
           DISPLAY NUM1-TXT, OPERATOR, NUM2-TXT" = " RESULT-EDIT.
       END PROGRAM CALC_EVAL.
