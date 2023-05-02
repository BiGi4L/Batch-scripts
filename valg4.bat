@echo off 
:BEGIN
CLS
CHOICE /N /C:1234 /M "velg mellom (1 zip alt , 2 zip alle .txt, 3 zip text1.txt, 4 velg selv )"%1
IF ERRORLEVEL ==4 GOTO FOUR
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TOW
IF ERRORLEVEL ==1 GOTO ONE

GOTO END

:FOUR
set /p folder=hvilken mappe skal komprimeres:
set /p zipname=plassering og navn. 
"C:\Program Files\WinRAR\WinRAR.exe" a -r "%zipname%" "%folder%"
GOTO END

:THREE
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\zip_mapper\kompzip1.zip" "C:\Batch-script\test1.txt"
GOTO END

:TOW
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\zip_mapper\textzip1.zip" "C:\Batch-script\*.txt"
GOTO END

:ONE
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\zip_mapper\altzip1.zip" "C:\Batch-script\*"

:END
pause
exit