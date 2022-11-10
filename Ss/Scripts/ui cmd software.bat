@echo off
:menu
echo.
echo.
echo.
echo ******************************************************************************
echo *                                                                            *
echo *                               software creator                             *
echo *                                                                            *
echo ******************************************************************************
echo *                                                                            *
echo *      1. test1                           2. test3                           *
echo *      3. test2                         4. test4                             *
echo *                                                                            *
echo ******************************************************************************
echo.
echo.
echo.
set /p answer="Number: "
if %answer%==1 goto 1
if %answer%==2 goto 2
if %answer%==3 goto 3
if %answer%==4 goto 4
if %answer%==back goto end6
-----------------------------------------------------------------
