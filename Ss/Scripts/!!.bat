@echo off
setlocal enabledelayedexpansion
pushd %~dp0
chcp 65001 >nul
set "bgblack=test"
echo !bgblack!
pause