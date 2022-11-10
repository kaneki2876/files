@echo off
cls
title hostlogin
:begin
color 4
echo Access Code : 
set /p ac=
if %ac%==? (
color a
echo Access Granted
) else (
echo Access Denied
goto begin
)
Pause
pause >nul
goto mainscr