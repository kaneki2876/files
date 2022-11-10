:login
@echo off
setlocal enabledelayedexpansion
pushd %~dp0
chcp 65001 >nul


:: Script Start
title login - Console

set "bgblack=[40m"&set "bgyellow=[43m"&set "black=[30m"&set "red=[31m"&set "green=[32m"&set "yellow=[33m"&set "blue=[34m"&set "magenta=[35m"&set "cyan=[36m"&set "white=[37m"&set "grey=[90m"&set "brightred=[91m"&set "brightgreen=[92m"&set "brightyellow=[93m"&set "brightblue=[94m"&set "brightmagenta=[95m"&set "brightcyan=[96m"&set "brightwhite=[97m"&set "underline=[4m"&set "underlineoff=[24m"

echo:
echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:
echo   !green!√ !grey!Please wait a few seconds

if exist "Login system" goto skip


:skip


ping localhost -n 5 >nul
cls

:home
cls
echo:
echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:
echo   !green!√ !grey!1) Register
echo:
echo   !green!√ !grey!2) Login

echo.

set /p "a=Choice: "

if ["%a%"] == ["3"] goto forgot

if ["%a%"] == ["2"] goto login

if ["%a%"] == ["1"] goto signup

if ["%a%"] == [""] goto home

cls
echo:
echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:

echo   !green!√ !grey!Your account is been created

echo   Press any key or wait !brightblue!10 !grey!seconds to return.
timeout /t 10 >nul
goto home:
goto :PROVIDE_FILE


:signup

color 7

title ulikamer - Console

cls
echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:

set /p "euser=!red!   # !grey!Email: "
set /p "nuser=!red!   # !grey!Username: "

if ["%nuser%"] == [""] goto signuperror

if EXIST "%nuser%.bat" goto usertaken

goto npass

:usertaken

cls

echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:

echo   !red!# !grey!Failed This name is taken

echo   Press any key or wait !red!10 !grey!seconds to return.
timeout /t 10 >nul
goto home

:npass

set /p "npass=   !red!   # !grey!(1/2) Password: "

if ["%npass%"] == [""] goto signuperror

set /p "npassr=!red!   # !grey!(2/2) Password: "

if ["%npassr%"] == ["%npass%"] goto signupc

goto signuperror

:signupc

echo set "auser=%nuser%"> %nuser%.bat

echo set "apass=%npass%">> %nuser%.bat

echo set "aemail=%euser%">> %nuser%.bat

cls

color a

echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:
echo   !green!√ !grey!You have successfully registered
echo   !green!√ !grey!Press any key or wait 10 seconds to return.

timeout /t 10 >nul
goto home

:login

color 7

title ulikamer - Console

cls

echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:

set /p "user=!red!   # !grey!Username: "

if ["%user%"] == [""] goto LOGIN

if EXIST "%user%.bat" goto pass

goto usernotexist

:usernotexist

color c

cls

echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:

echo   !red!# !grey!Failed username dosen't exist.

echo   Press any key or wait !red!10 !grey!seconds to return.
timeout /t 10 >nul
goto home

pause >nul

goto login

:pass

call %user%.bat

set /p "pass=   !red!   # !grey!Password: "

if ["%pass%"] == ["%apass%"] goto logingood

goto passinvalid

:passinvalid

color c

cls

echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:

echo   !red!# !grey!Failed the details are incorrect, please try again later

echo   Press any key or wait !red!10 !grey!seconds to return.
timeout /t 10 >nul
goto home

:logingood

cls

echo:
echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:
echo   !red!- !grey!Hey %user%
echo   !red!- !grey!Expired Time - !grey!^(!brightgreen!20/06/2022!grey!^)!grey!
echo:
echo:
echo:
echo   !red!# !grey!1) start

echo   !red!# !grey!2) Log Out

echo   !red!# !grey!3) Delete Account 

echo   !red!# !grey!4) Exit


set /p "a=Choice: "



if ["%a%"] == ["1"] goto end6

if ["%a%"] == ["4"] goto exit

if ["%a%"] == ["3"] goto delaccount

if ["%a%"] == ["2"] goto home

ping localhost -n 7 >nul

goto home

:delaccount

color 7

title ulikamer - Console

cls

set /p "duser=!red!   # !grey!Username: "

if ["%duser%"] == [""] goto delaccount

if exist "%duser%.bat" goto contin

goto usernotexistdel

:contin

call %duser%.bat

set /p "dpass=!red!   # !grey!Password:"

if ["%dpass%"] == ["%apass%"] goto contin2

goto passerror

:contin2

cls

echo:
echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:

echo   !red!# !grey!Are you sure to delete your account ?

set /p "delacc=y/n: "

if ["%delacc%"] == ["n"] goto home

cls

echo:

echo   !red!# !grey!Deleting your information ..

del "%duser%.bat"

ping localhost -n 2 >nul

cls

echo:
echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:

echo   !red!# !grey!Your account is been deleted

echo   Press any key or wait !brightred!10 seconds !grey!to return.
timeout /t 10 >nul
goto home

echo Redirecting to home

ping localhost -n 3 >nul

goto home


:exit
title ulikamer - Console

cls

echo:
echo   !grey!login {by software creator - Console !cyan!^(!brightred!https://sites.google.com/view/kaneki-softwares/home!cyan!^)!grey!
echo:
echo   !brightred!* !grey!1) Home
echo:
echo   !brightred!* !grey!2) Exit


echo.

set /p "a=Choice: "


if ["%a%"] == ["1"] goto home

if ["%exit%"] == ["2"] goto exit
