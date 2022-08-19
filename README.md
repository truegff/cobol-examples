# cobol-examples

```
C:\dev\practice\cobol\main\00_hello>echo %GNUCOBOL_HOME%
C:\dev\tools\gnucobol

C:\dev\practice\cobol\main\00_hello>dir
 Volume in drive C has no label.
 Volume Serial Number is 8A91-68B0

 Directory of C:\dev\practice\cobol\main\00_hello

08/19/2022  10:59 PM    <DIR>          .
08/19/2022  10:59 PM    <DIR>          ..
08/18/2022  01:59 AM               234 hello.cob
               1 File(s)            234 bytes
               2 Dir(s)   4,125,364,224 bytes free

C:\dev\practice\cobol\main\00_hello>..\compile.bat hello.cob
GnuCOBOL 3.1.2.0        hello.cob            Fri Aug 19 23:08:15 2022  Page 0001

LINE    PG/LN  A...B............................................................

000001   01000 IDENTIFICATION DIVISION.
000002   01100 PROGRAM-ID. hello-world.
000003
000004   02000 ENVIRONMENT DIVISION.
000005   02100 CONFIGURATION SECTION.
000006
000007   03000 DATA DIVISION.
000008
000009   04000 PROCEDURE DIVISION.
000010             DISPLAY "Hello, world!"
000011             .


0 warnings in compilation group
0 errors in compilation group

C:\dev\practice\cobol\main\00_hello>dir
 Volume in drive C has no label.
 Volume Serial Number is 8A91-68B0

 Directory of C:\dev\practice\cobol\main\00_hello

08/19/2022  11:08 PM    <DIR>          .
08/19/2022  11:08 PM    <DIR>          ..
08/18/2022  01:59 AM               234 hello.cob
08/19/2022  11:08 PM            44,550 hello.exe
               2 File(s)         44,784 bytes
               2 Dir(s)   4,124,925,952 bytes free

C:\dev\practice\cobol\main\00_hello>hello.exe
Hello, world!

C:\dev\practice\cobol\main\00_hello>
```
