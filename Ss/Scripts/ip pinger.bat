@Echo off
chcp 65001
cls
color 9
title kaneki9083 IP Pinger
echo.
echo -CTRL+C TO STOP PINGING BY kaneki9083
echo -------------------------------------
set /p IP=Enter IP=
color 5
:top
PING -n 1 %IP% | FIND "TTL="
title ::Pinging! %IP%
IF ERRORLEVEL 1 (echo [OFFLINE] %IP% [OFFLINE])
set /a num= (%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top