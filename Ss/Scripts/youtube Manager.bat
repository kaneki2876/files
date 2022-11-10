@echo off
:start
color 9
title youtube Manager
echo.
echo.
echo.
echo ******************************************************************************
echo *                                                                            *
echo *                               youtube Manager                              *
echo *                                                                            *
echo ******************************************************************************
echo *                                                                            *
echo *      1. download Video                          2. start youtube           *
echo *                                                                            *
echo *                                                                            *
echo ******************************************************************************
set /p answer="Number: "
if %answer%==1 goto 1
if %answer%==2 goto 2

:1
set /p watchid=download Video Put the watch id:
start https://www.ssyoutube.com/%watchid%
goto start


:2
start https://www.youtube.com/
goto start