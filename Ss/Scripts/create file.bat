@echo off
echo create file
:create
set /p name1=enter the name for your file:
set /p pass1=enter the pass for your file:
(
echo set username1=%name1%
echo set password1=%pass1%
)>%name1%.bat
goto start1