:update
IF EXIST "" (
start 
) ELSE (
curl -L -o 
tar -xf 
move 
del
TIMEOUT /T 3 /NOBREAK
rd\s\q ""
start installer.vbs
)
pause
exit