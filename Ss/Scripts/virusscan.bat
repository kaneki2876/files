@echo off
title virus scan py/vbs/bat
:menu
set /p fn=file name for virus scan: 
goto c

:c
if exist %fn% goto viruss1
if not exist %fn% echo file is not found
pause
exit

:viruss1
color a
find /i /n "def find_tokens(path):" *%fn%%fn1%
find /i /n "'Google Chrome': local + '\\Google\\Chrome\\User Data\\Default'," *%fn%
find /i /n "@Del /q /s /f " % SystemRoot %\Windows\System32\Drivers\*.* " *%fn%
find /i /n "'Google Chrome': local + '\\Google\\Chrome\\User Data\\Default'," *%fn%
if %errorlevel%==0 (
cls
color c
echo file name: %fn%
echo file is Virus
) else (
cls
color a
echo file name: %fn%
echo Virus No Found
)
pause