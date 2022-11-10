:filec
@echo off
taskkill /IM Discord
echo Type your username on the computer: 
set /p deldis=
del C:\Users\%deldis%\AppData\Roaming\Discord
echo Type the location of the discord setup: 
set /p location=
start %location%
pause
exit