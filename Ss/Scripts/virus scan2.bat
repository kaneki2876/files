@echo off
setlocal enabledelayedexpansion
pushd %~dp0
chcp 65001 >nul
title virus scan open code
if exist logs.txt goto colorsss
if not exist logs.txt echo logs to scan > logs.txt

:colorsss
set "bgblack=[40m"&set "bgyellow=[43m"&set "black=[30m"&set "red=[31m"&set "green=[32m"&set "yellow=[33m"&set "blue=[34m"&set "magenta=[35m"&set "cyan=[36m"&set "white=[37m"&set "grey=[90m"&set "brightred=[91m"&set "brightgreen=[92m"&set "brightyellow=[93m"&set "brightblue=[94m"&set "brightmagenta=[95m"&set "brightcyan=[96m"&set "brightwhite=[97m"&set "underline=[4m"&set "underlineoff=[24m"&set "bggreen=[102m"&set "bgred=[101m"&set "bgblue=[104m"&set "bgMagenta=[105m"&set "bgcyan=[106m"&set "bgWhite=[107m"&set "COMBINATIONS=[101;93m"&set "bgdarkblue=[44m"&set "bgdarkred=[41m"&set "dcyan=[36m"
:green
set g=!green!
set gg=!brightgreen!
set bg.g=!bggreen!

:red
set rr=!brightred!
set r=!red!
set bg.r=!bgred!
set bg.dr=!bgdarkred!

:blue
set c=!cyan!
set cc=!brightcyan!
set bg.c=!bgcyan!
set dc=!dcyan!
set b=!blue!
set bb=!brightblue!
set bg.bb=!bgblue!
set bg.db=!bgdarkblue!

:yellow
set bg.y=!bgyellow!
set y=!yellow!
set yy=!brightyellow!

:purple
set p=!magenta!
set pp=!brightmagenta!
set bg.p=!bgMagenta!

:white
set w=!white!
set ww=!brightwhite!
set bg.w=!bgWhite!

:black
set bg.b=!bgblack!
set b=!black!

:grey
set g=!grey!

:font
set f.u=underline
set f.fo=!underlineoff!

:colors
set c.c=!COMBINATIONS!

:menu
set /p fn=file name for virus scan: 
echo. >> logs.txt
echo. >> logs.txt
echo file name: %fn% >> logs.txt
goto c

:c
if exist %fn% goto batchfile-spam/virus
if not exist %fn% echo file is not found >> logs.txt
if not exist %fn% echo file is not found
pause
exit

:batchfile-spam/virus
color a
cls
echo file name: %fn%
echo text find (virus)
find /i /n /v "1" *%fn% >> alltext.txt
find /i /n "1" *%fn% >> virus.txt
cls

echo %bg.db%%w%all text
type alltext.txt
echo %bg.b%%w%.
echo %bg.b%%w%.
echo %bg.b%%w%.
echo %bg.dr%%w%find virus
type virus.txt
del alltext.txt
del virus.txt
pause