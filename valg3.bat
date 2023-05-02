@echo off 
:BEGIN
CLS
CHOICE /N /C:123 /M "velg mellom (1 zip alt , 2 zip alle .txt, 3 zip text1.txt )"%1
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TOW
IF ERRORLEVEL ==1 GOTO ONE
GOTO END

:THREE
CHOICE /N /C:123 /M "hvor vil du zippe (1 bare zip, 2 bare batch, 3 begge mappene)"%1
IF ERRORLEVEL ==3 GOTO THREE3
IF ERRORLEVEL ==2 GOTO TOW3
IF ERRORLEVEL ==1 GOTO ONE3
GOTO END

:TOW
CHOICE /N /C:123 /M "hvor vil du zippe (1 bare zip, 2 bare batch, 3 begge mappene)"%1
IF ERRORLEVEL ==3 GOTO THREE2
IF ERRORLEVEL ==2 GOTO TOW2
IF ERRORLEVEL ==1 GOTO ONE2
GOTO END

:ONE
CHOICE /N /C:123 /M "hvor vil du zippe (1 bare zip, 2 bare batch, 3 begge mappene)"%1
IF ERRORLEVEL ==3 GOTO THREE1
IF ERRORLEVEL ==2 GOTO TOW1
IF ERRORLEVEL ==1 GOTO ONE1
GOTO END

:THREE3
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\zip_mapper\textzip1.zip" "C:\Batch-script\test1.txt"
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\Batch-script\textzip1.zip" "C:\Batch-script\test1.txt"
GOTO END
:TOW3
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\Batch-script\textzip1.zip" "C:\Batch-script\test1.txt"
GOTO END
:ONE3
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\zip_mapper\textzip1.zip" "C:\Batch-script\test1.txt"
GOTO END


:THREE2
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\zip_mapper\textzip1.zip" "C:\Batch-script\*.txt"
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\Batch-script\textzip1.zip" "C:\Batch-script\*.txt"
GOTO END
:TOW2
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\Batch-script\textzip1.zip" "C:\Batch-script\*.txt"
GOTO END
:ONE2
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\zip_mapper\textzip1.zip" "C:\Batch-script\*.txt"
GOTO END


:THREE1
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\zip_mapper\altzip1.zip" "C:\Batch-script\*"
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\Batch-script\altzip1.zip" "C:\Batch-script\*"
GOTO END
:TOW1
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\Batch-script\altzip1.zip" "C:\Batch-script\*"
GOTO END
:ONE1
"C:\Program Files\WinRAR\WinRAR.exe" a -r "C:\zip_mapper\altzip1.zip" "C:\Batch-script\*"
:END




pause