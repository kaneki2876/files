@echo off
title Rar Password Cracker (Numeric)
mode con: cols=60 lines=30
SET PSWD=0
SET DEST=%TEMP%\%RANDOM%
MD %DEST%

:RAR
cls
echo ----------------------------------------------
echo                   GET DETAIL
echo ----------------------------------------------
echo.
SET/P "UNRAR_PATH=Enter Full Path of Unrar.exe (not including itself) :"
SET/P "PATH=Enter Full Path of the file (not including the file name) : "
IF "%PATH%"=="" goto PERROR
cd %PATH%
SET/P "NAME=Enter File Name  : "
IF "%NAME%"=="" goto NERROR
goto NEXT

:NERROR
echo ----------------------------------------------
echo                      ERROR
echo ----------------------------------------------
echo Sorry you can't leave it blank.
pause
goto RAR

:PERROR
echo ----------------------------------------------
echo                      ERROR
echo ----------------------------------------------
echo Sorry you can't leave it blank.
pause
goto RAR

:NEXT
IF EXIST "%PATH%\%NAME%" GOTO START
goto PATH

:PATH
cls
echo ----------------------------------------------
echo                     ERROR
echo ----------------------------------------------
echo Opppss File does not Exist..
pause
goto RAR

:START
cls
echo.
echo  Cracking... This might takes hours...
SET /A PSWD+=1
cd %UNRAR_PATH%
unrar E -INUL -P%PSWD% "%PATH%\%NAME%" "%DEST%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START

:FINISH
RD %DEST% /Q /S
cls
echo ----------------------------------------------
echo                     CRACKED
echo ----------------------------------------------
echo.
echo PASSWORD FOUND!
echo FILE  = %NAME%
echo CRACKED PASSWORD = %PSWD%
pause >NUL
exit