@echo off
title speed download
:menu
set /p Link=
curl -L -O %Link%