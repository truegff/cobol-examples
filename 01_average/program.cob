 01000 IDENTIFICATION DIVISION.
       PROGRAM-ID. AVERAGE.
       AUTHOR. DAVIS & FISHER.

      *REMARKS.    THIS PROGRAM READS A SERIES OF DATA CARDS.
      *            COUNTS THE CARDS. ACCUMULATES THE VALUES
      *            PUNCHED ONE TO EACH CARD. AND. AFTER THE
      *            LAST CARD HAS BEEN READ. COMPUTES THE
      *            AVERAGE VALUE.


 02000 ENVIRONMENT DIVISION.

 02100 CONFIGURATION SECTION.

       SOURCE-COMPUTER. IBM-370-148.
       OBJECT-COMPUTER. IBM-370-148.

 02200 INPUT-OUTPUT SECTION.

       FILE-CONTROL.

           SELECT CARD-FILE   ASSIGN TO STDIN
               ORGANIZATION IS LINE SEQUENTIAL.

           SELECT PRINT-FILE  ASSIGN TO STDOUT. 


 03000 DATA DIVISION.

 03100 FILE SECTION.

       FD CARD-FILE
       LABEL RECORD IS OMITTED.

       01 INPUT-CARD.
           05 I-VALUE              PIC 999V99.
           05 FILLER               PIC x(75).

       FD PRINT-FILE
       LABEL RECORD IS OMITTED.

       01 OUTPUT-LINE.
           05 FILLER               PIC x(15).
           05 O-AVERAGE            PIC 999.9999.
           05 FILLER               PIC X(110).

 03200 WORKING-STORAGE SECTION.
       
         77 COUNTER                  PIC 999.
         77 ACCUMULATOR              PIC 99999V99.


 04000 PROCEDURE DIVISION.
           BEGIN.
               OPEN INPUT CARD-FILE.
               OPEN OUTPUT PRINT-FILE.
               MOVE ZEROS TO COUNTER.
               MOVE ZEROS TO ACCUMULATOR.

       GET-A-VALUE.
           READ CARD-FILE
               AT END GO TO FIND-AVERAGE.

           ADD I-VALUE TO ACCUMULATOR.
           ADD 1       TO COUNTER.
           GO TO GET-A-VALUE.

       FIND-AVERAGE.
           MOVE    SPACES TO OUTPUT-LINE.
           DIVIDE ACCUMULATOR BY COUNTER GIVING O-AVERAGE.
           WRITE OUTPUT-LINE
               AFTER ADVANCING 3 LINES.

       END-OF-JOB.
           CLOSE CARD-FILE.
           CLOSE PRINT-FILE.
           STOP RUN.
