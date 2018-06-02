       IDENTIFICATION DIVISION.
       PROGRAM-ID. Chap6Ex2.
      *
      * Chap 6 Ex 2 - Countdown
      *

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-COUNTDOWN                 PIC 9(2) VALUE 0.

       01 WS-NAME                      PIC X(35) VALUE SPACE.

       01 WS-INVERSE-COUNTDOWN         PIC S9(4) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter your name: "
            ACCEPT WS-NAME

            DISPLAY "Enter the count-down start value: "
            ACCEPT WS-COUNTDOWN

            DISPLAY "Getting ready to display your name. "

            PERFORM VARYING WS-COUNTDOWN FROM WS-COUNTDOWN BY -1
                   UNTIL WS-COUNTDOWN = 0

               DISPLAY WS-COUNTDOWN

            END-PERFORM

            DISPLAY "Your name is " WS-NAME

            STOP RUN.
