@echo off
:check
curl -L -o 
for /f "Delims=" %%a in (1.txt) do (

set TEXT=%%a

)

if 1.0==%TEXT% goto yes
echo yes
pause
goto start



:yes
echo yes
pause
goto start