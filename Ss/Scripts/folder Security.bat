@echo off
:start4
cls
title folder lock login
:begin
color 4
echo Access Code : 
set /p ac=
if %ac%==123 (
color a
echo Access Granted
) else (
echo Access Denied
goto begin
)
goto fSecurity

:fSecurity
color 9
:dpro
echo.
echo.
echo.
echo ******************************************************************************
echo *                                                                            *
echo *                               folder protector                             *
echo *                                                                            *
echo ******************************************************************************
echo *                                                                            *
echo *      1. create folder                           2. open folder             *
echo *                                                                            *
echo *                                                                            *
echo ******************************************************************************
echo.
echo.
echo.
set /p answer="Number: "
if %answer%==1 goto 1scr
if %answer%==2 goto 2scr
if %answer%==back goto end6

:1scr
echo "lock folder"
echo You can keep your things safe like passwords written inside a text document or private pictures no one has access
echo .
echo to it and no one can know about it just important to 
echo .
echo use it more detailed explanation please contact the software developer
echo .
set /p password=enter thepassword for your folder:
goto lockedfolder

:lockedfolder
title Folder Locker

cd C:\WINDOWS\system32

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK

if NOT EXIST Locker goto MDLOCKER

:CONFIRM

echo Are you sure u want to Lock the folder(Y/N)

set/p "cho=>"

if %cho%==Y goto LOCK

if %cho%==y goto LOCK

if %cho%==n goto END

if %cho%==N goto END

if %cho%==back goto end6

echo Invalid choice.

goto CONFIRM

:LOCK

ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

echo Folder locked

goto End

:UNLOCK

echo Enter password to Unlock folder

set/p "pass=>"

if NOT %pass%==%password% goto FAIL

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker

echo Folder Unlocked successfully

goto End

:FAIL

echo Invalid password

goto end

:MDLOCKER

md Locker

echo Locker created successfully

goto End

:End

:2scr
start C:\WINDOWS\system32\Locker