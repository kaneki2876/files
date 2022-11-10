@echo off
chcp
rem ###################### Character table default value not set, or 1 for large table ######################
set table=
rem ###################### Art ascii change of characters default value ######################
rem default value=Ýฎฏ๙ซ
rem
set tempchar=Ýฎฏ๙ซ
rem ####################################################################################################################
rem -- Screen mode default value, for 80x25 variable "screen" not set, for different values of 80x25 variable "screen=1"
set screen=
set h=80
set v=25
rem ####################################################################################################################
rem
rem ############################################# characters change status #############################################
set charstatus=1
rem ####################################################################################################################
rem ############################################# variables of the .box file #####
:createbar
cls
set countervalue=1
set /p barlength=Set length of bar 14 to 160    
if not defined barlength goto createbar
set speedbar=0
set /p speedbar=Set the speed delay 0 to 10000   
set /p countervalue=Set counter value, ENTER to ignore   
set op=1
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                          Select the type of bar                             บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                                     บ
echo.บ    1) ณÛÛÛÛÛÛÛÛÛÛÛ    ณ                                                     บ
echo.บ       ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู                                                     บ
echo.บ                                                                             บ
echo.บ    2)  ÛÛÛÛÛÛÛÛÛÛÛ       (Does not use command CLS)                         บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p op=
if %op%==1 goto borderbar
if %op%==2 set tableexit=returnbar3& set print=2& goto table
:returnbar3
set /a xmode=barlength+24
:simplebarnumber
if exist simple-bar%simplebarnumber%.bat set /a simplebarnumber=simplebarnumber+1& goto simplebarnumber
set simple-bar=simple-bar%simplebarnumber%
echo>>%simple-bar%.bat echo off
echo>>%simple-bar%.bat color f
echo>>%simple-bar%.bat mode %xmode%,5
for /f "tokens=*"  %%i in ("<NUL set/p "^=Please Wait: "") do echo>>%simple-bar%.bat %%i
echo>>%simple-bar%.bat :start
for /f "tokens=*"  %%i in ("<NUL set/p"^=%char%"") do echo>>%simple-bar%.bat %%i
echo>>%simple-bar%.bat set /a counter=counter+1
echo>>%simple-bar%.bat set delay=
echo>>%simple-bar%.bat :delay
echo>>%simple-bar%.bat set /a delay=delay+1
echo>>%simple-bar%.bat if %%delay%% NEQ %speedbar% goto delay
echo>>%simple-bar%.bat if %%counter%% NEQ %barlength% goto start
echo>>%simple-bar%.bat echo. complete
echo>>%simple-bar%.bat pause ^>NUL
set xmode=
set barlength=
set speedbar=
set countervalue=
echo.File Created: %simple-bar%.bat
set simplebarnumber=
set simple-bar=
pause
goto start
:borderbar
set /a fraction=10000/%barlength%
set /a fraction=fraction*%countervalue%
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                        Choose the type of border bar                        บ
echo.บ                                                                             บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ   1)  ฤฤป                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   2)  ฤฤฤ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   3)  อออ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   4)  ÛÛÛ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   5)  Use special character                                                 บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   6)  Set border character                                                  บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p dep=   
if %dep%==1 goto depth0
if %dep%==2 goto depth1
if %dep%==3 goto depth2
if %dep%==4 goto depth3
if %dep%==5 set tableexit=depthn& set print=0& goto table
if %dep%==6 set exitedge=returnbar& goto definechar0
:returnbar
if defined movingA goto returnbar2
set tableexit=returnbar2
set print=2
goto table
:returnbar2
set le=%l1:~0,1%
if "%exitedge%"=="returnbar" set le=%lb1%
set lengtha=%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%%le%
set lengthb=%%lengtha:~0,%barlength%%%
for /f "usebackq tokens=*"  %%i in (`echo."%lengthb%"`) do set lengthb=%%i
set lengthb=%lengthb:~1,-1%
if defined movingA goto returnmov
set corea=%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%%char%
set coreb=%%corea:~0,%barlength%%%
for /f "usebackq tokens=*"  %%i in (`echo."%coreb%"`) do set coreb=%%i
set coreb=%coreb:~1,-1%
set lengthspace=                                                                                                                                                                end-line
set space=%%lengthspace:~0,%barlength%%%
for /f "usebackq tokens=*"  %%i in (`echo."%space%"`) do set space=%%i
set space=%space:~1,-1%
set /a xmode=barlength+3
cls
set op=1
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                             Type programming                                บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ   1) Using setlocal                                                         บ
echo.บ                                                                             บ
echo.บ   2) Using for                                                              บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p op=
cls
set opmode=1
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                               Operation mode                                บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ   1) Forward      (Default)                                                 บ
echo.บ                                                                             บ
echo.บ   2) Backward                                                               บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p opmode=Press enter to use default mode  
:barnumber
if exist progress-bar%barnumber%.bat set /a barnumber=barnumber+1& goto barnumber
set progress-bar=progress-bar%barnumber%
cls
echo>>%progress-bar%.bat echo off
echo>>%progress-bar%.bat color f
echo>>%progress-bar%.bat mode %xmode%,5
echo>>%progress-bar%.bat set counter=0
if %opmode%==1 echo>>%progress-bar%.bat set counterb=000
if %opmode%==2 echo>>%progress-bar%.bat set counterb=10000
echo>>%progress-bar%.bat set core=%coreb%
if %opmode%==1 echo>>%progress-bar%.bat set "valuecore=%space%"
if %opmode%==2 echo>>%progress-bar%.bat set valuecore=%%core%%
if %op%==1 echo>>%progress-bar%.bat setLocal EnableDelayedExpansion
echo>>%progress-bar%.bat :start
echo>>%progress-bar%.bat cls
if not "%exitedge%"=="returnbar" echo>>%progress-bar%.bat echo.%Z0%%lengthb%%Z4%
if not "%exitedge%"=="returnbar" echo>>%progress-bar%.bat echo.%Z9%%%valuecore:~0,%barlength%%%%Z9%
if not "%exitedge%"=="returnbar" echo>>%progress-bar%.bat echo.%Z2%%lengthb%%Z3%
if "%exitedge%"=="returnbar" echo>>%progress-bar%.bat echo.%Zb0%%lengthb%%Zb4%
if "%exitedge%"=="returnbar" echo>>%progress-bar%.bat echo.%Zb9%%%valuecore:~0,%barlength%%%%Zb9%
if "%exitedge%"=="returnbar" echo>>%progress-bar%.bat echo.%Zb2%%lengthb%%Zb3%
if %opmode%==1 echo>>%progress-bar%.bat if %%counter%% GEQ %barlength% set msg=complete^& set counterb=10000^& goto exit
if %opmode%==2 echo>>%progress-bar%.bat if %%counter%% GEQ %barlength% set msg=complete^& set counterb=000^& goto exit
echo>>%progress-bar%.bat echo. %%counterb:~0,-2%%%%%%
echo>>%progress-bar%.bat set /a counter=counter+%countervalue%
if %opmode%==1 echo>>%progress-bar%.bat set /a counterb=counterb+%fraction%
if %opmode%==2 echo>>%progress-bar%.bat set /a counterb=counterb-%fraction%
if %opmode%==1 if %op%==2 echo>>%progress-bar%.bat set valuecore=%%%%core:~0,%%counter%%%%%%
if %opmode%==2 if %op%==2 echo>>%progress-bar%.bat set valuecore=%%%%core:~%%counter%%,%barlength%%%%%%
if %op%==2 echo>>%progress-bar%.bat for /f "usebackq tokens=*"  %%%%i in (`echo."%%valuecore%%"`) do set "valuecore=%%%%~i%space%"
if %opmode%==1 if %op%==1 echo>>%progress-bar%.bat set "valuecore=!core:~0,%%counter%%!%space%"
if %opmode%==2 if %op%==1 echo>>%progress-bar%.bat set "valuecore=!core:~%%counter%%,%barlength%!%space%"
echo>>%progress-bar%.bat set delay=0
echo>>%progress-bar%.bat :delay
echo>>%progress-bar%.bat if %%delay%%==%speedbar% goto start
echo>>%progress-bar%.bat set /a delay=delay+1
echo>>%progress-bar%.bat goto delay
echo>>%progress-bar%.bat :exit
echo>>%progress-bar%.bat echo. %%counterb:~0,-2%%%%%% %%msg%%
if %op%==1 echo>>%progress-bar%.bat ENDLOCAL
echo>>%progress-bar%.bat pause ^>NUL
set opmode=
set print=
set tableexit=
set le=
set lengtha=
set lengthb=
set corea=
set coreb=
set char=
set xmode=
set lengthspace=
set space=
set fraction=
set barlength=
set speedbar=
set countervalue=
echo.File Created: %progress-bar%.bat
set progress-bar=
set barnumber=
pause
goto start
:help
set op=0
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ    The character change in main menu, 1 or 0 (enable), (disabled)           บ
echo.บ    corresponds to the characters (Ý), (), (ฎ), (ฏ), (), (๙)               บ
echo.บ    Which are changed for (Ý), (), (ฎ) (ฏ), () (๙) default setting.        บ
echo.บ    Assignments valid for command line and insert command.                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ  1) Download current version                                                บ
echo.บ                                                                             บ
echo.บ  2) Print commands                                                          บ
echo.บ                                                                             บ
echo.บ  Contact: aspidiskeproject@gmail.com                Version 2.1.2.5 ธ       บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p op=Enter continue       
if %op%==1 start /MAX "%homedrive%\Program Files\Internet Explorer\iexplore.exe" "https://mega.nz/#F!y9YlWRYK!cuFUQYjjlC-LFbgG4k40GA"&start /MAX "%homedrive%\Program Files\Internet Explorer\iexplore.exe" "http://www.4shared.com/folder/S1GoainE/Aspidiske_Compiler_Batch.html"& start /MAX "%homedrive%\Program Files\Internet Explorer\iexplore.exe" https://drive.google.com/open?id=0B72BF3fw509AS0EyUW9wekoxdDQ
if %op%==2 goto printhelp
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ  When using the graphics option menu, there are the following commands:     บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ  part  (Insert Division line)                                               บ
echo.บ                                                                             บ
echo.บ  part[N] (Insert Line Division into a column, range 1 to 3)                 บ
echo.บ                                                                             บ
echo.บ  part[N]-[N] (Insert Line Division into two columns)                        บ
echo.บ                                                                             บ
echo.บ  Example: part1-3 Insert Line Division in columns 1-3                       บ
echo.บ                                                                             บ
echo.บ  close (Insert complete line)                                               บ
echo.บ                                                                             บ
echo.บ  col[N] (Sets the number of columns the range 1 to 3)                       บ
echo.บ                                                                             บ
echo.บ  edge  (Start new header, allows change ASCII character)                    บ
echo.บ                                                                             บ
echo.บ  3box (Inserts 3 box with standard measure)                                 บ
echo.บ                                                                             บ
echo.บ  * Commands valid for standard 80x25 screen                                 บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                           ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                         บ
echo.บ                           ณ    General commands   ณ                         บ
echo.บ                           ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู                         บ
echo.บ  clear (clear line)                                                         บ
echo.บ                                                                             บ
echo.บ  stop  (Terminate menu)                                                     บ
echo.บ                                                                             บ
echo.บ  mode  (defines screen size)                                                บ
echo.บ                                                                             บ
echo.บ  margin (Sets the text margin range from 0 to 160)                          บ
echo.บ                                                                             บ
echo.บ  insert (Insert txt file content in current project)                        บ
echo.บ                                                                             บ
echo.บ  insert-n (Insert txt file content in project, except in the box 1 to 4)    บ
echo.บ                                                                             บ
echo.บ  bk (defines background except in the box 1 to 4)                           บ
echo.บ                                                                             บ
echo.บ  chcp (define the code page)                                                บ
echo.บ                                                                             บ
echo.บ  Help (commands examples)                                                   บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
cls
echo.ษออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออหออออออออออออออออออป
echo.บ                    บ           box instructions          บ                  บ
echo.บ                    ศอออออออออออออออออออออออออออออออออออออผ                  บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ  box[N] (Insert box with the user-defined parameter 1 to 4)                 บ
echo.บ                                                                             บ
echo.บ  box[N]-[C] (Inserts box with columns, C=value 2 to 5)                      บ
echo.บ                                                                             บ
echo.บ  partb[N] (Insert division line in box 1 to 4)                              บ
echo.บ                                                                             บ
echo.บ  closeb[N] (Close box 1 to 4)                                               บ
echo.บ                                                                             บ
echo.บ  edgeb (change ASCII character)                                             บ
echo.บ                                                                             บ
echo.บ  colb[N] (Sets new number of columns in box, box 1 to 4)                    บ
echo.บ                                                                             บ
echo.บ  colb[N]-[C] (define number of columns, C=value 2 to 5)                     บ
echo.บ                                                                             บ
echo.บ  partb[N]-[NNNNN] (Insert division line in columns 1 to 5)                  บ
echo.บ                                                                             บ
echo.บ  shadow (Sets the shadow of boxes 1 to 4)                                   บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
goto start
:printhelp
del Help.txt
echo>>Help.txt part  (Insert Division line)
echo>>Help.txt part[N]  (Insert Line Division into a column, range 1 to 3)
echo>>Help.txt part[N]-[N] (Insert Line Division into two columns)
echo>>Help.txt close (Insert complete line)
echo>>Help.txt col[N] (Sets the number of columns the range 1 to 3)
echo>>Help.txt edge (Start new header, allows change ASCII character)
echo>>Help.txt 3box (Inserts 3 box with standard measure)
echo>>Help.txt clear (clear line)
echo>>Help.txt stop  (Terminate menu)
echo>>Help.txt mode (defines screen size)
echo>>Help.txt margin (Sets the text margin range from 0 to 160)
echo>>Help.txt insert (Insert txt file content in current project)
echo>>Help.txt insert-n (Insert txt file content in project, except in the box 1 to 4)
echo>>Help.txt bk (defines background except in the box 1 to 4)
echo>>Help.txt box[N] (Insert box with the user-defined parameter 1 to 4)
echo>>Help.txt box[N]-[C] (Inserts box with columns, C=value 2 to 5)
echo>>Help.txt partb[N] (Insert division line in box 1 to 4)
echo>>Help.txt closeb[N] (Close box 1 to 4)
echo>>Help.txt edgeb (change ASCII character)
echo>>Help.txt colb[N] (Sets new number of columns in box, box 1 to 4)
echo>>Help.txt colb[N]-[C] (define number of columns, C=value 2 to 5)
echo>>Help.txt partb[N]-[NNNNN] (Insert division line in columns 1 to 5)
echo>>Help.txt shadow (Sets the shadow of boxes 1 to 4)
echo>>Help.txt chcp (define the code page)
echo>>Help.txt Help (commands examples)
start /MAX Help.txt
goto start
:help1
set /a a=a-1
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                             Commands examples                               บ
echo.บ                                                                             บ
echo.ฬฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤน
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ    box1 (Create box number one)                                             บ
echo.บ                                                                             บ
echo.บ    box1-5 (Create box number one, with five columns, with equal division)   บ
echo.บ                                                                             บ
echo.บ    colb2 (Sets new number of columns in box2, value to be attributed)       บ
echo.บ                                                                             บ
echo.บ    colb2-3  (Defines three columns in box 2, with equal division)           บ
echo.บ                                                                             บ
echo.บ    partb3 (Divide box three horizontally)                                   บ
echo.บ                                                                             บ
echo.บ    partb2-135 (Insert division line in columns 1,3,5 in box2)               บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
goto l
:artexit
title Aspidiske Compiler
set margnu=
set spaceart=
set modeart=
set nochange=
set art2=
set ech.=
set artvar=
set nu=
goto start
:ARTASCII2
set nochange=activated
set art2= 
set ech.=echo.& set modeart=bat
set margnu=0
:ARTASCII
title Aspidiske Compiler: Margin %margnu%
if  0 LSS ^%margnu% set spaceart=                                                                                                                                                                  End-line
if  0 LSS ^%margnu% set art1=%%spaceart:~0,%margnu%%%
if  0 LSS ^%margnu% for /f "usebackq tokens=*"  %%i in (`echo."%art1%"`) do set art2=%%i
cls
echo.ษออออออออออออออออออออออออออออออออออออออออออหออออออออออออออออออออออออออออออออออป
echo.บ   ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ   บ                                  บ
echo.บ   ณ Use the TAB key to search the    ณ   บ            Converter             บ
echo.บ   ณ .txt or .ans file in the current ณ   บ                                  บ
echo.บ   ณ directory.                       ณ   ฬออออออออออออออออออออออออออออออออออน
echo.บ   ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   บ                                  บ
echo.บ                                          บ                                  บ
echo.บ                                          บ                                  บ
echo.บ    1) Set margin                         บ     ÛÛÛÛÛป ÛÛÛÛÛÛป ÛÛÛÛÛÛÛÛป     บ
echo.บ                                          บ    ÛÛษออÛÛปÛÛษออÛÛปศออÛÛษออผ     บ
echo.บ                                          บ    ÛÛÛÛÛÛÛบÛÛÛÛÛÛษผ   ÛÛบ        บ
echo.บ    2) txt or ans to %modeart%                  บ    ÛÛษออÛÛบÛÛษออÛÛป   ÛÛบ        บ
echo.บ                                          บ    ÛÛบ  ÛÛบÛÛบ  ÛÛบ   ÛÛบ        บ
echo.บ                                          บ    ศอผ  ศอผศอผ  ศอผ   ศอผ        บ
echo.บ    3) Change characters %nochange%        บ                                  บ
echo.บ                                          บ   ÛÛÛÛÛป ÛÛÛÛÛÛÛป ÛÛÛÛÛÛปÛÛปÛÛป  บ
echo.บ                                          บ  ÛÛษออÛÛปÛÛษออออผÛÛษออออผÛÛบÛÛบ  บ
echo.บ    4) Advanced                           บ  ÛÛÛÛÛÛÛบÛÛÛÛÛÛÛปÛÛบ     ÛÛบÛÛบ  บ
echo.บ                                          บ  ÛÛษออÛÛบศออออÛÛบÛÛบ     ÛÛบÛÛบ  บ
echo.บ                                          บ  ÛÛบ  ÛÛบÛÛÛÛÛÛÛบศÛÛÛÛÛÛปÛÛบÛÛบ  บ
echo.บ    5) Exit                               บ  ศอผ  ศอผศออออออผ ศอออออผศอผศอผ  บ
echo.บ                                          บ                                  บ
echo.บ                                          บ                                  บ
echo.ศออออออออออออออออออออออออออออออออออออออออออสออออออออออออออออออออออออออออออออออผ
set /p art=
if %art%==1 set /p margnu=Set the value of the margin range -160 to 160  & goto ARTASCII
if %art%==2 if "%ech.%"=="echo." (set modeart=txt& set ech.=& goto ARTASCII) else (set ech.=echo.& set modeart=bat& goto ARTASCII)
if %art%==3 if "%nochange%"=="activated" (set "nochange=original "& goto ARTASCII) else (if "%nochange%"=="disabled " set "nochange=activated"& goto ARTASCII)
if %art%==3 if "%nochange%"=="original " set "nochange=disabled "& goto ARTASCII
if %art%==4 goto advancedart
if %art%==5 goto artexit
if exist temp0000.txt del temp0000.txt
find /v "" %art%>"temp0000.txt"
findstr "."  temp0000.txt>temp0001.txt
del temp0000.txt
rename temp0001.txt temp0000.txt
echo.Processing Please Wait...
set nu=1
for /f "skip=1 tokens=1,2,3*" %%a in (temp0000.txt) do set /a nu=nu+1
if defined ech. echo>>%art%.bat echo off
if defined ech. echo>>%art%.bat mode 160,%nu%
if defined ech. echo>>%art%.bat color f
if defined ech. echo>>%art%.bat cls
set nu=1
:startart
for /f "usebackq skip=%nu% tokens=1,2,3* delims=" %%a in  (temp0000.txt) do (
set artvar=%%a%%b%%c & goto exitart
)
if defined ech. echo>>%art%.bat pause ^>NUL
set nu=
del temp0000.txt
goto ARTASCII
:exitart
set /a nu=nu+1
SetLocal EnableDelayedExpansion
if  0 GTR ^%margnu% set "artvar=!artvar:~%margnu:~1%!"
if "%nochange%"=="activated" set "artvar=!artvar:"=%ch6%!"
if "%nochange%"=="activated" set "artvar=!artvar:|=%ch1%!"
if "%nochange%"=="activated" set "artvar=!artvar:&=%ch2%!"
if "%nochange%"=="activated" set "artvar=!artvar:<=%ch3%!"
if "%nochange%"=="activated" set "artvar=!artvar:>=%ch4%!"
if "%nochange%"=="activated" set "artvar=!artvar:^=%ch5%!"
if "%nochange%"=="activated" set "artvar=!artvar:%%=%ch7%!
if "%nochange%"=="original " set "artvar=!artvar:^=^^!"
if "%nochange%"=="original " set "artvar=!artvar:"=^^"!"
if "%nochange%"=="original " set "artvar=!artvar:|=^|!"
if "%nochange%"=="original " set "artvar=!artvar:&=^&!"
if "%nochange%"=="original " set "artvar=!artvar:<=^<!"
if "%nochange%"=="original " set "artvar=!artvar:>=^>!"
if not defined ech. echo.%ech.%%art2:~1,-1%!artvar!>>%art%.txt
if defined ech. echo.%ech.%%art2:~1,-1%!artvar!>>%art%.bat
ENDLOCAL
goto startart
:advancedart
set op=4
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                              Advanced options                               บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ     1) Change characters                                                    บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ     2) Special conversion                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ     3) return                                                               บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p op=
if %op%==1 set op=10& goto changeart
if %op%==2 goto specialcon
if %op%==3 goto ARTASCII2
goto advancedart
:specialcon
set ch7B=%ch7%  
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                             Special conversion                              บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ                             Change of standard                              บ
echo.บ                                                                             บ
echo.บ                   Current                                                   บ
echo.บ              ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ             ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ              บ
echo.บ              ณ ^%ch1% ^%ch2% ^%ch3% ^%ch4% ^%ch5% ^%ch6% ^%ch7B:~0,2% ณ     to      ณ  ^| ^& ^< ^> ^^ ^" %% ณ              บ
echo.บ              ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู             ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู              บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ  Use the TAB key to search                                                  บ
echo.บ  the .txt or .bat file                                                      บ
echo.บ  in the current directory.                                                  บ
echo.บ                                                                             บ
echo.บ  Press key 1 to exit                                                        บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p art=
if 1==%art% goto ARTASCII2
set nu=0
if exist temp0000.txt del temp0000.txt
findstr "."  %art% >temp0000.txt
for /f "usebackq tokens=1,2,3* delims=" %%a in  (temp0000.txt) do (
set artvar=%%a%%b%%c& goto Specialexit
)
:specialart
for /f "usebackq skip=%nu% tokens=1,2,3* delims=" %%a in  (temp0000.txt) do (
set artvar=%%a%%b%%c& goto Specialexit
)
set nu=
del temp0000.txt
del temp0001.txt
goto specialcon
:Specialexit
set /a nu=nu+1
echo. %artvar%
setLocal EnableDelayedExpansion
set "artvar=!artvar:%ch7B:~0,1%=%%%%!"
set "artvar=!artvar:%ch1%=^|!"
set "artvar=!artvar:%ch2%=^&!"
set "artvar=!artvar:%ch3%=^<!"
set "artvar=!artvar:%ch4%=^>!"
set "artvar=!artvar:%ch6%=^"!"
set "artvar=!artvar:%ch5%=^^!"
echo.!artvar!>>%art%.bat
ENDLOCAL
goto specialart
:changeart
if %op%==1 set ch1=%char%
if %op%==2 set ch2=%char%
if %op%==3 set ch3=%char%
if %op%==4 set ch4=%char%
if %op%==5 set ch5=%char%
if %op%==6 set ch6=%char%
if %op%==7 set ch7=%char%
set typeuse=xxx
if %op%==7 if %%==^%char% set /p typeuse=Use %% press 1 or use %%%% press 2  
if %typeuse%==1 set ch7=%%
if %typeuse%==2 set ch7=%%%%
set typeuse=
set ch7B=%ch7%  
set op=10
cls
echo.                     ษอออออออออออออออออออออออออออออออออออป                     
echo.ษออออออออออออออออออออน  Change characters in conversion  ฬออออออออออออออออออออป
echo.บ                    ศอออออออออออออออออออออออออออออออออออผ                    บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ    1) ^| change for %ch1%                                                        บ
echo.บ                                                                             บ
echo.บ    2) ^& change for %ch2%                                                        บ
echo.บ                                                                             บ
echo.บ    3) ^< change for %ch3%                                                        บ
echo.บ                                                                             บ
echo.บ    4) ^> change for %ch4%                                                        บ
echo.บ                                                                             บ
echo.บ    5) ^^ change for %ch5%                                                        บ
echo.บ                                                                             บ
echo.บ    6) ^" change for %ch6%                                                        บ
echo.บ                                                                             บ
echo.บ    7) %% change for %ch7B:~0,2%                                                       บ
echo.บ                                                                             บ
echo.บ    8) Set current config as default                                         บ
echo.บ                                                                             บ
echo.บ    9) Exit                                                                  บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set ch7B=
set /p op=
if %op%==1 set tableexit=changeart& set print=3& goto table
if %op%==2 set tableexit=changeart& set print=3& goto table
if %op%==3 set tableexit=changeart& set print=3& goto table
if %op%==4 set tableexit=changeart& set print=3& goto table
if %op%==5 set tableexit=changeart& set print=3& goto table
if %op%==6 set tableexit=changeart& set print=3& goto table
if %op%==7 set tableexit=changeart& set print=3& goto table
if %op%==8 echo>config-char.inf %ch1%%ch2%%ch3%%ch4%%ch5%%ch6%%ch7%
if %op%==9 goto ARTASCII
goto changeart
:basiccomp
set op=1
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                   Choose one of the compilation mode                        บ
echo.บ                                                                             บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   1) Create Bat using fixed screen mode                                     บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   2) Create Bat  using mode roll screen                                     บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
SET /p op=
if %op%==1 set menuquit=screen1a& goto screen1a
if %op%==2 set menuquit=screen1b& goto screen1a
:screen1a
set phrase=
cls
echo.
echo.
echo   ************************* Type a phrase and Enter *************************
echo.
echo.
echo.
echo.  If you want to enable echo. in before phrase: +-echo.
echo.
echo.  Echo. disable type it: -+ 
echo.
echo.  
echo.  Current status, phrase beginning: "%enable%"
echo.  ---------------------------------------------------------------------------
echo.   
echo.
echo.
echo.
echo.
echo.  
echo.
echo.
echo. 
echo.
:screen1b
set phrase=
SET /p phrase=
set a=a%phrase:~0,2%
set b=b%phrase:~0,2%
if %a:~0,3%==a-+ set enable=& goto %menuquit%
if %b:~0,3%==b+- set enable=%phrase:~2%& goto %menuquit%
echo>>Batch-exit.bat %enable%%phrase%
Goto %menuquit%
:helptable
cls
mode 80,25
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ              Characters with special properties for batch use               บ
echo.บ                                                                             บ
echo.บ   0 - Not usable                                                            บ
echo.บ   7 - Usable (corresponds to a beep)                                        บ
echo.บ   8 - Usable (corresponds to backspace)                                     บ
echo.บ   9 - Usable (corresponds to a Tab)                                         บ
echo.บ  10 - Usable (line feed) is equivalent to ^&, separates commands on a line   บ
echo.บ  13 - Not usable (carriage return)                                          บ
echo.บ  14 - Usable (invisible when using ansicon)                                 บ
echo.บ  15 - Usable (invisible when using ansicon)                                 บ
echo.บ  26 - Not usable                                                            บ
echo.บ  27 - Usable (invisible when using ansicon)                                 บ
echo.บ  32 - Usable (corresponds a space)                                          บ
echo.บ  34 - Usable ,for presentation with echo and variables use ^^^"               บ
echo.บ  37 - Usable ,for presentation with echo and variables use %%%%               บ
echo.บ  38 - Usable ,for presentation with echo and variables use ^^^&               บ
echo.บ  60 - Usable ,for presentation with echo and variables use ^^^<               บ
echo.บ  62 - Usable ,for presentation with echo and variables use ^^^>               บ
echo.บ  94 - Usable ,for presentation with echo and variables use ^^^^               บ
echo.บ 124 - Usable ,for presentation with echo and variables use ^^^|               บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
:table
if "%table%"=="1" mode 82,56
if "%table%"=="" mode 82,32
cls
set char="empty"
if %print%==1 set tableexit=table
if %print%==1 set mensage=Choose a number to print the character in: char.bat
if %print%==2 set mensage=Choose a character for core bar
if %print%==3 set mensage=Choose a character for replace 
if %print%==4 set mensage=Set the character of shadow 
if %print%==5 set mensage=Set the character of background or 000 clean background 
if %print%==6 set mensage=Set the end-of-line character or 00 not use character
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                        Table ASCII and Extended Codes                         บ
echo.ฬอออออออหอออออออหอออออออหอออออออหอออออออหอออออออหอออออออหอออออออหอออออออหอออออออน
echo.บ 0-Nul บ 1-   บ 2-   บ 3-   บ 4-   บ 5-   บ 6-   บ 7-BEL บ 8-BS  บ 9-TAB บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
if defined ansicon echo.บ 10-LF บ 11-  บ 12-  บ 13-CR บ 14-   บ 15-   บ 16-  บ 17-  บ 18-  บ 19-  บ
if not defined ansicon echo.บ 10-LF บ 11-  บ 12-  บ 13-CR บ 14-  บ 15-  บ 16-  บ 17-  บ 18-  บ 19-  บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
if defined ansicon echo.บ 20-๔  บ 21-๕  บ 22-  บ 23-  บ 24-  บ 25-  บ 26-SUBบ 27-   บ 28-  บ 29-  บ
if not defined ansicon echo.บ 20-๔  บ 21-๕  บ 22-  บ 23-  บ 24-  บ 25-  บ 26-SUBบ 27-  บ 28-  บ 29-  บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 30-  บ 31-  บ 32-SPCบ 33-!  บ 34-"  บ 35-#  บ 36-$  บ 37-%%  บ 38-&  บ 39-'  บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 40-(  บ 41-)  บ 42-*  บ 43-+  บ 44-,  บ 45--  บ 46-.  บ 47-/  บ 48-0  บ 49-1  บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 50-2  บ 51-3  บ 52-4  บ 53-5  บ 54-6  บ 55-7  บ 56-8  บ 57-9  บ 58-:  บ 59-;  บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 60-^<  บ 61-=  บ 62-^>  บ 63-?  บ 64-@  บ 65-A  บ 66-B  บ 67-C  บ 68-D  บ 69-E  บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 70-F  บ 71-G  บ 72-H  บ 73-I  บ 74-J  บ 75-K  บ 76-L  บ 77-M  บ 78-N  บ 79-O  บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 80-P  บ 81-Q  บ 82-R  บ 83-S  บ 84-T  บ 85-U  บ 86-V  บ 87-W  บ 88-X  บ 89-Y  บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 90-Z  บ 91-[  บ 92-\  บ 93-]  บ 94-^^  บ 95-_  บ 96-`  บ 97-a  บ 98-b  บ 99-c  บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 100-d บ 101-e บ 102-f บ 103-g บ 104-h บ 105-i บ 106-j บ 107-k บ 108-l บ 109-m บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 110-n บ 111-o บ 112-p บ 113-q บ 114-r บ 115-s บ 116-t บ 117-u บ 118-v บ 119-w บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 120-x บ 121-y บ 122-z บ 123-{ บ 124-^| บ 125-} บ 126-~ บ 127- บ 128-€ บ 129- บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 130- บ 131- บ 132- บ 133-… บ 134- บ 135- บ 136- บ 137- บ 138- บ 139- บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 140- บ 141- บ 142- บ 143- บ 144- บ 145-‘ บ 146-’ บ 147-“ บ 148-” บ 149-• บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 150-– บ 151-— บ 152- บ 153- บ 154- บ 155- บ 156- บ 157- บ 158- บ 159- บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 160-  บ 161-ก บ 162-ข บ 163-ฃ บ 164-ค บ 165-ฅ บ 166-ฆ บ 167-ง บ 168-จ บ 169-ฉ บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 170-ช บ 171-ซ บ 172-ฌ บ 173-ญ บ 174-ฎ บ 175-ฏ บ 176-ฐ บ 177-ฑ บ 178-ฒ บ 179-ณ บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 180-ด บ 181-ต บ 182-ถ บ 183-ท บ 184-ธ บ 185-น บ 186-บ บ 187-ป บ 188-ผ บ 189-ฝ บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 190-พ บ 191-ฟ บ 192-ภ บ 193-ม บ 194-ย บ 195-ร บ 196-ฤ บ 197-ล บ 198-ฦ บ 199-ว บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 200-ศ บ 201-ษ บ 202-ส บ 203-ห บ 204-ฬ บ 205-อ บ 206-ฮ บ 207-ฯ บ 208-ะ บ 209-ั บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 210-า บ 211-ำ บ 212-ิ บ 213-ี บ 214-ึ บ 215-ื บ 216-ุ บ 217-ู บ 218-ฺ บ 219-Û บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 220-Ü บ 221-Ý บ 222-Þ บ 223-฿ บ 224-เ บ 225-แ บ 226-โ บ 227-ใ บ 228-ไ บ 229-ๅ บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 230-ๆ บ 231-็ บ 232-่ บ 233-้ บ 234-๊ บ 235-๋ บ 236-์ บ 237-ํ บ 238-๎ บ 239-๏ บ
if "%table%"=="1" echo.บ       บ       บ       บ       บ       บ       บ       บ       บ       บ       บ
echo.บ 240-๐ บ 241-๑ บ 242-๒ บ 243-๓ บ 244-๔ บ 245-๕ บ 246-๖ บ 247-๗ บ 248-๘ บ 249-๙ บ
echo.บ       บ       บ       บ       บ       บ       ฬอออออออสอออออออสอออออออสอออออออน
echo.บ 250-๚ บ 251-๛ บ 252-ü บ 253-ý บ 254-þ บ 255-ÿ บ  H-Help   E-Exit  D-Display   บ
echo.ศอออออออสอออออออสอออออออสอออออออสอออออออสอออออออสอออออออออออออออออออออออออออออออผ
set /p char=%mensage% 
if /i "%char%"=="h" goto helptable
if /i "%char%"=="e" if %print%==1 goto start
if /i "%char%"=="e" if not %print%==1 goto table
if /i "%char%"=="d" if "%table%"=="1" (set table=& goto table) ELSE (set table=1& goto table)
if /i "%char%"==""empty"" goto table
if /i "%char%"=="0" goto 0char
if /i "%char%"=="1" set char=
if /i "%char%"=="2" set char=
if /i "%char%"=="3" set char=
if /i "%char%"=="4" set char=
if /i "%char%"=="5" set char=
if /i "%char%"=="6" set char=
if /i "%char%"=="7" set char=
if /i "%char%"=="8" set char=
if /i "%char%"=="9" set char=	
if /i "%char%"=="10" goto 10char
if /i "%char%"=="11" set char=& goto tableskip
if /i "%char%"=="12" set char=& goto tableskip
if /i "%char%"=="13" goto 13char
if /i "%char%"=="14" set char=
if /i "%char%"=="15" set char=
if /i "%char%"=="16" set char=
if /i "%char%"=="17" set char=
if /i "%char%"=="18" set char=
if /i "%char%"=="19" set char=
if /i "%char%"=="20" set char=
if /i "%char%"=="21" set char=
if /i "%char%"=="22" set char=
if /i "%char%"=="23" set char=
if /i "%char%"=="24" set char=
if /i "%char%"=="25" set char=
if /i "%char%"=="26" goto 26char
if /i "%char%"=="27" set char=
if /i "%char%"=="28" set char=
if /i "%char%"=="29" set char=
if /i "%char%"=="30" set char=
if /i "%char%"=="31" set char=
if /i "%char%"=="32" set char= 
if /i "%char%"=="33" set char=!
if /i "%char%"=="34" if not "%print%"=="1" set charstatus=0& set char=%ch6%
if /i "%char%"=="35" set char=#
if /i "%char%"=="36" set char=$
if /i "%char%"=="37" set char=%%
if /i "%char%"=="38" if not "%print%"=="1" set charstatus=0& set char=%ch2%
if /i "%char%"=="39" set char='
if /i "%char%"=="40" set char=(
if /i "%char%"=="41" set char=)
if /i "%char%"=="42" set char=*
if /i "%char%"=="43" set char=+
if /i "%char%"=="44" set char=,
if /i "%char%"=="45" set char=-
if /i "%char%"=="46" set char=.
if /i "%char%"=="47" set char=/
if /i "%char%"=="48" set char=0
if /i "%char%"=="49" set char=1
if /i "%char%"=="50" set char=2
if /i "%char%"=="51" set char=3
if /i "%char%"=="52" set char=4
if /i "%char%"=="53" set char=5
if /i "%char%"=="54" set char=6
if /i "%char%"=="55" set char=7
if /i "%char%"=="56" set char=8
if /i "%char%"=="57" set char=9
if /i "%char%"=="58" set char=:
if /i "%char%"=="59" set char=;
if /i "%char%"=="60" if not "%print%"=="1" set charstatus=0& set char=%ch3%
if /i "%char%"=="61" set char==
if /i "%char%"=="62" if not "%print%"=="1" set charstatus=0& set char=%ch4%
if /i "%char%"=="63" set char=?
if /i "%char%"=="64" set char=@
if /i "%char%"=="65" set char=A
if /i "%char%"=="66" set char=B
if /i "%char%"=="67" set char=C
if /i "%char%"=="68" set char=D
if /i "%char%"=="69" set char=E
if /i "%char%"=="70" set char=F
if /i "%char%"=="71" set char=G
if /i "%char%"=="72" set char=H
if /i "%char%"=="73" set char=I
if /i "%char%"=="74" set char=J
if /i "%char%"=="75" set char=K
if /i "%char%"=="76" set char=L
if /i "%char%"=="77" set char=M
if /i "%char%"=="78" set char=N
if /i "%char%"=="79" set char=O
if /i "%char%"=="80" set char=P
if /i "%char%"=="81" set char=Q
if /i "%char%"=="82" set char=R
if /i "%char%"=="83" set char=S
if /i "%char%"=="84" set char=T
if /i "%char%"=="85" set char=U
if /i "%char%"=="86" set char=V
if /i "%char%"=="87" set char=W
if /i "%char%"=="88" set char=X
if /i "%char%"=="89" set char=Y
if /i "%char%"=="90" set char=Z
if /i "%char%"=="91" set char=[
if /i "%char%"=="92" set char=\
if /i "%char%"=="93" set char=]
if /i "%char%"=="94" if not "%print%"=="1" set charstatus=0& set char=%ch5%
if /i "%char%"=="95" set char=_
if /i "%char%"=="96" set char=`
if /i "%char%"=="97" set char=a
if /i "%char%"=="98" set char=b
if /i "%char%"=="99" set char=c
if /i "%char%"=="100" set char=d
if /i "%char%"=="101" set char=e
if /i "%char%"=="102" set char=f
if /i "%char%"=="103" set char=g
if /i "%char%"=="104" set char=h
if /i "%char%"=="105" set char=i
if /i "%char%"=="106" set char=j
if /i "%char%"=="107" set char=k
if /i "%char%"=="108" set char=l
if /i "%char%"=="109" set char=m
if /i "%char%"=="110" set char=n
if /i "%char%"=="111" set char=o
if /i "%char%"=="112" set char=p
if /i "%char%"=="113" set char=q
if /i "%char%"=="114" set char=r
if /i "%char%"=="115" set char=s
if /i "%char%"=="116" set char=t
if /i "%char%"=="117" set char=u
if /i "%char%"=="118" set char=v
if /i "%char%"=="119" set char=w
if /i "%char%"=="120" set char=x
if /i "%char%"=="121" set char=y
if /i "%char%"=="122" set char=z
if /i "%char%"=="123" set char={
if /i "%char%"=="124" if not "%print%"=="1" set charstatus=0& set char=%ch1%
if /i "%char%"=="125" set char=}
if /i "%char%"=="126" set char=~
if /i "%char%"=="127" set char=
if /i "%char%"=="128" set char=€
if /i "%char%"=="129" set char=
if /i "%char%"=="130" set char=
if /i "%char%"=="131" set char=
if /i "%char%"=="132" set char=
if /i "%char%"=="133" set char=…
if /i "%char%"=="134" set char=
if /i "%char%"=="135" set char=
if /i "%char%"=="136" set char=
if /i "%char%"=="137" set char=
if /i "%char%"=="138" set char=
if /i "%char%"=="139" set char=
if /i "%char%"=="140" set char=
if /i "%char%"=="141" set char=
if /i "%char%"=="142" set char=
if /i "%char%"=="143" set char=
if /i "%char%"=="144" set char=
if /i "%char%"=="145" set char=‘
if /i "%char%"=="146" set char=’
if /i "%char%"=="147" set char=“
if /i "%char%"=="148" set char=”
if /i "%char%"=="149" set char=•
if /i "%char%"=="150" set char=–
if /i "%char%"=="151" set char=—
if /i "%char%"=="152" set char=
if /i "%char%"=="153" set char=
if /i "%char%"=="154" set char=
if /i "%char%"=="155" set char=
if /i "%char%"=="156" set char=
if /i "%char%"=="157" set char=
if /i "%char%"=="158" set char=
if /i "%char%"=="159" set char=
if /i "%char%"=="160" set char= 
if /i "%char%"=="161" set char=ก
if /i "%char%"=="162" set char=ข
if /i "%char%"=="163" set char=ฃ
if /i "%char%"=="164" set char=ค
if /i "%char%"=="165" set char=ฅ
if /i "%char%"=="166" set char=ฆ
if /i "%char%"=="167" set char=ง
if /i "%char%"=="168" set char=จ
if /i "%char%"=="169" set char=ฉ
if /i "%char%"=="170" set char=ช
if /i "%char%"=="171" set char=ซ
if /i "%char%"=="172" set char=ฌ
if /i "%char%"=="173" set char=ญ
if /i "%char%"=="174" set char=ฎ
if /i "%char%"=="175" set char=ฏ
if /i "%char%"=="176" set char=ฐ
if /i "%char%"=="177" set char=ฑ
if /i "%char%"=="178" set char=ฒ
if /i "%char%"=="179" set char=ณ
if /i "%char%"=="180" set char=ด
if /i "%char%"=="181" set char=ต
if /i "%char%"=="182" set char=ถ
if /i "%char%"=="183" set char=ท
if /i "%char%"=="184" set char=ธ
if /i "%char%"=="185" set char=น
if /i "%char%"=="186" set char=บ
if /i "%char%"=="187" set char=ป
if /i "%char%"=="188" set char=ผ
if /i "%char%"=="189" set char=ฝ
if /i "%char%"=="190" set char=พ
if /i "%char%"=="191" set char=ฟ
if /i "%char%"=="192" set char=ภ
if /i "%char%"=="193" set char=ม
if /i "%char%"=="194" set char=ย
if /i "%char%"=="195" set char=ร
if /i "%char%"=="196" set char=ฤ
if /i "%char%"=="197" set char=ล
if /i "%char%"=="198" set char=ฦ
if /i "%char%"=="199" set char=ว
if /i "%char%"=="200" set char=ศ
if /i "%char%"=="201" set char=ษ
if /i "%char%"=="202" set char=ส
if /i "%char%"=="203" set char=ห
if /i "%char%"=="204" set char=ฬ
if /i "%char%"=="205" set char=อ
if /i "%char%"=="206" set char=ฮ
if /i "%char%"=="207" set char=ฯ
if /i "%char%"=="208" set char=ะ
if /i "%char%"=="209" set char=ั
if /i "%char%"=="210" set char=า
if /i "%char%"=="211" set char=ำ
if /i "%char%"=="212" set char=ิ
if /i "%char%"=="213" set char=ี
if /i "%char%"=="214" set char=ึ
if /i "%char%"=="215" set char=ื
if /i "%char%"=="216" set char=ุ
if /i "%char%"=="217" set char=ู
if /i "%char%"=="218" set char=ฺ
if /i "%char%"=="219" set char=Û
if /i "%char%"=="220" set char=Ü
if /i "%char%"=="221" set char=Ý
if /i "%char%"=="222" set char=Þ
if /i "%char%"=="223" set char=฿
if /i "%char%"=="224" set char=เ
if /i "%char%"=="225" set char=แ
if /i "%char%"=="226" set char=โ
if /i "%char%"=="227" set char=ใ
if /i "%char%"=="228" set char=ไ
if /i "%char%"=="229" set char=ๅ
if /i "%char%"=="230" set char=ๆ
if /i "%char%"=="231" set char=็
if /i "%char%"=="232" set char=่
if /i "%char%"=="233" set char=้
if /i "%char%"=="234" set char=๊
if /i "%char%"=="235" set char=๋
if /i "%char%"=="236" set char=์
if /i "%char%"=="237" set char=ํ
if /i "%char%"=="238" set char=๎
if /i "%char%"=="239" set char=๏
if /i "%char%"=="240" set char=๐
if /i "%char%"=="241" set char=๑
if /i "%char%"=="242" set char=๒
if /i "%char%"=="243" set char=๓
if /i "%char%"=="244" set char=๔
if /i "%char%"=="245" set char=๕
if /i "%char%"=="246" set char=๖
if /i "%char%"=="247" set char=๗
if /i "%char%"=="248" set char=๘
if /i "%char%"=="249" set char=๙
if /i "%char%"=="250" set char=๚
if /i "%char%"=="251" set char=๛
if /i "%char%"=="252" set char=ü
if /i "%char%"=="253" set char=ý
if /i "%char%"=="254" set char=þ
if /i "%char%"=="255" set char=ÿ
:tableskip
mode %h%,%v%
if %h% LSS 80 mode 80,%v%
if %v% LSS 25 mode %h%,25
if %h% LSS 80 if %V% LSS 25 mode 80,25
if defined Background if /i 000==%char% set nobox=& set print=& set Background=& set mensage=& set char=& goto l
if "%print%"=="4" set print=& set %line:~0,7%=%char%& set mensage=& set char=
if "%print%"=="5" set nobox=1& set print=& set Background=%char%& set mensage=& set char=
if defined savebk if /i 00==%char% set char=
if "%char%"=="34" (
echo>>char.bat echo.^^^"
goto %tableexit%
)
if "%char%"=="38" (
echo>>char.bat echo.^^^&
goto %tableexit%
)
if "%char%"=="60" (
echo>>char.bat echo.^^^<
goto %tableexit%
)
if "%char%"=="62" (
echo>>char.bat echo.^^^>
goto %tableexit%
)
if "%char%"=="94" (
echo>>char.bat echo.^^^^
goto %tableexit%
)
if "%char%"=="124" (
echo>>char.bat echo.^^^|
goto %tableexit%
)
if "%print%"=="1" echo>>char.bat echo.%char%
goto %tableexit%
REM ----------------------------- special chars
:0char
if not "%print%"=="1" goto helptable
Del /f /q /a temp.dat >nul 2>&1
for %%b in ( 
6563686F2E000D0A) Do >>temp.dat (Echo.For b=1 To len^("%%b"^) Step 2
ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%b",b,2^)^)^) : Next)
Cscript /b /e:vbs temp.dat>>char.bat
Del /f /q /a temp.dat >nul 2>&1
goto table
:10char
if not "%print%"=="1" goto helptable
Del /f /q /a temp.dat >nul 2>&1
for %%b in ( 
6563686F2E0A0D0A) Do >>temp.dat (Echo.For b=1 To len^("%%b"^) Step 2
ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%b",b,2^)^)^) : Next)
Cscript /b /e:vbs temp.dat>>char.bat
Del /f /q /a temp.dat >nul 2>&1
goto table
:13char
if not "%print%"=="1" goto helptable
Del /f /q /a temp.dat >nul 2>&1
for %%b in ( 
6563686F2E0D0D0A) Do >>temp.dat (Echo.For b=1 To len^("%%b"^) Step 2
ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%b",b,2^)^)^) : Next)
Cscript /b /e:vbs temp.dat>>char.bat
Del /f /q /a temp.dat >nul 2>&1
goto table
:26char
if not "%print%"=="1" goto helptable
Del /f /q /a temp.dat >nul 2>&1
for %%b in ( 
6563686F2E1A0D0A) Do >>temp.dat (Echo.For b=1 To len^("%%b"^) Step 2
ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%b",b,2^)^)^) : Next)
Cscript /b /e:vbs temp.dat>>char.bat
Del /f /q /a temp.dat >nul 2>&1
goto table
:map
echo.ษออออออออออออออออออออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออป
echo.บZ0                                    บZ7                                  Z4บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.ฬออออออออออออออออออออออออออออออออออออออฮออออออออออออออออออออออออออออออออออออออน
echo.บZ1                                    บZ8                                  Z5บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ      MAPA DAS VARIAVEIS              บZ9           VARIABLE MAP             บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บZ2                                    บZ6                                  Z3บ
echo.ศออออออออออออออออออออออออออออออออออออออสออออออออออออออออออออออออออออออออออออออผ
pause
goto start
rem --------------------------------------------------------------------------------------------------------- compiles screen
:compiles
rem reset variables "an" "bn"
set x=
for /l %%i in (0 1 59) do set "a%%i="
for /l %%i in (0 1 59) do set "b%%i=2"
set a=0
if /i %op%==b set edge=& set div=6& set /a a=a-1& goto l
if /i %op%==c set edge=& set div=6& set /a a=a-1& set Background=1& set tableexit=l& set print=5& goto table
goto edge
:3box
set dep=5
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                     Select the type of edge of the 3box                     บ
echo.บ                                                                             บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   1)  ฤฤป                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   2)  ฤฤฤ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   3)  อออ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   4)  ÛÛÛ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   5)  Use special character                                                 บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p dep=
if %dep%==1 goto deptha0
if %dep%==2 goto deptha1
if %dep%==3 goto deptha2
if %dep%==4 goto deptha3
if %dep%==5 set tableexit=depthna& set print=0& goto table
:deptha0
set la1=ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
set Za0=ษ
set Za1=ร
set Za2=ศ
set Za3=ผ
set Za4=ป
set Za5=ด
set Za6=ม
set Za7=ย
set Za8=ล
set Za9=ณ
goto 3boxb
:deptha1
set la1=ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
set Za0=ฺ
set Za1=ร
set Za2=ภ
set Za3=ู
set Za4=ฟ
set Za5=ด
set Za6=ม
set Za7=ย
set Za8=ล
set Za9=ณ
goto 3boxb
:deptha2
set la1=อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set Za0=ษ
set Za1=ฬ
set Za2=ศ
set Za3=ผ
set Za4=ป
set Za5=น
set Za6=ส
set Za7=ห
set Za8=ฮ
set Za9=บ
goto 3boxb
:deptha3
set la1=ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
set Za0=Ü
set Za1=Û
set Za2=Û
set Za3=Û
set Za4=Ü
set Za5=Û
set Za6=Û
set Za7=Ü
set Za8=Û
set Za9=Û
goto 3boxb
:depthna
set dep=%char%
set la1=%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%
set Za0=%dep%
set Za1=%dep%
set Za2=%dep%
set Za3=%dep%
set Za4=%dep%
set Za5=%dep%
set Za6=%dep%
set Za7=%dep%
set Za8=%dep%
set Za9=%dep%
goto 3boxb
:3boxb
if %div%==6 set edge=
set boxexit=%div%
set div=4
set x=%edge%     %Za0%%la1:~0,17%%Za4%     %Za0%%la1:~0,17%%Za4%     %Za0%%la1:~0,17%%Za4%     %edge%
goto l
:definechar0
set op=z
if not defined lb1 set lb1= 
if not defined lb2 set lb2= 
if not defined zb0 set Zb0= 
if not defined zb1 set Zb1= 
if not defined zb2 set Zb2= 
if not defined zb3 set Zb3= 
if not defined zb4 set Zb4= 
if not defined zb5 set Zb5= 
if not defined zb6 set Zb6= 
if not defined zb7 set Zb7= 
if not defined zb8 set Zb8= 
if not defined zb9 set Zb9= 
if defined boxfile set /p boxfile=<%boxfile:~0,-4%.box
if defined boxfile (
set Zb0=%boxfile:~0,1%
set Zb1=%boxfile:~1,1%
set Zb2=%boxfile:~2,1%
set Zb3=%boxfile:~3,1%
set Zb4=%boxfile:~4,1%
set Zb5=%boxfile:~5,1%
set Zb6=%boxfile:~6,1%
set Zb7=%boxfile:~7,1%
set Zb8=%boxfile:~8,1%
set Zb9=%boxfile:~9,1%
set lb1=%boxfile:~10,1%
set lb2=%boxfile:~11,1%
set boxfile=
)
:definechar
if defined boxname echo.%zb0%%zb1%%zb2%%zb3%%zb4%%zb5%%zb6%%zb7%%zb8%%zb9%%lb1%%lb2%>%boxname%.box& set boxname=
if %op%==0 set Zb0=%char%
if %op%==1 set Zb7=%char%
if %op%==2 set Zb4=%char%
if %op%==3 set Zb1=%char%
if %op%==4 set Zb8=%char%
if %op%==5 set Zb5=%char%
if %op%==6 set Zb2=%char%
if %op%==7 set Zb6=%char%
if %op%==8 set Zb3=%char%
if %op%==9 set Zb9=%char%
if /i %op%==A set lb1=%char%
if /i %op%==B set lb2=%char%
cls
echo.                    .......................................                    
echo.                    .                                     .                    
echo.                    .          Set box characters         .                    
echo.                    .                                     .                    
echo.                    .......................................                    
echo.                                                                               
echo.        0 ฤ %zb0%   0---A-----1--------2      %zb0%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%zb7%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%zb4%
echo.        1 ฤ %zb7%   ^|         ^|        ^|      %zb9%         %zb9%        %zb9%
echo.        2 ฤ %zb4%   ^|         ^|        ^|      %zb9%         %zb9%        %zb9%
echo.        3 ฤ %zb1%   ^|         ^|        ^|      %zb9%         %zb9%        %zb9%
echo.        4 ฤ %zb8%   ^|         ^|        ^|      %zb9%         %zb9%        %zb9%
echo.        5 ฤ %zb5%   3---B-----4--------5      %zb1%%lb2%%lb2%%lb2%%lb2%%lb2%%lb2%%lb2%%lb2%%lb2%%zb8%%lb2%%lb2%%lb2%%lb2%%lb2%%lb2%%lb2%%lb2%%zb5%
echo.        6 ฤ %zb2%   ^|         ^|        ^|      %zb9%         %zb9%        %zb9%
echo.        7 ฤ %zb6%   ^|         ^|        9      %zb9%         %zb9%        %zb9%
echo.        8 ฤ %zb3%   ^|         ^|        ^|      %zb9%         %zb9%        %zb9%
echo.        9 ฤ %zb9%   ^|         ^|        ^|      %zb9%         %zb9%        %zb9%
echo.        A ฤ %lb1%   6---A-----7--------8      %zb2%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%zb6%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%lb1%%zb3%
echo.        B ฤ %lb2%                                                                       
echo.
echo.        D ฤ Default setting load
echo.        S ฤ Save configuration file
echo.        L ฤ Load configuration file
echo.        C ฤ Continue                                                           
set /p op=
if /i %op%==c goto %exitedge%
if /i %op%==d goto edgeb2
if /i %op%==s set /p boxname=Type a name for the file     & goto definechar
if /i %op%==l set /p boxfile=Use the TAB key to search the file .box  & goto definechar0
if %op%==z goto definechar0
set tableexit=definechar& set print=0& goto table
:edgeb2
set op=5
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                    Select the type of edge of the box                       บ
echo.บ                                                                             บ
echo.ฬออออออออออออออออออออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออน
echo.บ                                      บ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ บ
echo.บ                                      บ ณ            Special Box           ณ บ
echo.บ    1)  ฤฤป                           บ ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ    2)  ฤฤฤ                           บ       A)  ฤฤท                        บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ    3)  อออ                           บ       B)  ออธ                        บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ    4)  ÛÛÛ                           บ                                      บ
echo.บ                                      บ   * Use of special box requires      บ
echo.บ                                      บ   lucida console font and the use    บ
echo.บ    R) Return                         บ   of chcp 865 or other compatible.   บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.ศออออออออออออออออออออออออออออออออออออออสออออออออออออออออออออออออออออออออออออออผ
set /p op=
if /i %op%==r goto definechar0
if %op%==1 (
set lb1=ฤ
set lb2=ฤ
set Zb0=ษ
set Zb1=ร
set Zb2=ศ
set Zb3=ผ
set Zb4=ป
set Zb5=ด
set Zb6=ม
set Zb7=ย
set Zb8=ล
set Zb9=ณ
goto definechar0
)
if %op%==2 (
set lb1=ฤ
set lb2=ฤ
set Zb0=ฺ
set Zb1=ร
set Zb2=ภ
set Zb3=ู
set Zb4=ฟ
set Zb5=ด
set Zb6=ม
set Zb7=ย
set Zb8=ล
set Zb9=ณ
goto definechar0
)
if %op%==3 (
set lb1=อ
set lb2=อ
set Zb0=ษ
set Zb1=ฬ
set Zb2=ศ
set Zb3=ผ
set Zb4=ป
set Zb5=น
set Zb6=ส
set Zb7=ห
set Zb8=ฮ
set Zb9=บ
goto definechar0
)
if %op%==4 (
set lb1=Ü
set lb2=Ü
set Zb0=Ü
set Zb1=Û
set Zb2=Û
set Zb3=Û
set Zb4=Ü
set Zb5=Û
set Zb6=Û
set Zb7=Ü
set Zb8=Û
set Zb9=Û
goto definechar0
)
if /i %op%==a (
set lb1=ฤ
set lb2=ฤ
set Zb0=ึ
set Zb1=ว
set Zb2=ำ
set Zb3=ฝ
set Zb4=ท
set Zb5=ถ
set Zb6=ะ
set Zb7=า
set Zb8=ื
set Zb9=บ
goto definechar0
)
if /i %op%==b (
set lb1=อ
set lb2=อ
set Zb0=ี
set Zb1=ฦ
set Zb2=ิ
set Zb3=พ
set Zb4=ธ
set Zb5=ต
set Zb6=ฯ
set Zb7=ั
set Zb8=ุ
set Zb9=ณ
goto definechar0
)
goto edgeb2
:edgeb
set dep=6
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                     Select the type of edge of the box                      บ
echo.บ                                                                             บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ   1)  ฤฤป                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   2)  ฤฤฤ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   3)  อออ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   4)  ÛÛÛ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   5)  Use special character                                                 บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   6)  Set box characters                                                    บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p dep=
if %dep%==1 goto depthb0
if %dep%==2 goto depthb1
if %dep%==3 goto depthb2
if %dep%==4 goto depthb3
if %dep%==5 set tableexit=depthnb& set print=0& goto table
if %dep%==6 goto definechar0
goto edgeb
:depthb0
set lb1=ฤ
set lb2=ฤ
set Zb0=ษ
set Zb1=ร
set Zb2=ศ
set Zb3=ผ
set Zb4=ป
set Zb5=ด
set Zb6=ม
set Zb7=ย
set Zb8=ล
set Zb9=ณ
goto %exitedge%
:depthb1
set lb1=ฤ
set lb2=ฤ
set Zb0=ฺ
set Zb1=ร
set Zb2=ภ
set Zb3=ู
set Zb4=ฟ
set Zb5=ด
set Zb6=ม
set Zb7=ย
set Zb8=ล
set Zb9=ณ
goto %exitedge%
:depthb2
set lb1=อ
set lb2=อ
set Zb0=ษ
set Zb1=ฬ
set Zb2=ศ
set Zb3=ผ
set Zb4=ป
set Zb5=น
set Zb6=ส
set Zb7=ห
set Zb8=ฮ
set Zb9=บ
goto %exitedge%
:depthb3
set lb1=Ü
set lb2=Ü
set Zb0=Ü
set Zb1=Û
set Zb2=Û
set Zb3=Û
set Zb4=Ü
set Zb5=Û
set Zb6=Û
set Zb7=Ü
set Zb8=Û
set Zb9=Û
goto %exitedge%
:depthnb
set dep=%char%
set lb1=%dep%
set lb2=%dep%
set Zb0=%dep%
set Zb1=%dep%
set Zb2=%dep%
set Zb3=%dep%
set Zb4=%dep%
set Zb5=%dep%
set Zb6=%dep%
set Zb7=%dep%
set Zb8=%dep%
set Zb9=%dep%
goto %exitedge%
:edge
cls
if defined screen set edge=& set div=6& set /a a=a-1& echo.Screen mode different of 80x25, apply box instruction& pause& goto l
set dep=7
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                       Select the type of screen edge                        บ
echo.บ                                                                             บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   1)  ฤฤป                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   2)  ฤฤฤ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   3)  อออ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   4)  ÛÛÛ                                                                   บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ   5)  Use special character                                                 บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p dep=   
if %dep%==1 goto depth0
if %dep%==2 goto depth1
if %dep%==3 goto depth2
if %dep%==4 goto depth3
if %dep%==5 set tableexit=depthn& set print=0& goto table
goto compiles
:depth0
set l1=ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
set Z0=ษ
set Z1=ร
set Z2=ศ
set Z3=ผ
set Z4=ป
set Z5=ด
set Z6=ม
set Z7=ย
set Z8=ล
set Z9=ณ
set edge=%z9%
goto first
:depth1
set l1=ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
set Z0=ฺ
set Z1=ร
set Z2=ภ
set Z3=ู
set Z4=ฟ
set Z5=ด
set Z6=ม
set Z7=ย
set Z8=ล
set Z9=ณ
set edge=%z9%
goto first
:depth2
set l1=อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set Z0=ษ
set Z1=ฬ
set Z2=ศ
set Z3=ผ
set Z4=ป
set Z5=น
set Z6=ส
set Z7=ห
set Z8=ฮ
set Z9=บ
set edge=%z9%
goto first
:depth3
set l1=ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
set Z0=Ü
set Z1=Û
set Z2=Û
set Z3=Û
set Z4=Ü
set Z5=Û
set Z6=Û
set Z7=Ü
set Z8=Û
set Z9=Û
set edge=%z9%
goto first
:depthn
set dep=%char%
set l1=%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%%dep%
set Z0=%dep%
set Z1=%dep%
set Z2=%dep%
set Z3=%dep%
set Z4=%dep%
set Z5=%dep%
set Z6=%dep%
set Z7=%dep%
set Z8=%dep%
set Z9=%dep%
set edge=%z9%
:first
if defined barlength goto returnbar
cls
set op=4
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                     Choose the amount of screen columns                     บ
echo.บ                                                                             บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ    1) A column                                                              บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ    2) Two columns                                                           บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ    3) Three columns                                                         บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p op=
if %op%==1 set div=1& goto divok
if %op%==2 goto half
if %op%==3 set div=3& goto divok
if %op%==4 goto first
goto l
:half
set op=4
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                        Choose one of the options                            บ
echo.บ                                                                             บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ                                                  ษออออออหออออออป            บ
echo.บ                                                  บ      บ      บ            บ
echo.บ     1) Screen type 1/2                           บ      บ      บ            บ
echo.บ                                                  บ      บ      บ            บ
echo.บ                                                  ศออออออสออออออผ            บ
echo.บ                                                  ษออออหออออออออป            บ
echo.บ                                                  บ    บ        บ            บ
echo.บ     2) Screen type 1/3                           บ    บ        บ            บ
echo.บ                                                  บ    บ        บ            บ
echo.บ                                                  ศออออสออออออออผ            บ
echo.บ                                                  ษออออออออหออออป            บ
echo.บ                                                  บ        บ    บ            บ
echo.บ     3) Screen type 2/3                           บ        บ    บ            บ
echo.บ                                                  บ        บ    บ            บ
echo.บ                                                  ศออออออออสออออผ            บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p op=
if %op%==1 set div=2& goto divok
if %op%==2 set div=7& goto divok
if %op%==3 set div=8& goto divok
goto half
:divok
cls
if "%yesdiv2%"=="2" if %div%==2 goto part
if "%yesdiv2%"=="2" if %div%==7 set x=%Z1%%l1:~0,25%%Z7%%l1:~25,12%%Z6%%l1:~38,38%%Z5%& set yesdiv2=& goto l
if "%yesdiv2%"=="2" if %div%==8 set x=%Z1%%l1:~0,38%%Z6%%l1:~38,12%%Z7%%l1:~50,25%%Z5%& set yesdiv2=& goto l
if "%yesdiv2%"=="7" if %div%==7 goto part
if "%yesdiv2%"=="7" if %div%==2 set x=%Z1%%l1:~0,25%%Z6%%l1:~25,12%%Z7%%l1:~38,38%%Z5%& set yesdiv2=& goto l
if "%yesdiv2%"=="7" if %div%==8 set x=%Z1%%l1:~0,25%%Z6%%l1:~25,25%%Z7%%l1:~50,25%%Z5%& set yesdiv2=& goto l
if "%yesdiv2%"=="8" if %div%==8 goto part
if "%yesdiv2%"=="8" if %div%==2 set x=%Z1%%l1:~0,38%%Z7%%l1:~38,12%%Z6%%l1:~25,25%%Z5%& set yesdiv2=& goto l
if "%yesdiv2%"=="8" if %div%==7 set x=%Z1%%l1:~0,25%%Z7%%l1:~25,25%%Z6%%l1:~50,25%%Z5%& set yesdiv2=& goto l
if defined yesdiv1 if %div%==2 set x=%Z1%%l1:~0,25%%Z6%%l1:~25,12%%Z7%%l1:~38,12%%Z6%%l1:~50,25%%Z5%& set yesdiv1=& goto l
if defined yesdiv1 if %div%==7 set x=%Z1%%l1:~0,25%%Z8%%l1:~25,25%%Z6%%l1:~50,25%%Z5%& set yesdiv1=& goto l
if defined yesdiv1 if %div%==8 set x=%Z1%%l1:~0,25%%Z6%%l1:~25,25%%Z8%%l1:~50,25%%Z5%& set yesdiv1=& goto l
if defined yesdiv if %div%==2 set x=%Z1%%l1:~0,38%%Z7%%l1:~38,38%%Z5%& set yesdiv=& goto l
if defined yesdiv if %div%==7 set x=%Z1%%l1:~0,25%%Z7%%l1:~26,51%%Z5%& set yesdiv=& goto l
if defined yesdiv if %div%==8 set x=%Z1%%l1:~0,51%%Z7%%l1:~52,25%%Z5%& set yesdiv=& goto l
if %div%==1 set x=%Z0%%l1:~0,77%%Z4%
if %div%==2 set x=%Z0%%l1:~0,38%%Z7%%l1:~38,38%%Z4%
if %div%==3 set x=%Z0%%l1:~0,25%%Z7%%l1:~25,25%%Z7%%l1:~50,25%%Z4%
if %div%==7 set x=%Z0%%l1:~0,25%%Z7%%l1:~26,51%%Z4%
if %div%==8 set x=%Z0%%l1:~0,51%%Z7%%l1:~52,25%%Z4%
goto l
:div1
set edge=%z9%
echo.%Beep%
set /a a=a-1
set div=1
goto l
:div2
set edge=%z9%
echo.%Beep%
set /a a=a-1
set div=2
goto l
:div3
set edge=%z9%
echo.%Beep%
set /a a=a-1
set div=3
goto l
:clear
set /a a=a-1
if %a%==-1 set b0=2& set a0=& set x=& set a=-1& goto l
if %a%==0 set clearln=n
if %a%==0 set /p clearln=Clear line 1 (Y) yes (N) no  
if /i y==%clearln% set b0=2& set a0=& set clearln=& set x=
if /i n==%clearln% set clearln=& set /a a=a+1
if %a%==1 set b1=2& set a1=& set x=%a0%
if %a%==2 set b2=2& set a2=& set x=%a1%
if %a%==3 set b3=2& set a3=& set x=%a2%
if %a%==4 set b4=2& set a4=& set x=%a3%
if %a%==5 set b5=2& set a5=& set x=%a4%
if %a%==6 set b6=2& set a6=& set x=%a5%
if %a%==7 set b7=2& set a7=& set x=%a6%
if %a%==8 set b8=2& set a8=& set x=%a7%
if %a%==9 set b9=2& set a9=& set x=%a8%
if %a%==10 set b10=2& set a10=& set x=%a9%
if %a%==11 set b11=2& set a11=& set x=%a10%
if %a%==12 set b12=2& set a12=& set x=%a11%
if %a%==13 set b13=2& set a13=& set x=%a12%
if %a%==14 set b14=2& set a14=& set x=%a13%
if %a%==15 set b15=2& set a15=& set x=%a14%
if %a%==16 set b16=2& set a16=& set x=%a15%
if %a%==17 set b17=2& set a17=& set x=%a16%
if %a%==18 set b18=2& set a18=& set x=%a17%
if %a%==19 set b19=2& set a19=& set x=%a18%
if %a%==20 set b20=2& set a20=& set x=%a19%
if %a%==21 set b21=2& set a21=& set x=%a20%
if %a%==22 set b22=2& set a22=& set x=%a21%
if not %div%==5 if not %div%==6 if not defined screen if %a%==23 set b22=2& set a22=& set x=%a21%
if %a%==23 set b23=2& set a23=& set x=%a22%
if not %div%==5 if not %div%==6 if not defined screen if %a%==23 set edge=%z9b%
if not %div%==5 if not %div%==6 if not defined screen if %a%==23 set /a a=a-1
if %a%==24 set b24=2& set a24=& set x=%a23%
if %a%==25 set b25=2& set a25=& set x=%a24%
if %a%==26 set b26=2& set a26=& set x=%a25%
if %a%==27 set b27=2& set a27=& set x=%a26%
if %a%==28 set b28=2& set a28=& set x=%a27%
if %a%==29 set b29=2& set a29=& set x=%a28%
if %a%==30 set b30=2& set a30=& set x=%a29%
if %a%==31 set b31=2& set a31=& set x=%a30%
if %a%==32 set b32=2& set a32=& set x=%a31%
if %a%==33 set b33=2& set a33=& set x=%a32%
if %a%==34 set b34=2& set a34=& set x=%a33%
if %a%==35 set b35=2& set a35=& set x=%a34%
if %a%==36 set b36=2& set a36=& set x=%a35%
if %a%==37 set b37=2& set a37=& set x=%a36%
if %a%==38 set b38=2& set a38=& set x=%a37%
if %a%==39 set b39=2& set a39=& set x=%a38%
if %a%==40 set b40=2& set a40=& set x=%a39%
if %a%==41 set b41=2& set a41=& set x=%a40%
if %a%==42 set b42=2& set a42=& set x=%a41%
if %a%==43 set b43=2& set a43=& set x=%a42%
if %a%==44 set b44=2& set a44=& set x=%a43%
if %a%==45 set b45=2& set a45=& set x=%a44%
if %a%==46 set b46=2& set a46=& set x=%a45%
if %a%==47 set b47=2& set a47=& set x=%a46%
if %a%==48 set b48=2& set a48=& set x=%a47%
if %a%==49 set b49=2& set a49=& set x=%a48%
if %a%==50 set b50=2& set a50=& set x=%a49%
if %a%==51 set b51=2& set a51=& set x=%a50%
if %a%==52 set b52=2& set a52=& set x=%a51%
if %a%==53 set b53=2& set a53=& set x=%a52%
if %a%==54 set b54=2& set a54=& set x=%a53%
if %a%==55 set b55=2& set a55=& set x=%a54%
if %a%==56 set b56=2& set a56=& set x=%a55%
if %a%==57 set b57=2& set a57=& set x=%a56%
if %a%==58 set b58=2& set a58=& set x=%a57%
if %a%==59 set b59=2& set a59=& set x=%a58%
set mensage=
set /a a=a-1
if defined insertart set /a nu=nu-1
if defined insertart2 set /a nu2=nu2-1
if defined insertart3 set /a nu3=nu3-1
goto l2
:l
if %boxexit%==2 set x=%x:~0,39%%z9%%x:~40,39%
if %boxexit%==3 set x=%x:~0,26%%z9%%x:~27,25%%z9%%x:~53,26%
if %boxexit%==7 set x=%x:~0,26%%z9%%x:~27,52%
if %boxexit%==8 set x=%x:~0,52%%z9%%x:~53,40%
:l3
set xbackup=%x%
setLocal EnableDelayedExpansion
if defined x if %charstatus%==0 set "x=!x:%ch1%=^^^|!"
if defined x if %charstatus%==0 set "x=!x:%ch2%=^^^&!"
if defined x if %charstatus%==0 set "x=!x:%ch3%=^^^<!"
if defined x if %charstatus%==0 set "x=!x:%ch4%=^^^>!"
if defined x if %charstatus%==0 set "x=!x:%ch6%=^^^"!"
if defined x if %charstatus%==0 set "x=!x:%ch5%=^^^^!"
if defined x if %charstatus%==0 echo.!x!>xline
ENDLOCAL
if %charstatus%==0 set /p x=<xline
if %charstatus%==0 del xline
cls
if %a%==0 set a0=%x%& set b0=1
if %a%==1 set a1=%x%& set b1=1
if %a%==2 set a2=%x%& set b2=1
if %a%==3 set a3=%x%& set b3=1
if %a%==4 set a4=%x%& set b4=1
if %a%==5 set a5=%x%& set b5=1
if %a%==6 set a6=%x%& set b6=1
if %a%==7 set a7=%x%& set b7=1
if %a%==8 set a8=%x%& set b8=1
if %a%==9 set a9=%x%& set b9=1
if %a%==10 set a10=%x%& set b10=1
if %a%==11 set a11=%x%& set b11=1
if %a%==12 set a12=%x%& set b12=1
if %a%==13 set a13=%x%& set b13=1
if %a%==14 set a14=%x%& set b14=1
if %a%==15 set a15=%x%& set b15=1
if %a%==16 set a16=%x%& set b16=1
if %a%==17 set a17=%x%& set b17=1
if %a%==18 set a18=%x%& set b18=1
if %a%==19 set a19=%x%& set b19=1
if %a%==20 set a20=%x%& set b20=1
if %a%==21 set a21=%x%& set b21=1
if %a%==22 set a22=%x%& set b22=1
if %a%==23 set a23=%x%& set b23=1
if %a%==24 set a24=%x%& set b24=1
if %a%==25 set a25=%x%& set b25=1
if %a%==26 set a26=%x%& set b26=1
if %a%==27 set a27=%x%& set b27=1
if %a%==28 set a28=%x%& set b28=1
if %a%==29 set a29=%x%& set b29=1
if %a%==30 set a30=%x%& set b30=1
if %a%==31 set a31=%x%& set b31=1
if %a%==32 set a32=%x%& set b32=1
if %a%==33 set a33=%x%& set b33=1
if %a%==34 set a34=%x%& set b34=1
if %a%==35 set a35=%x%& set b35=1
if %a%==36 set a36=%x%& set b36=1
if %a%==37 set a37=%x%& set b37=1
if %a%==38 set a38=%x%& set b38=1
if %a%==39 set a39=%x%& set b39=1
if %a%==40 set a40=%x%& set b40=1
if %a%==41 set a41=%x%& set b41=1
if %a%==42 set a42=%x%& set b42=1
if %a%==43 set a43=%x%& set b43=1
if %a%==44 set a44=%x%& set b44=1
if %a%==45 set a45=%x%& set b45=1
if %a%==46 set a46=%x%& set b46=1
if %a%==47 set a47=%x%& set b47=1
if %a%==48 set a48=%x%& set b48=1
if %a%==49 set a49=%x%& set b49=1
if %a%==50 set a50=%x%& set b50=1
if %a%==51 set a51=%x%& set b51=1
if %a%==52 set a52=%x%& set b52=1
if %a%==53 set a53=%x%& set b53=1
if %a%==54 set a54=%x%& set b54=1
if %a%==55 set a55=%x%& set b55=1
if %a%==56 set a56=%x%& set b56=1
if %a%==57 set a57=%x%& set b57=1
if %a%==58 set a58=%x%& set b58=1
if %a%==59 set a59=%x%& set b59=1
set x=%xbackup%& set xbackup=
:l2
cls
set /a linedisplay=%a%+2
title Aspidiske Compiler: Line %linedisplay%  Margin %marginnumber%
set linedisplay=
if %b0%==1 echo.%a0%
if %b1%==1 echo.%a1%
if %b2%==1 echo.%a2%
if %b3%==1 echo.%a3%
if %b4%==1 echo.%a4%
if %b5%==1 echo.%a5%
if %b6%==1 echo.%a6%
if %b7%==1 echo.%a7%
if %b8%==1 echo.%a8%
if %b9%==1 echo.%a9%
if %b10%==1 echo.%a10%
if %b11%==1 echo.%a11%
if %b12%==1 echo.%a12%
if %b13%==1 echo.%a13%
if %b14%==1 echo.%a14%
if %b15%==1 echo.%a15%
if %b16%==1 echo.%a16%
if %b17%==1 echo.%a17%
if %b18%==1 echo.%a18%
if %b19%==1 echo.%a19%
if %b20%==1 echo.%a20%
if %b21%==1 echo.%a21%
if %b22%==1 echo.%a22%
if %b23%==1 echo.%a23%
if %b24%==1 echo.%a24%
if %b25%==1 echo.%a25%
if %b26%==1 echo.%a26%
if %b27%==1 echo.%a27%
if %b28%==1 echo.%a28%
if %b29%==1 echo.%a29%
if %b30%==1 echo.%a30%
if %b31%==1 echo.%a31%
if %b32%==1 echo.%a32%
if %b33%==1 echo.%a33%
if %b34%==1 echo.%a34%
if %b35%==1 echo.%a35%
if %b36%==1 echo.%a36%
if %b37%==1 echo.%a37%
if %b38%==1 echo.%a38%
if %b39%==1 echo.%a39%
if %b40%==1 echo.%a40%
if %b41%==1 echo.%a41%
if %b42%==1 echo.%a42%
if %b43%==1 echo.%a43%
if %b44%==1 echo.%a44%
if %b45%==1 echo.%a45%
if %b46%==1 echo.%a46%
if %b47%==1 echo.%a47%
if %b48%==1 echo.%a48%
if %b49%==1 echo.%a49%
if %b50%==1 echo.%a50%
if %b51%==1 echo.%a51%
if %b52%==1 echo.%a52%
if %b53%==1 echo.%a53%
if %b54%==1 echo.%a54%
if %b55%==1 echo.%a55%
if %b56%==1 echo.%a56%
if %b57%==1 echo.%a57%
if %b58%==1 echo.%a58%
if %b59%==1 echo.%a59%
set /a a=a+1
if %a%==23 if %div%==1 set x=%Z2%%l1:~0,77%%Z3%& goto l
if %a%==23 if %div%==2 set x=%Z2%%l1:~0,38%%Z6%%l1:~38,38%%Z3%& goto l
if %a%==23 if %div%==3 set x=%Z2%%l1:~0,25%%Z6%%l1:~25,25%%Z6%%l1:~50,25%%Z3%& goto l
if %a%==23 if %div%==7 set x=%Z2%%l1:~0,25%%Z6%%l1:~26,51%%Z3%& goto l
if %a%==23 if %div%==8 set x=%Z2%%l1:~0,51%%Z6%%l1:~52,25%%Z3%& goto l
if defined edge if %div%==4 if %a%==22 goto close
if not defined edge if %div%==4 if %a% GEQ %v1% set /a a=a-1& goto close
if not %div%==5 if %a% GEQ %v1% set z9b=%edge%& set edge=& set mensage=Done, Use Enter to save or clear command to edit  
if not %boxexit%==6 if %div%==5 if %a% GEQ 23 set z9b=%edge%& set edge=& set mensage=Done, Use closeb[N] command to close the box  
if %div%==5 if %a% GEQ %v1% set z9b=%edge%& set edge=& set mensage=Done, Use closeb[N] command to close the box  
set line=
Set /p "line=%edge%%mensage%"
if not defined line goto pass
setLocal EnableDelayedExpansion
set "line=!line:"=%ch6%!"
set "line=!line:|=%ch1%!"
set "line=!line:&=%ch2%!"
set "line=!line:<=%ch3%!"
set "line=!line:>=%ch4%!"
set "line=!line:^=%ch5%!"
echo.!line!>line
ENDLOCAL
set /p line=<line
del line
If /i "%line%"=="help" goto help1
If /i "%line:~0,4%"=="chcp" goto chcpset
If /i "%line%"=="part" goto part
If /i "%line%"=="close" goto close
If /i "%line%"=="clear" goto clear
If /i "%line%"=="stop" goto stop
If /i "%line%"=="edge" goto edge
If /i "%line%"=="link1" goto link1
If /i "%line%"=="link2" goto link2
If /i "%line%"=="link3" goto link3
If /i "%line%"=="col1" goto link1
If /i "%line%"=="col2" goto link2
If /i "%line%"=="col3" goto link3
If /i "%line%"=="part1" goto part1
If /i "%line%"=="part2" goto part2
If /i "%line%"=="part3" goto part3
If /i "%line%"=="part1-2" goto part1-2
If /i "%line%"=="part1-3" goto part1-3
If /i "%line%"=="part2-3" goto part2-3
If /i "%line%"=="3box" goto 3box
If /i "%line:~0,4%"=="box1" goto box1
If /i "%line:~0,4%"=="box2" goto box2
If /i "%line:~0,4%"=="box3" goto box3
If /i "%line:~0,4%"=="box4" goto box4
If /i "%line%"=="partb1" goto partb1
If /i "%line%"=="partb2" goto partb2
If /i "%line%"=="partb3" goto partb3
If /i "%line%"=="partb4" goto partb4
If /i "%line%"=="closeb1" goto closeb1
If /i "%line%"=="closeb2" goto closeb2
If /i "%line%"=="closeb3" goto closeb3
If /i "%line%"=="closeb4" goto closeb4
If /i "%line%"=="edgeb" set exitedge=l& set /a a=a-1& goto edgeb
If /i "%line:~0,6%"=="insert" goto insert
If /i "%line:~0,6%"=="linkb1" goto linkb1
If /i "%line:~0,6%"=="linkb2" goto linkb2
If /i "%line:~0,6%"=="linkb3" goto linkb3
If /i "%line:~0,6%"=="linkb4" goto linkb4
If /i "%line:~0,5%"=="colb1" goto linkb1
If /i "%line:~0,5%"=="colb2" goto linkb2
If /i "%line:~0,5%"=="colb3" goto linkb3
If /i "%line:~0,5%"=="colb4" goto linkb4
If /i "%line%"=="mode" goto mode
if /i "%line:~0,7%"=="partb1-" goto partb1-
if /i "%line:~0,7%"=="partb2-" goto partb2-
if /i "%line:~0,7%"=="partb3-" goto partb3-
if /i "%line:~0,7%"=="partb4-" goto partb4-
if /i "%line:~0,6%"=="margin" goto marginline
If /i "%line%"=="shadow" set /a a=a-1& goto shadow
If /i "%line%"=="bk" set Background=1& set tableexit=l& set print=5& set /a a=a-1& goto table
If /i "%line%"=="Aspi-test" goto Aspi-test
:pass
set line=%marginline%%line%                                                                                                                                                                End-line
if %a%==%v1% goto stop
if %div%==1 set line=%Z9%%line:~0,77%%Z9%& set exitppp=xline& set exitxline=l& goto ppp
if %div%==2 set line=%Z9%%line:~0,38%%Z9%%line:~39,38%%Z9%& set exitppp=xline& set exitxline=l& goto ppp
if %div%==3 set line=%Z9%%line:~0,25%%Z9%%line:~26,25%%Z9%%line:~52,25%%Z9%& set exitppp=xline& set exitxline=l& goto ppp
if %div%==4 set line=%edge%%line:~0,5%%Za9%%line:~06,17%%Za9%%line:~24,5%%Za9%%line:~30,17%%Za9%%line:~48,5%%Za9%%line:~54,17%%Za9%%line:~72,5%%edge%& set exitppp=xline& set exitxline=l& goto ppp
if %div%==5 goto boxuser2
if %div%==6 set exitppp=xline& set exitxline=l& goto ppp
if %div%==7 set line=%Z9%%line:~0,25%%Z9%%line:~26,51%%Z9%& set exitppp=xline& set exitxline=l& goto ppp
if %div%==8 set line=%Z9%%line:~0,51%%Z9%%line:~52,25%%Z9%& set exitppp=xline& set exitxline=l& goto ppp
goto l
:chcpset
%line%
set /a a=a-1
pause
goto l
:shadowclear
mode %h%,%v%
rem -----------------------------no clear
if %h% LSS 80 mode 80,%v%
if %v% LSS 25 mode %h%,25
if %h% LSS 80 if %V% LSS 25 mode 80,25
if %op%==5 goto l
rem -----------------------------yes clear
set shatype=
set valueshadow1=
set valueshadow2=
set valueshadow3=
set valueshadow4=
set shadow1=
set shadow2=
set shadow3=
set shadow4=
set tableexit=
set print=
goto l
:shadow
mode 80,25
if not defined shatype set shatype=1
cls
set /p shatype=ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑณ     SELECT TYPE OF SHADOW     ณฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑษอออออออออออออปฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฐบ             บฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฐบ             บฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฐบ      1      บฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฐบ             บฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฐบ             บฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฐศอออออออออออออผฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑษออออออออออออออออออออออออออปฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑบ Current shadow type:  %shatype%  บฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑศออออออออออออออออออออออออออผฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑษอออออออออออออปฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑบ             บฐฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑบ             บฐฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑบ      2      บฐฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑบ             บฐฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑบ             บฐฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑศอออออออออออออผฐฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑEnter Skip stage, 0 Disabled all shadows and exit
if %shatype%==0 goto shadowclear
:shadow1
if not defined shadow1 set shadow1= 
if not defined shadow2 set shadow2= 
if not defined shadow3 set shadow3= 
if not defined shadow4 set shadow4= 
set op=6
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                         Box shadow character state                          บ
echo.บ                                                                             บ
echo.ฬออออออออออออออออออออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออน
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ     1) Box1     %shadow1%                    บ      A) Disabled shadow box1         บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ     2) Box2     %shadow2%                    บ      B) Disabled shadow box2         บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ     3) Box3     %shadow3%                    บ      C) Disabled shadow box3         บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ     4) Box4     %shadow4%                    บ      D) Disabled shadow box4         บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.บ                                      บ                                      บ
echo.ศออออออออออออออออออออออออออออออออออออออสออออออออออออออออออออออออออออออออออออออผ
set /p op=Press 5 to exit  
if %op%==6 goto shadow1
if /i %op%==a set shadow1=& set valueshadow1=& goto shadow1
if /i %op%==b set shadow2=& set valueshadow2=& goto shadow1
if /i %op%==c set shadow3=& set valueshadow3=& goto shadow1
if /i %op%==d set shadow4=& set valueshadow4=& goto shadow1
if %op%==1 set line=shadow1
if %op%==2 set line=shadow2
if %op%==3 set line=shadow3
if %op%==4 set line=shadow4
if %op%==5 goto shadowclear
set tableexit=shadow1
set print=4
goto table
:marginline
set marginnumber=%line:~6,3%
set "marginline=                                                                                                                                                                "
set valuemargin=%%marginline:~0,%marginnumber%%%
for /f "usebackq tokens=*"  %%i in (`echo."%valuemargin%"`) do set marginline=%%i
set "marginline=%marginline:~1,-1%
set valuemargin=
set /a a=a-1
goto l
rem--------------------------------------------------------------------- link[n]
:link1
if %div%==2 goto link2-1
if %div%==3 goto link3-1
if %div%==7 goto link2-1
if %div%==8 goto link2-1
goto l
:link2
if %div%==1 goto link1-2
if %div%==2 goto link2-2
if %div%==3 goto link3-2
if %div%==7 goto link2-2
if %div%==8 goto link2-2
goto l
:link3
if %div%==1 goto link1-3
if %div%==2 goto link2-3
if %div%==7 goto link2-3
if %div%==8 goto link2-3
goto l
:link2-2
set yesdiv2=%div%
goto half
:link1-2
set yesdiv=0
goto half
:link1-3
set x=%Z1%%l1:~0,25%%Z7%%l1:~25,25%%Z7%%l1:~50,25%%Z5%
set /a a=a+1
goto div3
:link2-1
if %div%==2 set x=%Z1%%l1:~0,38%%Z6%%l1:~38,38%%Z5%
if %div%==7 set x=%Z1%%l1:~0,25%%Z6%%l1:~26,51%%Z5%
if %div%==8 set x=%Z1%%l1:~0,51%%Z6%%l1:~52,25%%Z5%
set /a a=a+1
goto div1
:link2-3
if %div%==2 set x=%Z1%%l1:~0,25%%Z7%%l1:~25,12%%Z6%%l1:~38,12%%Z7%%l1:~50,25%%Z5%
if %div%==7 set x=%Z1%%l1:~0,25%%Z8%%l1:~25,25%%Z7%%l1:~50,25%%Z5%
if %div%==8 set x=%Z1%%l1:~0,25%%Z7%%l1:~25,25%%Z8%%l1:~50,25%%Z5%
set /a a=a+1
goto div3
:link3-1
set x=%Z1%%l1:~0,25%%Z6%%l1:~25,25%%Z6%%l1:~50,25%%Z5%
set /a a=a+1
goto div1
:link3-2
set yesdiv1=0
goto half
:box1
if "%line:~5,1%"=="2" set dfdiv=2
if "%line:~5,1%"=="3" set dfdiv=3
if "%line:~5,1%"=="4" set dfdiv=4
if "%line:~5,1%"=="5" set dfdiv=5
if not defined lb1 set exitedge=box1& goto edgeb
set line=
set /a a=a-1
if not defined line set line=%x%
if not defined x set "line=                                                                                                                                                                "& set /a a=a+1
set exitppp=box1process
goto ppp
:box1process
if %div%==6 set edge=
if %boxexit%==0 set boxexit=%div%
set charlength=77
if %boxexit%==6 set charlength=79
set div=5
cls
set sa=???
echo.
echo.------- ษออออออออออป
echo.   %sa%    บ          บ
echo.          บ          บ
echo.          บ          บ
echo.          ศออออออออออผ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 Total %h1%  characters
echo.%displaylength%
set /p sa=Set the margin of the box  
set xxxa=%sa%   end-line
set xxxb=???
cls
echo.               %xxxb:~0,3% 
echo.          ---------- 
echo.------- ษออออออออออป
echo.   %xxxa:~0,3%    บ          บ  
echo.          บ          บ
echo.          บ          บ
echo.          ศออออออออออผ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 Total %h1%  characters
echo.%displaylength%
:returnsb
set /p sb=Set the length of the box 
set xxxb=%sb%  end-line
cls
if %sb% LSS 2 echo.Error, value cannot be less than 2& goto returnsb
rem ------------------------------------- create box
set bln=1
if not defined bl2A set bl2A=NC
if not defined bl3A set bl3A=NC
if not defined bl4A set bl4A=NC
set /a bl%bln%A=%sa%+%sb%
if %charlength%==79 set /a bl%bln%A=%sa%+%sb%-1
set /a sax=sa+1
if %charlength%==79 set sax=%sa%
set bl%bln%B=%sax%
set P%sax%=%zb0%
if defined nobox if not defined n%sax% set n%sax%=1
:openb1loop
set /a sax=sax+1
if defined nobox if not defined n%sax% set n%sax%=1
if %bln%==1 if %sax%==%bl1A% set P%sax%=%zb4%& goto existopenb1
if %bln%==2 if %sax%==%bl2A% set P%sax%=%zb4%& goto existopenb1
if %bln%==3 if %sax%==%bl3A% set P%sax%=%zb4%& goto existopenb1
if %bln%==4 if %sax%==%bl4A% set P%sax%=%zb4%& goto existopenb1
if %sax%==%bl2B% set P%bl2B%=%zb5%& set /a sax=sax+%sd%& set P%bl2A%=%zb1%
if %sax%==%bl3B% set P%bl3B%=%zb5%& set /a sax=sax+%sf%& set P%bl3A%=%zb1%
if %sax%==%bl4B% set P%bl4B%=%zb5%& set /a sax=sax+%sh%& set P%bl4A%=%zb1%
set P%sax%=%lb1:~0,1%
if %sax%==%b2div1% set P%sax%=%zb6%& set tb2div1=%b2div1%& set b2div1=& set tb2=1
if %sax%==%b2div2% set P%sax%=%zb6%& set tb2div2=%b2div2%& set b2div2=& set tb2=1
if %sax%==%b2div3% set P%sax%=%zb6%& set tb2div3=%b2div3%& set b2div3=& set tb2=1
if %sax%==%b2div4% set P%sax%=%zb6%& set tb2div4=%b2div4%& set b2div4=& set tb2=1
if %sax%==%b3div1% set P%sax%=%zb6%& set tb3div1=%b3div1%& set b3div1=& set tb3=1
if %sax%==%b3div2% set P%sax%=%zb6%& set tb3div2=%b3div2%& set b3div2=& set tb3=1
if %sax%==%b3div3% set P%sax%=%zb6%& set tb3div3=%b3div3%& set b3div3=& set tb3=1
if %sax%==%b3div4% set P%sax%=%zb6%& set tb3div4=%b3div4%& set b3div4=& set tb3=1
if %sax%==%b4div1% set P%sax%=%zb6%& set tb4div1=%b4div1%& set b4div1=& set tb4=1
if %sax%==%b4div2% set P%sax%=%zb6%& set tb4div2=%b4div2%& set b4div2=& set tb4=1
if %sax%==%b4div3% set P%sax%=%zb6%& set tb4div3=%b4div3%& set b4div3=& set tb4=1
if %sax%==%b4div4% set P%sax%=%zb6%& set tb4div4=%b4div4%& set b4div4=& set tb4=1
goto openb1loop
:existopenb1
if not defined linkb set sax=
set b1div1=
set b1div2=
set b1div3=
set b1div4=
cls
echo.
echo.
if "%dfdiv%"=="3" set /a dif=(%sb%-4)-(%sb%-4)/%dfdiv%*(3)
if "%dfdiv%"=="4" set /a dif=(%sb%-5)-(%sb%-5)/%dfdiv%*(4)
if "%dfdiv%"=="5" set /a dif=(%sb%-6)-(%sb%-6)/%dfdiv%*(5)
for /l %%i in (0 1 4) do set "NFF%%i=0"
for /l %%i in (0 1 %dif%) do set "NFF%%i=1"
if "%dfdiv%"=="2" set /a b1div1=(%sb%-3)/%dfdiv%+(2)
if "%dfdiv%"=="3" set /a b1div1=(%sb%-4)/%dfdiv%+(2)
if "%dfdiv%"=="3" set /a b1div2=(%sb%-4)/%dfdiv%*(2)+(3)+(%NFF2%)
if "%dfdiv%"=="4" set /a b1div1=(%sb%-5)/%dfdiv%+(2)
if "%dfdiv%"=="4" set /a b1div2=(%sb%-5)/%dfdiv%*(2)+(3)+(%NFF3%)
if "%dfdiv%"=="4" set /a b1div3=(%sb%-5)/%dfdiv%*(3)+(4)+(%NFF2%)+(%NFF3%)
if "%dfdiv%"=="5" set /a b1div1=(%sb%-6)/%dfdiv%+(2)
if "%dfdiv%"=="5" set /a b1div2=(%sb%-6)/%dfdiv%*(2)+(3)+(%NFF4%)
if "%dfdiv%"=="5" set /a b1div3=(%sb%-6)/%dfdiv%*(3)+(4)+(%NFF3%)+(%NFF4%)
if "%dfdiv%"=="5" set /a b1div4=(%sb%-6)/%dfdiv%*(4)+(5)+(%NFF2%)+(%NFF3%)+(%NFF4%)
for /l %%i in (0 1 4) do set "NFF%%i="
set dif=
if not defined dfdiv set /p b1div1=Divide box vertically? range 1 to  %sb%, ENTER to ignore  
set /a b1div1=b1div1-1
if %b1div1%==-1 set b1div1=
if defined b1div1 set /a b1div1=%sa%+1+%b1div1%
if %charlength%==79 if defined b1div1 set /a b1div1=b1div1-1
set verify=%%P%b1div1%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b1div1%=%zb8%& if not defined linkb set b1div1zb8=1) else (set P%b1div1%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b1div1 set /p b1div2=Make another division? range 1 to %sb%, ENTER to ignore   
set /a b1div2=b1div2-1
if %b1div2%==-1 set b1div2=
if defined b1div2 set /a b1div2=%sa%+1+%b1div2%
if %charlength%==79 if defined b1div2 set /a b1div2=b1div2-1
set verify=%%P%b1div2%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b1div2%=%zb8%& if not defined linkb set b1div2zb8=1) else (set P%b1div2%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b1div2 set /p b1div3=Make another division? range 1 to %sb%, ENTER to ignore   
set /a b1div3=b1div3-1
if %b1div3%==-1 set b1div3=
if defined b1div3 set /a b1div3=%sa%+1+%b1div3%
if %charlength%==79 if defined b1div3 set /a b1div3=b1div3-1
set verify=%%P%b1div3%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b1div3%=%zb8%& if not defined linkb set b1div3zb8=1) else (set P%b1div3%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b1div3 set /p b1div4=Make another division? range 1 to %sb%, ENTER to ignore   
set /a b1div4=b1div4-1
if %b1div4%==-1 set b1div4=
if defined b1div4 set /a b1div4=%sa%+1+%b1div4%
if %charlength%==79 if defined b1div4 set /a b1div4=b1div4-1
set verify=%%P%b1div4%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b1div4%=%zb8%& if not defined linkb set b1div4zb8=1) else (set P%b1div4%=%zb7%)
set verify=
echo.
echo.
set dfdiv=
if defined linkb goto returnbdiv1
set op=n
set /p op=You want to use a second box? Y (Yes), ENTER to ignore  
If /i %op%==y goto skipbox2
set exitxline=l
if defined insertart goto noinsert
goto xline
:box2
if "%line:~5,1%"=="2" set dfdiv=2
if "%line:~5,1%"=="3" set dfdiv=3
if "%line:~5,1%"=="4" set dfdiv=4
if "%line:~5,1%"=="5" set dfdiv=5
if not defined lb1 set exitedge=box2& goto edgeb
set line=
set /a a=a-1
if not defined line set line=%x%
if not defined x set "line=                                                                                                                                                                "& set /a a=a+1
set exitppp=box2process
goto ppp
:box2process
if %div%==6 set edge=
if %boxexit%==0 set boxexit=%div%
set charlength=77
if %boxexit%==6 set charlength=79
set div=5
if not defined xxxa set xxxa=NC 
if not defined xxxb set xxxb=NC 
:skipbox2
set xxxc=???
cls
echo.
echo.               %xxxb:~0,3% 
echo.          ---------- 
echo.------- ษออออออออออป  
echo.   %xxxa:~0,3%    บ          บ
echo.          บ          บ 
echo.          บ          บ 
echo.          ศออออออออออผ
echo.---------------------- ษออออออออออป 
echo.        %xxxc:~0,3%              บ          บ
echo.                         บ          บ
echo.                         บ          บ
echo.                         ศออออออออออผ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 Total %h1%  characters
echo.%displaylength%
set /p sc=Set the margin of the second box  
set xxxc=%sc%   end-line
set xxxd=???
cls
echo.
echo.               %xxxb:~0,3%
echo.          ----------
echo.------- ษออออออออออป
echo.   %xxxa:~0,3%    บ          บ
echo.          บ          บ
echo.          บ          บ         %xxxd:~0,3%
echo.          ศออออออออออผ   ----------
echo.---------------------- ษออออออออออป
echo.        %xxxc:~0,3%              บ          บ
echo.                         บ          บ
echo.                         บ          บ
echo.                         ศออออออออออผ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 Total %h1%  characters
echo.%displaylength%
:returnsd
set /p sd=Set the length of the second box  
set xxxd=%sd%  end-line
if %sd% LSS 2 echo.Error, value cannot be less than 2& goto returnsd
rem ------------------------------------- create box
set bln=2
if not defined bl1A set bl1A=NC 
if not defined bl3A set bl3A=NC 
if not defined bl4A set bl4A=NC 
set /a bl%bln%A=%sc%+%sd%
if %charlength%==79 set /a bl%bln%A=%sc%+%sd%-1
set /a sax=sc+1
if %charlength%==79 set sax=%sc%
set bl%bln%B=%sax%
set P%sax%=%zb0%
if defined nobox if not defined n%sax% set n%sax%=2
:openb2loop
set /a sax=sax+1
if defined nobox if not defined n%sax% set n%sax%=2
if %bln%==1 if %sax%==%bl1A% set P%sax%=%zb4%& goto existopenb2
if %bln%==2 if %sax%==%bl2A% set P%sax%=%zb4%& goto existopenb2
if %bln%==3 if %sax%==%bl3A% set P%sax%=%zb4%& goto existopenb2
if %bln%==4 if %sax%==%bl4A% set P%sax%=%zb4%& goto existopenb2
if %sax%==%bl1B% set P%bl1B%=%zb5%& set /a sax=sax+%sb%& set P%bl1A%=%zb1%
if %sax%==%bl3B% set P%bl3B%=%zb5%& set /a sax=sax+%sf%& set P%bl3A%=%zb1%
if %sax%==%bl4B% set P%bl4B%=%zb5%& set /a sax=sax+%sh%& set P%bl4A%=%zb1%
set P%sax%=%lb1:~0,1%
if %sax%==%b1div1% set P%sax%=%zb6%& set tb1div1=%b1div1%& set b1div1=& set tb1=2
if %sax%==%b1div2% set P%sax%=%zb6%& set tb1div2=%b1div2%& set b1div2=& set tb1=2
if %sax%==%b1div3% set P%sax%=%zb6%& set tb1div3=%b1div3%& set b1div3=& set tb1=2
if %sax%==%b1div4% set P%sax%=%zb6%& set tb1div4=%b1div4%& set b1div4=& set tb1=2
if %sax%==%b3div1% set P%sax%=%zb6%& set tb3div1=%b3div1%& set b3div1=& set tb3=2
if %sax%==%b3div2% set P%sax%=%zb6%& set tb3div2=%b3div2%& set b3div2=& set tb3=2
if %sax%==%b3div3% set P%sax%=%zb6%& set tb3div3=%b3div3%& set b3div3=& set tb3=2
if %sax%==%b3div4% set P%sax%=%zb6%& set tb3div4=%b3div4%& set b3div4=& set tb3=2
if %sax%==%b4div1% set P%sax%=%zb6%& set tb4div1=%b4div1%& set b4div1=& set tb4=2
if %sax%==%b4div2% set P%sax%=%zb6%& set tb4div2=%b4div2%& set b4div2=& set tb4=2
if %sax%==%b4div3% set P%sax%=%zb6%& set tb4div3=%b4div3%& set b4div3=& set tb4=2
if %sax%==%b4div4% set P%sax%=%zb6%& set tb4div4=%b4div4%& set b4div4=& set tb4=2
goto openb2loop
:existopenb2
if not defined linkb set sax=
set b2div1=
set b2div2=
set b2div3=
set b2div4=
cls
echo.
echo.
if "%dfdiv%"=="3" set /a dif=(%sd%-4)-(%sd%-4)/%dfdiv%*(3)
if "%dfdiv%"=="4" set /a dif=(%sd%-5)-(%sd%-5)/%dfdiv%*(4)
if "%dfdiv%"=="5" set /a dif=(%sd%-6)-(%sd%-6)/%dfdiv%*(5)
for /l %%i in (0 1 4) do set "NFF%%i=0"
for /l %%i in (0 1 %dif%) do set "NFF%%i=1"
if "%dfdiv%"=="2" set /a b2div1=(%sd%-3)/%dfdiv%+(2)
if "%dfdiv%"=="3" set /a b2div1=(%sd%-4)/%dfdiv%+(2)
if "%dfdiv%"=="3" set /a b2div2=(%sd%-4)/%dfdiv%*(2)+(3)+(%NFF2%)
if "%dfdiv%"=="4" set /a b2div1=(%sd%-5)/%dfdiv%+(2)
if "%dfdiv%"=="4" set /a b2div2=(%sd%-5)/%dfdiv%*(2)+(3)+(%NFF3%)
if "%dfdiv%"=="4" set /a b2div3=(%sd%-5)/%dfdiv%*(3)+(4)+(%NFF2%)+(%NFF3%)
if "%dfdiv%"=="5" set /a b2div1=(%sd%-6)/%dfdiv%+(2)
if "%dfdiv%"=="5" set /a b2div2=(%sd%-6)/%dfdiv%*(2)+(3)+(%NFF4%)
if "%dfdiv%"=="5" set /a b2div3=(%sd%-6)/%dfdiv%*(3)+(4)+(%NFF3%)+(%NFF4%)
if "%dfdiv%"=="5" set /a b2div4=(%sd%-6)/%dfdiv%*(4)+(5)+(%NFF2%)+(%NFF3%)+(%NFF4%)
for /l %%i in (0 1 4) do set "NFF%%i="
set dif=
if not defined dfdiv set /p b2div1=Divide box vertically? range 1 to  %sd%, ENTER to ignore  
set /a b2div1=b2div1-1
if %b2div1%==-1 set b2div1=
if defined b2div1 set /a b2div1=%sc%+1+%b2div1%
if %charlength%==79 if defined b2div1 set /a b2div1=b2div1-1
set verify=%%P%b2div1%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b2div1%=%zb8%& if not defined linkb set b2div1zb8=1) else (set P%b2div1%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b2div1 set /p b2div2=Make another division? range 1 to %sd%, ENTER to ignore   
set /a b2div2=b2div2-1
if %b2div2%==-1 set b2div2=
if defined b2div2 set /a b2div2=%sc%+1+%b2div2%
if %charlength%==79 if defined b2div2 set /a b2div2=b2div2-1
set verify=%%P%b2div2%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b2div2%=%zb8%& if not defined linkb set b2div2zb8=1) else (set P%b2div2%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b2div2 set /p b2div3=Make another division? range 1 to %sd%, ENTER to ignore   
set /a b2div3=b2div3-1
if %b2div3%==-1 set b2div3=
if defined b2div3 set /a b2div3=%sc%+1+%b2div3%
if %charlength%==79 if defined b2div3 set /a b2div3=b2div3-1
set verify=%%P%b2div3%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b2div3%=%zb8%& if not defined linkb set b2div3zb8=1) else (set P%b2div3%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b2div3 set /p b2div4=Make another division? range 1 to %sd%, ENTER to ignore   
set /a b2div4=b2div4-1
if %b2div4%==-1 set b2div4=
if defined b2div4 set /a b2div4=%sc%+1+%b2div4%
if %charlength%==79 if defined b2div4 set /a b2div4=b2div4-1
set verify=%%P%b2div4%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b2div4%=%zb8%& if not defined linkb set b2div4zb8=1) else (set P%b2div4%=%zb7%)
set verify=
echo.
echo.
set dfdiv=
if defined linkb goto returnbdiv2
set op=n
set /p op=You want to use a third box? Y (Yes), ENTER to ignore  
If /i %op%==y goto skipbox3
set exitxline=l
if defined insertart goto noinsert
goto xline
:box3
if "%line:~5,1%"=="2" set dfdiv=2
if "%line:~5,1%"=="3" set dfdiv=3
if "%line:~5,1%"=="4" set dfdiv=4
if "%line:~5,1%"=="5" set dfdiv=5
if not defined lb1 set exitedge=box3& goto edgeb
set line=
set /a a=a-1
if not defined line set line=%x%
if not defined x set "line=                                                                                                                                                                "& set /a a=a+1
set exitppp=box3process
goto ppp
:box3process
if %div%==6 set edge=
if %boxexit%==0 set boxexit=%div%
set charlength=77
if %boxexit%==6 set charlength=79
set div=5
if not defined xxxa set xxxa=NC 
if not defined xxxb set xxxb=NC 
if not defined xxxc set xxxc=NC 
if not defined xxxd set xxxd=NC 
:skipbox3
set xxxe=???
cls
echo.
echo.               %xxxb:~0,3%
echo.          ----------
echo.------- ษออออออออออป
echo.   %xxxa:~0,3%    บ          บ
echo.          บ          บ
echo.          บ          บ         %xxxd:~0,3%
echo.          ศออออออออออผ   ----------
echo.---------------------- ษออออออออออป
echo.        %xxxc:~0,3%              บ          บ
echo.                         บ          บ
echo.                         บ          บ
echo.                         ศออออออออออผ
echo.------------------------------------- ษออออออออออป
echo.               %xxxe:~0,3%                      บ          บ
echo.                                        บ          บ
echo.                                        บ          บ
echo.                                        ศออออออออออผ
echo.
echo.
echo.
echo.
echo.                                 Total %h1%  characters
echo.%displaylength%
set /p se=Set the Third Margin box 
set xxxe=%se%   end-line
set xxxf=???
cls
echo.
echo.               %xxxb:~0,3%
echo.          ----------
echo.------- ษออออออออออป 
echo.   %xxxa:~0,3%    บ          บ
echo.          บ          บ
echo.          บ          บ         %xxxd:~0,3%
echo.          ศออออออออออผ   ----------
echo.---------------------- ษออออออออออป
echo.        %xxxc:~0,3%              บ          บ
echo.                         บ          บ
echo.                         บ          บ        %xxxf:~0,3%
echo.                         ศออออออออออผ   ----------
echo.------------------------------------- ษออออออออออป
echo.               %xxxe:~0,3%                      บ          บ
echo.                                        บ          บ
echo.                                        บ          บ
echo.                                        ศออออออออออผ
echo.
echo.
echo.
echo.
echo.                                 Total %h1%  characters
echo.%displaylength%
:returnsf
set /p sf=Set the third length box 
set xxxf=%sf%  end-line
if %sf% LSS 2 echo.Error, value cannot be less than 2& goto returnsf
rem ------------------------------------- create box
set bln=3
if not defined bl1A set bl1A=NC 
if not defined bl2A set bl2A=NC 
if not defined bl4A set bl4A=NC 
set /a bl%bln%A=%se%+%sf%
if %charlength%==79 set /a bl%bln%A=%se%+%sf%-1
set /a sax=se+1
if %charlength%==79 set sax=%se%
set bl%bln%B=%sax%
set P%sax%=%zb0%
if defined nobox if not defined n%sax% set n%sax%=3
:openb3loop
set /a sax=sax+1
if defined nobox if not defined n%sax% set n%sax%=3
if %bln%==1 if %sax%==%bl1A% set P%sax%=%zb4%& goto existopenb3
if %bln%==2 if %sax%==%bl2A% set P%sax%=%zb4%& goto existopenb3
if %bln%==3 if %sax%==%bl3A% set P%sax%=%zb4%& goto existopenb3
if %bln%==4 if %sax%==%bl4A% set P%sax%=%zb4%& goto existopenb3
if %sax%==%bl1B% set P%bl1B%=%zb5%& set /a sax=sax+%sb%& set P%bl1A%=%zb1%
if %sax%==%bl2B% set P%bl2B%=%zb5%& set /a sax=sax+%sd%& set P%bl2A%=%zb1%
if %sax%==%bl4B% set P%bl4B%=%zb5%& set /a sax=sax+%sh%& set P%bl4A%=%zb1%
set P%sax%=%lb1:~0,1%
if %sax%==%b1div1% set P%sax%=%zb6%& set tb1div1=%b1div1%& set b1div1=& set tb1=3
if %sax%==%b1div2% set P%sax%=%zb6%& set tb1div2=%b1div2%& set b1div2=& set tb1=3
if %sax%==%b1div3% set P%sax%=%zb6%& set tb1div3=%b1div3%& set b1div3=& set tb1=3
if %sax%==%b1div4% set P%sax%=%zb6%& set tb1div4=%b1div4%& set b1div4=& set tb1=3
if %sax%==%b2div1% set P%sax%=%zb6%& set tb2div1=%b2div1%& set b2div1=& set tb2=3
if %sax%==%b2div2% set P%sax%=%zb6%& set tb2div2=%b2div2%& set b2div2=& set tb2=3
if %sax%==%b2div3% set P%sax%=%zb6%& set tb2div3=%b2div3%& set b2div3=& set tb2=3
if %sax%==%b2div4% set P%sax%=%zb6%& set tb2div4=%b2div4%& set b2div4=& set tb2=3
if %sax%==%b4div1% set P%sax%=%zb6%& set tb4div1=%b4div1%& set b4div1=& set tb4=3
if %sax%==%b4div2% set P%sax%=%zb6%& set tb4div2=%b4div2%& set b4div2=& set tb4=3
if %sax%==%b4div3% set P%sax%=%zb6%& set tb4div3=%b4div3%& set b4div3=& set tb4=3
if %sax%==%b4div4% set P%sax%=%zb6%& set tb4div4=%b4div4%& set b4div4=& set tb4=3
goto openb3loop
:existopenb3
if not defined linkb set sax=
set b3div1=
set b3div2=
set b3div3=
set b3div4=
cls
echo.
echo.
if "%dfdiv%"=="3" set /a dif=(%sf%-4)-(%sf%-4)/%dfdiv%*(3)
if "%dfdiv%"=="4" set /a dif=(%sf%-5)-(%sf%-5)/%dfdiv%*(4)
if "%dfdiv%"=="5" set /a dif=(%sf%-6)-(%sf%-6)/%dfdiv%*(5)
for /l %%i in (0 1 4) do set "NFF%%i=0"
for /l %%i in (0 1 %dif%) do set "NFF%%i=1"
if "%dfdiv%"=="2" set /a b3div1=(%sf%-3)/%dfdiv%+(2)
if "%dfdiv%"=="3" set /a b3div1=(%sf%-4)/%dfdiv%+(2)
if "%dfdiv%"=="3" set /a b3div2=(%sf%-4)/%dfdiv%*(2)+(3)+(%NFF2%)
if "%dfdiv%"=="4" set /a b3div1=(%sf%-5)/%dfdiv%+(2)
if "%dfdiv%"=="4" set /a b3div2=(%sf%-5)/%dfdiv%*(2)+(3)+(%NFF3%)
if "%dfdiv%"=="4" set /a b3div3=(%sf%-5)/%dfdiv%*(3)+(4)+(%NFF2%)+(%NFF3%)
if "%dfdiv%"=="5" set /a b3div1=(%sf%-6)/%dfdiv%+(2)
if "%dfdiv%"=="5" set /a b3div2=(%sf%-6)/%dfdiv%*(2)+(3)+(%NFF4%)
if "%dfdiv%"=="5" set /a b3div3=(%sf%-6)/%dfdiv%*(3)+(4)+(%NFF3%)+(%NFF4%)
if "%dfdiv%"=="5" set /a b3div4=(%sf%-6)/%dfdiv%*(4)+(5)+(%NFF2%)+(%NFF3%)+(%NFF4%)
for /l %%i in (0 1 4) do set "NFF%%i="
set dif=
if not defined dfdiv set /p b3div1=Divide box vertically? range 1 to  %sf%, ENTER to ignore  
set /a b3div1=b3div1-1
if %b3div1%==-1 set b3div1=
if defined b3div1 set /a b3div1=%se%+1+%b3div1%
if %charlength%==79 if defined b3div1 set /a b3div1=b3div1-1
set verify=%%P%b3div1%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b3div1%=%zb8%& if not defined linkb set b3div1zb8=1) else (set P%b3div1%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b3div1 set /p b3div2=Make another division? range 1 to %sf%, ENTER to ignore   
set /a b3div2=b3div2-1
if %b3div2%==-1 set b3div2=
if defined b3div2 set /a b3div2=%se%+1+%b3div2%
if %charlength%==79 if defined b3div2 set /a b3div2=b3div2-1
set verify=%%P%b3div2%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b3div2%=%zb8%& if not defined linkb set b3div2zb8=1) else (set P%b3div2%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b3div2 set /p b3div3=Make another division? range 1 to %sf%, ENTER to ignore   
set /a b3div3=b3div3-1
if %b3div3%==-1 set b3div3=
if defined b3div3 set /a b3div3=%se%+1+%b3div3%
if %charlength%==79 if defined b3div3 set /a b3div3=b3div3-1
set verify=%%P%b3div3%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b3div3%=%zb8%& if not defined linkb set b3div3zb8=1) else (set P%b3div3%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b3div3 set /p b3div4=Make another division? range 1 to %sf%, ENTER to ignore   
set /a b3div4=b3div4-1
if %b3div4%==-1 set b3div4=
if defined b3div4 set /a b3div4=%se%+1+%b3div4%
if %charlength%==79 if defined b3div4 set /a b3div4=b3div4-1
set verify=%%P%b3div4%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b3div4%=%zb8%& if not defined linkb set b3div4zb8=1) else (set P%b3div4%=%zb7%)
set verify=
echo.
echo.
set dfdiv=
if defined linkb goto returnbdiv3
set op=n
set /p op=To use a fourth box? Y (Yes), ENTER to ignore  
If /i %op%==y goto skipbox4
set exitxline=l
if defined insertart goto noinsert
goto xline
:box4
if "%line:~5,1%"=="2" set dfdiv=2
if "%line:~5,1%"=="3" set dfdiv=3
if "%line:~5,1%"=="4" set dfdiv=4
if "%line:~5,1%"=="5" set dfdiv=5
if not defined lb1 set exitedge=box4& goto edgeb
set line=
set /a a=a-1
if not defined line set line=%x%
if not defined x set "line=                                                                                                                                                                "& set /a a=a+1
set exitppp=box4process
goto ppp
:box4process
if %div%==6 set edge=
if %boxexit%==0 set boxexit=%div%
set charlength=77
if %boxexit%==6 set charlength=79
set div=5
if not defined xxxa set xxxa=NC 
if not defined xxxb set xxxb=NC 
if not defined xxxc set xxxc=NC 
if not defined xxxd set xxxd=NC 
if not defined xxxe set xxxe=NC 
if not defined xxxf set xxxf=NC 
:skipbox4
set xxxg=???
cls
echo.               %xxxb:~0,3%
echo.          ---------- 
echo.------- ษออออออออออป
echo.   %xxxa:~0,3%    บ          บ
echo.          บ          บ
echo.          บ          บ         %xxxd:~0,3%
echo.          ศออออออออออผ   ----------
echo.---------------------- ษออออออออออป
echo.        %xxxc:~0,3%              บ          บ
echo.                         บ          บ
echo.                         บ          บ        %xxxf:~0,3%
echo.                         ศออออออออออผ   ----------
echo.------------------------------------- ษออออออออออป
echo.               %xxxe:~0,3%                      บ          บ
echo.                                        บ          บ
echo.                                        บ          บ
echo.                                        ศออออออออออผ 
echo.---------------------------------------------------- ษออออออออออป
echo.                         %xxxg:~0,3%                           บ          บ
echo.                                                       บ          บ
echo.                                                       บ          บ
echo.                                                       ศออออออออออผ
echo.                                 Total %h1%  characters
echo.%displaylength%
set /p sg=Set the fourth box Margin  
set xxxg=%sg%   end-line
cls
echo.               %xxxb:~0,3%     
echo.          ---------- 
echo.------- ษออออออออออป
echo.   %xxxa:~0,3%    บ          บ
echo.          บ          บ         
echo.          บ          บ         %xxxd:~0,3%
echo.          ศออออออออออผ   ---------- 
echo.---------------------- ษออออออออออป
echo.        %xxxc:~0,3%              บ          บ
echo.                         บ          บ
echo.                         บ          บ        %xxxf:~0,3%
echo.                         ศออออออออออผ   ----------
echo.------------------------------------- ษออออออออออป
echo.               %xxxe:~0,3%                      บ          บ
echo.                                        บ          บ
echo.                                        บ          บ       ??
echo.                                        ศออออออออออผ   ---------- 
echo.---------------------------------------------------- ษออออออออออป
echo.                         %xxxg:~0,3%                           บ          บ
echo.                                                       บ          บ
echo.                                                       บ          บ
echo.                                                       ศออออออออออผ
echo.                                 Total %h1%  characters
echo.%displaylength%
:returnsh
set /p sh=Set the length of the fourth box  
if %sh% LSS 2 echo.Error, value cannot be less than 2& goto returnsh
rem ------------------------------------- create box
set bln=4
if not defined bl1A set bl1A=NC 
if not defined bl2A set bl2A=NC 
if not defined bl3A set bl3A=NC 
set /a bl%bln%A=%sg%+%sh%
if %charlength%==79 set /a bl%bln%A=%sg%+%sh%-1
set /a sax=sg+1
if %charlength%==79 set sax=%sg%
set bl%bln%B=%sax%
set P%sax%=%zb0%
if defined nobox if not defined n%sax% set n%sax%=4
:openb4loop
set /a sax=sax+1
if defined nobox if not defined n%sax% set n%sax%=4
if %bln%==1 if %sax%==%bl1A% set P%sax%=%zb4%& goto existopenb4
if %bln%==2 if %sax%==%bl2A% set P%sax%=%zb4%& goto existopenb4
if %bln%==3 if %sax%==%bl3A% set P%sax%=%zb4%& goto existopenb4
if %bln%==4 if %sax%==%bl4A% set P%sax%=%zb4%& goto existopenb4
if %sax%==%bl1B% set P%bl1B%=%zb5%& set /a sax=sax+%sb%& set P%bl1A%=%zb1%
if %sax%==%bl2B% set P%bl2B%=%zb5%& set /a sax=sax+%sd%& set P%bl2A%=%zb1%
if %sax%==%bl3B% set P%bl3B%=%zb5%& set /a sax=sax+%sf%& set P%bl3A%=%zb1%
set P%sax%=%lb1:~0,1%
if %sax%==%b1div1% set P%sax%=%zb6%& set tb1div1=%b1div1%& set b1div1=& set tb1=4
if %sax%==%b1div2% set P%sax%=%zb6%& set tb1div2=%b1div2%& set b1div2=& set tb1=4
if %sax%==%b1div3% set P%sax%=%zb6%& set tb1div3=%b1div3%& set b1div3=& set tb1=4
if %sax%==%b1div4% set P%sax%=%zb6%& set tb1div4=%b1div4%& set b1div4=& set tb1=4
if %sax%==%b2div1% set P%sax%=%zb6%& set tb2div1=%b2div1%& set b2div1=& set tb2=4
if %sax%==%b2div2% set P%sax%=%zb6%& set tb2div2=%b2div2%& set b2div2=& set tb2=4
if %sax%==%b2div3% set P%sax%=%zb6%& set tb2div3=%b2div3%& set b2div3=& set tb2=4
if %sax%==%b2div4% set P%sax%=%zb6%& set tb2div4=%b2div4%& set b2div4=& set tb2=4
if %sax%==%b3div1% set P%sax%=%zb6%& set tb3div1=%b3div1%& set b3div1=& set tb3=4
if %sax%==%b3div2% set P%sax%=%zb6%& set tb3div2=%b3div2%& set b3div2=& set tb3=4
if %sax%==%b3div3% set P%sax%=%zb6%& set tb3div3=%b3div3%& set b3div3=& set tb3=4
if %sax%==%b3div4% set P%sax%=%zb6%& set tb3div4=%b3div4%& set b3div4=& set tb3=4
goto openb4loop
:existopenb4
if not defined linkb set sax=
set b4div1=
set b4div2=
set b4div3=
set b4div4=
cls
echo.
echo.
if "%dfdiv%"=="3" set /a dif=(%sh%-4)-(%sh%-4)/%dfdiv%*(3)
if "%dfdiv%"=="4" set /a dif=(%sh%-5)-(%sh%-5)/%dfdiv%*(4)
if "%dfdiv%"=="5" set /a dif=(%sh%-6)-(%sh%-6)/%dfdiv%*(5)
for /l %%i in (0 1 4) do set "NFF%%i=0"
for /l %%i in (0 1 %dif%) do set "NFF%%i=1"
if "%dfdiv%"=="2" set /a b4div1=(%sh%-3)/%dfdiv%+(2)
if "%dfdiv%"=="3" set /a b4div1=(%sh%-4)/%dfdiv%+(2)
if "%dfdiv%"=="3" set /a b4div2=(%sh%-4)/%dfdiv%*(2)+(3)+(%NFF2%)
if "%dfdiv%"=="4" set /a b4div1=(%sh%-5)/%dfdiv%+(2)
if "%dfdiv%"=="4" set /a b4div2=(%sh%-5)/%dfdiv%*(2)+(3)+(%NFF3%)
if "%dfdiv%"=="4" set /a b4div3=(%sh%-5)/%dfdiv%*(3)+(4)+(%NFF2%)+(%NFF3%)
if "%dfdiv%"=="5" set /a b4div1=(%sh%-6)/%dfdiv%+(2)
if "%dfdiv%"=="5" set /a b4div2=(%sh%-6)/%dfdiv%*(2)+(3)+(%NFF4%)
if "%dfdiv%"=="5" set /a b4div3=(%sh%-6)/%dfdiv%*(3)+(4)+(%NFF3%)+(%NFF4%)
if "%dfdiv%"=="5" set /a b4div4=(%sh%-6)/%dfdiv%*(4)+(5)+(%NFF2%)+(%NFF3%)+(%NFF4%)
for /l %%i in (0 1 4) do set "NFF%%i="
set dif=
if not defined dfdiv set /p b4div1=Divide box vertically? range 1 to  %sh%, ENTER to ignore  
set /a b4div1=b4div1-1
if %b4div1%==-1 set b4div1=
if defined b4div1 set /a b4div1=%sg%+1+%b4div1%
if %charlength%==79 if defined b4div1 set /a b4div1=b4div1-1
set verify=%%P%b4div1%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b4div1%=%zb8%& if not defined linkb set b4div1zb8=1) else (set P%b4div1%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b4div1 set /p b4div2=Make another division? range 1 to %sh%, ENTER to ignore   
set /a b4div2=b4div2-1
if %b4div2%==-1 set b4div2=
if defined b4div2 set /a b4div2=%sg%+1+%b4div2%
if %charlength%==79 if defined b4div2 set /a b4div2=b4div2-1
set verify=%%P%b4div2%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b4div2%=%zb8%& if not defined linkb set b4div2zb8=1) else (set P%b4div2%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b4div2 set /p b4div3=Make another division? range 1 to %sh%, ENTER to ignore   
set /a b4div3=b4div3-1
if %b4div3%==-1 set b4div3=
if defined b4div3 set /a b4div3=%sg%+1+%b4div3%
if %charlength%==79 if defined b4div3 set /a b4div3=b4div3-1
set verify=%%P%b4div3%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b4div3%=%zb8%& if not defined linkb set b4div3zb8=1) else (set P%b4div3%=%zb7%)
set verify=
echo.
echo.
if not defined dfdiv if defined b4div3 set /p b4div4=Make another division? range 1 to %sh%, ENTER to ignore   
set /a b4div4=b4div4-1
if %b4div4%==-1 set b4div4=
if defined b4div4 set /a b4div4=%sg%+1+%b4div4%
if %charlength%==79 if defined b4div4 set /a b4div4=b4div4-1
set verify=%%P%b4div4%%%
for /f "usebackq tokens=*"  %%i in (`echo."%verify%"`) do set verify=%%i
if "%verify:~1,-1%"=="%zb6%" (set P%b4div4%=%zb8%& if not defined linkb set b4div4zb8=1) else (set P%b4div4%=%zb7%)
set verify=
set dfdiv=
if defined linkb goto returnbdiv4
set exitxline=l
if defined insertart goto noinsert
goto xline
rem ----------------------------------------------------------------------------------------- boxuser2
:boxuser2
if %charlength%==77 set line=%edge%%line:~0,77%%edge%
if not defined screen if %charlength%==79 set line=%line:~0,79%
set nscreen=%%line:~0,%h1%%%
for /f "usebackq tokens=*"  %%i in (`echo."%nscreen%"`) do set nscreen=%%i
if defined screen if %charlength%==79 set line=%nscreen:~1,-1%
set nscreen=
set exitppp=loopboxuser2
goto ppp
:loopboxuser2
set P%bl1A%=%zb9%
set P%bl1B%=%zb9%
set P%bl2A%=%zb9%
set P%bl2B%=%zb9%
set P%bl3A%=%zb9%
set P%bl3B%=%zb9%
set P%bl4A%=%zb9%
set P%bl4B%=%zb9%
if "%shatype%"=="1" if defined sa if defined shadow1 set /a valueshadow1=%Bl1B%-1
if "%shatype%"=="2" if defined sa if defined shadow1 set /a valueshadow1=%Bl1A%+1
if defined sa if defined shadow1 set P%valueshadow1%=%shadow1%
if "%shatype%"=="1" if defined sc if defined shadow2 set /a valueshadow2=%Bl2B%-1
if "%shatype%"=="2" if defined sc if defined shadow2 set /a valueshadow2=%Bl2A%+1
if defined sc if defined shadow2 set P%valueshadow2%=%shadow2%
if "%shatype%"=="1" if defined se if defined shadow3 set /a valueshadow3=%Bl3B%-1
if "%shatype%"=="2" if defined se if defined shadow3 set /a valueshadow3=%Bl3A%+1
if defined se if defined shadow3 set P%valueshadow3%=%shadow3%
if "%shatype%"=="1" if defined sg if defined shadow4 set /a valueshadow4=%Bl4B%-1
if "%shatype%"=="2" if defined sg if defined shadow4 set /a valueshadow4=%Bl4A%+1
if defined sg if defined shadow4 set P%valueshadow4%=%shadow4%
if defined b1div1 set P%b1div1%=%zb9%
if defined b1div2 set P%b1div2%=%zb9%
if defined b1div3 set P%b1div3%=%zb9%
if defined b1div4 set P%b1div4%=%zb9%
if defined b2div1 set P%b2div1%=%zb9%
if defined b2div2 set P%b2div2%=%zb9%
if defined b2div3 set P%b2div3%=%zb9%
if defined b2div4 set P%b2div4%=%zb9%
if defined b3div1 set P%b3div1%=%zb9%
if defined b3div2 set P%b3div2%=%zb9%
if defined b3div3 set P%b3div3%=%zb9%
if defined b3div4 set P%b3div4%=%zb9%
if defined b4div1 set P%b4div1%=%zb9%
if defined b4div2 set P%b4div2%=%zb9%
if defined b4div3 set P%b4div3%=%zb9%
if defined b4div4 set P%b4div4%=%zb9%
set exitxline=l
goto xline
rem --------------------------------------------part columns box1
:partb1-
if not defined sa set /a a=a-1& goto l
if "%line:~7,1%"=="1" set ok1=1
if "%line:~7,1%"=="2" set ok2=1
if "%line:~7,1%"=="3" set ok3=1
if "%line:~7,1%"=="4" set ok4=1
if "%line:~7,1%"=="5" set ok5=1
if "%line:~8,1%"=="1" set ok1=1
if "%line:~8,1%"=="2" set ok2=1
if "%line:~8,1%"=="3" set ok3=1
if "%line:~8,1%"=="4" set ok4=1
if "%line:~8,1%"=="5" set ok5=1
if "%line:~9,1%"=="1" set ok1=1
if "%line:~9,1%"=="2" set ok2=1
if "%line:~9,1%"=="3" set ok3=1
if "%line:~9,1%"=="4" set ok4=1
if "%line:~9,1%"=="5" set ok5=1
if "%line:~10,1%"=="1" set ok1=1
if "%line:~10,1%"=="2" set ok2=1
if "%line:~10,1%"=="3" set ok3=1
if "%line:~10,1%"=="4" set ok4=1
if "%line:~10,1%"=="5" set ok5=1
if "%line:~11,1%"=="1" set ok1=1
if "%line:~11,1%"=="2" set ok2=1
if "%line:~11,1%"=="3" set ok3=1
if "%line:~11,1%"=="4" set ok4=1
if "%line:~11,1%"=="5" set ok5=1
if not defined b1div4 set ok5=
if not defined b1div3 set ok4=
if not defined b1div2 set ok3=
if not defined b1div1 set ok2=
set /a a=a-1
set line=%x%
set exitppp=partb1-return
goto ppp
:partb1-return
if defined ok1 set P%bl1B%=%zb1%
if defined b1div1 if defined ok2 set P%b1div1%=%zb1%
if defined b1div2 if defined ok3 set P%b1div2%=%zb1%
if defined b1div3 if defined ok4 set P%b1div3%=%zb1%
if defined b1div4 if defined ok5 set P%b1div4%=%zb1%
if defined b1div1 if defined ok1 set P%b1div1%=%zb5%
if defined b1div2 if defined ok2 set P%b1div2%=%zb5%
if defined b1div3 if defined ok3 set P%b1div3%=%zb5%
if defined b1div4 if defined ok4 set P%b1div4%=%zb5%
if defined ok1 if defined ok2 set P%b1div1%=%zb8%
if defined ok2 if defined ok3 set P%b1div2%=%zb8%
if defined ok3 if defined ok4 set P%b1div3%=%zb8%
if defined ok4 if defined ok5 set P%b1div4%=%zb8%
:ok-allb1
if defined ok1 set sax=%bl1B% & goto part-allb1
if defined ok2 set sax=%b1div1% & goto part-allb1
if defined ok3 set sax=%b1div2% & goto part-allb1
if defined ok4 set sax=%b1div3% & goto part-allb1
if defined ok5 set sax=%b1div4% & goto part-allb1
goto ok-exitb1
:part-allb1
set /a sax=%sax%+1
if %bl1A% GTR %bl2A% if %sax%==%bl2B% set P%bl2B%=%zb5%& set /a sax=sax+%sd%& set P%bl2A%=%zb1%
if %bl1A% GTR %bl3A% if %sax%==%bl3B% set P%bl3B%=%zb5%& set /a sax=sax+%sf%& set P%bl3A%=%zb1%
if %bl1A% GTR %bl4A% if %sax%==%bl4B% set P%bl4B%=%zb5%& set /a sax=sax+%sh%& set P%bl4A%=%zb1%
if defined ok1 if %sax%==%b1div1% set ok1=& goto ok-allb1
if defined ok2 if %sax%==%b1div2% set ok2=& goto ok-allb1
if defined ok3 if %sax%==%b1div3% set ok3=& goto ok-allb1
if defined ok4 if %sax%==%b1div4% set ok4=& goto ok-allb1
if defined ok1 if %sax%==%bl1A% set ok1=& set P%bl1A%=%zb5%& goto ok-allb1
if defined ok2 if %sax%==%bl1A% set ok2=& set P%bl1A%=%zb5%& goto ok-allb1
if defined ok3 if %sax%==%bl1A% set ok3=& set P%bl1A%=%zb5%& goto ok-allb1
if defined ok4 if %sax%==%bl1A% set ok4=& set P%bl1A%=%zb5%& goto ok-allb1
if defined ok5 if %sax%==%bl1A% set ok5=& set P%bl1A%=%zb5%& goto ok-allb1
set P%sax%=%lb2%
goto part-allb1
:ok-exitb1
if defined insertart goto noinsert
set exitxline=l
goto xline
rem --------------------------------------------part columns box2
:partb2-
if not defined sc set /a a=a-1& goto l
if "%line:~7,1%"=="1" set ok1=1
if "%line:~7,1%"=="2" set ok2=1
if "%line:~7,1%"=="3" set ok3=1
if "%line:~7,1%"=="4" set ok4=1
if "%line:~7,1%"=="5" set ok5=1
if "%line:~8,1%"=="1" set ok1=1
if "%line:~8,1%"=="2" set ok2=1
if "%line:~8,1%"=="3" set ok3=1
if "%line:~8,1%"=="4" set ok4=1
if "%line:~8,1%"=="5" set ok5=1
if "%line:~9,1%"=="1" set ok1=1
if "%line:~9,1%"=="2" set ok2=1
if "%line:~9,1%"=="3" set ok3=1
if "%line:~9,1%"=="4" set ok4=1
if "%line:~9,1%"=="5" set ok5=1
if "%line:~10,1%"=="1" set ok1=1
if "%line:~10,1%"=="2" set ok2=1
if "%line:~10,1%"=="3" set ok3=1
if "%line:~10,1%"=="4" set ok4=1
if "%line:~10,1%"=="5" set ok5=1
if "%line:~11,1%"=="1" set ok1=1
if "%line:~11,1%"=="2" set ok2=1
if "%line:~11,1%"=="3" set ok3=1
if "%line:~11,1%"=="4" set ok4=1
if "%line:~11,1%"=="5" set ok5=1
if not defined b2div4 set ok5=
if not defined b2div3 set ok4=
if not defined b2div2 set ok3=
if not defined b2div1 set ok2=
set /a a=a-1
set line=%x%
set exitppp=partb2-return
goto ppp
:partb2-return
if defined ok1 set P%bl2B%=%zb1%
if defined b2div1 if defined ok2 set P%b2div1%=%zb1%
if defined b2div2 if defined ok3 set P%b2div2%=%zb1%
if defined b2div3 if defined ok4 set P%b2div3%=%zb1%
if defined b2div4 if defined ok5 set P%b2div4%=%zb1%
if defined b2div1 if defined ok1 set P%b2div1%=%zb5%
if defined b2div2 if defined ok2 set P%b2div2%=%zb5%
if defined b2div3 if defined ok3 set P%b2div3%=%zb5%
if defined b2div4 if defined ok4 set P%b2div4%=%zb5%
if defined ok1 if defined ok2 set P%b2div1%=%zb8%
if defined ok2 if defined ok3 set P%b2div2%=%zb8%
if defined ok3 if defined ok4 set P%b2div3%=%zb8%
if defined ok4 if defined ok5 set P%b2div4%=%zb8%
:ok-allb2
if defined ok1 set sax=%bl2B% & goto part-allb2
if defined ok2 set sax=%b2div1% & goto part-allb2
if defined ok3 set sax=%b2div2% & goto part-allb2
if defined ok4 set sax=%b2div3% & goto part-allb2
if defined ok5 set sax=%b2div4% & goto part-allb2
goto ok-exitb2
:part-allb2
set /a sax=%sax%+1
if %bl2A% GTR %bl1A% if %sax%==%bl1B% set P%bl1B%=%zb5%& set /a sax=sax+%sb%& set P%bl1A%=%zb1%
if %bl2A% GTR %bl3A% if %sax%==%bl3B% set P%bl3B%=%zb5%& set /a sax=sax+%sf%& set P%bl3A%=%zb1%
if %bl2A% GTR %bl4A% if %sax%==%bl4B% set P%bl4B%=%zb5%& set /a sax=sax+%sh%& set P%bl4A%=%zb1%
if defined ok1 if %sax%==%b2div1% set ok1=& goto ok-allb2
if defined ok2 if %sax%==%b2div2% set ok2=& goto ok-allb2
if defined ok3 if %sax%==%b2div3% set ok3=& goto ok-allb2
if defined ok4 if %sax%==%b2div4% set ok4=& goto ok-allb2
if defined ok1 if %sax%==%bl2A% set ok1=& set P%bl2A%=%zb5%& goto ok-allb2
if defined ok2 if %sax%==%bl2A% set ok2=& set P%bl2A%=%zb5%& goto ok-allb2
if defined ok3 if %sax%==%bl2A% set ok3=& set P%bl2A%=%zb5%& goto ok-allb2
if defined ok4 if %sax%==%bl2A% set ok4=& set P%bl2A%=%zb5%& goto ok-allb2
if defined ok5 if %sax%==%bl2A% set ok5=& set P%bl2A%=%zb5%& goto ok-allb2
set P%sax%=%lb2%
goto part-allb2
:ok-exitb2
if defined insertart goto noinsert
set exitxline=l
goto xline
rem --------------------------------------------part columns box3
:partb3-
if not defined se set /a a=a-1& goto l
if "%line:~7,1%"=="1" set ok1=1
if "%line:~7,1%"=="2" set ok2=1
if "%line:~7,1%"=="3" set ok3=1
if "%line:~7,1%"=="4" set ok4=1
if "%line:~7,1%"=="5" set ok5=1
if "%line:~8,1%"=="1" set ok1=1
if "%line:~8,1%"=="2" set ok2=1
if "%line:~8,1%"=="3" set ok3=1
if "%line:~8,1%"=="4" set ok4=1
if "%line:~8,1%"=="5" set ok5=1
if "%line:~9,1%"=="1" set ok1=1
if "%line:~9,1%"=="2" set ok2=1
if "%line:~9,1%"=="3" set ok3=1
if "%line:~9,1%"=="4" set ok4=1
if "%line:~9,1%"=="5" set ok5=1
if "%line:~10,1%"=="1" set ok1=1
if "%line:~10,1%"=="2" set ok2=1
if "%line:~10,1%"=="3" set ok3=1
if "%line:~10,1%"=="4" set ok4=1
if "%line:~10,1%"=="5" set ok5=1
if "%line:~11,1%"=="1" set ok1=1
if "%line:~11,1%"=="2" set ok2=1
if "%line:~11,1%"=="3" set ok3=1
if "%line:~11,1%"=="4" set ok4=1
if "%line:~11,1%"=="5" set ok5=1
if not defined b3div4 set ok5=
if not defined b3div3 set ok4=
if not defined b3div2 set ok3=
if not defined b3div1 set ok2=
set /a a=a-1
set line=%x%
set exitppp=partb3-return
goto ppp
:partb3-return
if defined ok1 set P%bl3B%=%zb1%
if defined b3div1 if defined ok2 set P%b3div1%=%zb1%
if defined b3div2 if defined ok3 set P%b3div2%=%zb1%
if defined b3div3 if defined ok4 set P%b3div3%=%zb1%
if defined b3div4 if defined ok5 set P%b3div4%=%zb1%
if defined b3div1 if defined ok1 set P%b3div1%=%zb5%
if defined b3div2 if defined ok2 set P%b3div2%=%zb5%
if defined b3div3 if defined ok3 set P%b3div3%=%zb5%
if defined b3div4 if defined ok4 set P%b3div4%=%zb5%
if defined ok1 if defined ok2 set P%b3div1%=%zb8%
if defined ok2 if defined ok3 set P%b3div2%=%zb8%
if defined ok3 if defined ok4 set P%b3div3%=%zb8%
if defined ok4 if defined ok5 set P%b3div4%=%zb8%
:ok-allb3
if defined ok1 set sax=%bl3B% & goto part-allb3
if defined ok2 set sax=%b3div1% & goto part-allb3
if defined ok3 set sax=%b3div2% & goto part-allb3
if defined ok4 set sax=%b3div3% & goto part-allb3
if defined ok5 set sax=%b3div4% & goto part-allb3
goto ok-exitb3
:part-allb3
set /a sax=%sax%+1
if %bl3A% GTR %bl1A% if %sax%==%bl1B% set P%bl1B%=%zb5%& set /a sax=sax+%sb%& set P%bl1A%=%zb1%
if %bl3A% GTR %bl2A% if %sax%==%bl2B% set P%bl2B%=%zb5%& set /a sax=sax+%sd%& set P%bl2A%=%zb1%
if %bl3A% GTR %bl4A% if %sax%==%bl4B% set P%bl4B%=%zb5%& set /a sax=sax+%sh%& set P%bl4A%=%zb1%
if defined ok1 if %sax%==%b3div1% set ok1=& goto ok-allb3
if defined ok2 if %sax%==%b3div2% set ok2=& goto ok-allb3
if defined ok3 if %sax%==%b3div3% set ok3=& goto ok-allb3
if defined ok4 if %sax%==%b3div4% set ok4=& goto ok-allb3
if defined ok1 if %sax%==%bl3A% set ok1=& set P%bl3A%=%zb5%& goto ok-allb3
if defined ok2 if %sax%==%bl3A% set ok2=& set P%bl3A%=%zb5%& goto ok-allb3
if defined ok3 if %sax%==%bl3A% set ok3=& set P%bl3A%=%zb5%& goto ok-allb3
if defined ok4 if %sax%==%bl3A% set ok4=& set P%bl3A%=%zb5%& goto ok-allb3
if defined ok5 if %sax%==%bl3A% set ok5=& set P%bl3A%=%zb5%& goto ok-allb3
set P%sax%=%lb2%
goto part-allb3
:ok-exitb3
if defined insertart goto noinsert
set exitxline=l
goto xline
rem --------------------------------------------part columns box4
:partb4-
if not defined sg set /a a=a-1& goto l
if "%line:~7,1%"=="1" set ok1=1
if "%line:~7,1%"=="2" set ok2=1
if "%line:~7,1%"=="3" set ok3=1
if "%line:~7,1%"=="4" set ok4=1
if "%line:~7,1%"=="5" set ok5=1
if "%line:~8,1%"=="1" set ok1=1
if "%line:~8,1%"=="2" set ok2=1
if "%line:~8,1%"=="3" set ok3=1
if "%line:~8,1%"=="4" set ok4=1
if "%line:~8,1%"=="5" set ok5=1
if "%line:~9,1%"=="1" set ok1=1
if "%line:~9,1%"=="2" set ok2=1
if "%line:~9,1%"=="3" set ok3=1
if "%line:~9,1%"=="4" set ok4=1
if "%line:~9,1%"=="5" set ok5=1
if "%line:~10,1%"=="1" set ok1=1
if "%line:~10,1%"=="2" set ok2=1
if "%line:~10,1%"=="3" set ok3=1
if "%line:~10,1%"=="4" set ok4=1
if "%line:~10,1%"=="5" set ok5=1
if "%line:~11,1%"=="1" set ok1=1
if "%line:~11,1%"=="2" set ok2=1
if "%line:~11,1%"=="3" set ok3=1
if "%line:~11,1%"=="4" set ok4=1
if "%line:~11,1%"=="5" set ok5=1
if not defined b4div4 set ok5=
if not defined b4div3 set ok4=
if not defined b4div2 set ok3=
if not defined b4div1 set ok2=
set /a a=a-1
set line=%x%
set exitppp=partb4-return
goto ppp
:partb4-return
if defined ok1 set P%bl4B%=%zb1%
if defined b4div1 if defined ok2 set P%b4div1%=%zb1%
if defined b4div2 if defined ok3 set P%b4div2%=%zb1%
if defined b4div3 if defined ok4 set P%b4div3%=%zb1%
if defined b4div4 if defined ok5 set P%b4div4%=%zb1%
if defined b4div1 if defined ok1 set P%b4div1%=%zb5%
if defined b4div2 if defined ok2 set P%b4div2%=%zb5%
if defined b4div3 if defined ok3 set P%b4div3%=%zb5%
if defined b4div4 if defined ok4 set P%b4div4%=%zb5%
if defined ok1 if defined ok2 set P%b4div1%=%zb8%
if defined ok2 if defined ok3 set P%b4div2%=%zb8%
if defined ok3 if defined ok4 set P%b4div3%=%zb8%
if defined ok4 if defined ok5 set P%b4div4%=%zb8%
:ok-allb4
if defined ok1 set sax=%bl4B% & goto part-allb4
if defined ok2 set sax=%b4div1% & goto part-allb4
if defined ok3 set sax=%b4div2% & goto part-allb4
if defined ok4 set sax=%b4div3% & goto part-allb4
if defined ok5 set sax=%b4div4% & goto part-allb4
goto ok-exitb4
:part-allb4
set /a sax=%sax%+1
if %bl4A% GTR %bl1A% if %sax%==%bl1B% set P%bl1B%=%zb5%& set /a sax=sax+%sb%& set P%bl1A%=%zb1%
if %bl4A% GTR %bl2A% if %sax%==%bl2B% set P%bl2B%=%zb5%& set /a sax=sax+%sd%& set P%bl2A%=%zb1%
if %bl4A% GTR %bl3A% if %sax%==%bl3B% set P%bl3B%=%zb5%& set /a sax=sax+%sf%& set P%bl3A%=%zb1%
if defined ok1 if %sax%==%b4div1% set ok1=& goto ok-allb4
if defined ok2 if %sax%==%b4div2% set ok2=& goto ok-allb4
if defined ok3 if %sax%==%b4div3% set ok3=& goto ok-allb4
if defined ok4 if %sax%==%b4div4% set ok4=& goto ok-allb4
if defined ok1 if %sax%==%bl4A% set ok1=& set P%bl4A%=%zb5%& goto ok-allb4
if defined ok2 if %sax%==%bl4A% set ok2=& set P%bl4A%=%zb5%& goto ok-allb4
if defined ok3 if %sax%==%bl4A% set ok3=& set P%bl4A%=%zb5%& goto ok-allb4
if defined ok4 if %sax%==%bl4A% set ok4=& set P%bl4A%=%zb5%& goto ok-allb4
if defined ok5 if %sax%==%bl4A% set ok5=& set P%bl4A%=%zb5%& goto ok-allb4
set P%sax%=%lb2%
goto part-allb4
:ok-exitb4
if defined insertart goto noinsert
set exitxline=l
goto xline
rem -------------------------------------------- boxs part close link
:linkb1
if not defined sa set /a a=a-1& goto l
if "%line:~-1%"=="2" set dfdiv=2
if "%line:~-1%"=="3" set dfdiv=3
if "%line:~-1%"=="4" set dfdiv=4
if "%line:~-1%"=="5" set dfdiv=5
set linkb=1
goto partb1
:closeb1
if not defined sa set /a a=a-1& goto l
set closeB=0
:partb1
if not defined sa set /a a=a-1& goto l
set /a a=a-1
set line=%x%
set exitppp=partbox1A
goto ppp
:partbox1A
set P%bl1A%=%zb5%
set P%bl1B%=%zb1%
if defined closeB set P%bl1A%=%zb3%
if defined closeB set P%bl1B%=%zb2%
set sax=%bl1B%
setLocal EnableDelayedExpansion
if defined closeB if defined nobox if !n%sax%!==1 ENDLOCAL& set n%sax%=
ENDLOCAL
:part1loop
if "%shatype%"=="1" if defined closeB set /a saxshadow=%sax%-1
if "%shatype%"=="1" if defined closeB set Q%saxshadow%=%shadow1%& set saxshadow=
if "%shatype%"=="1" if defined closeB set Q%sax%=%shadow1%& if not defined nextline set /a nextline=%a%+1
set /a sax=%sax%+1
setLocal EnableDelayedExpansion
if defined closeB if defined nobox if !n%sax%!==1 ENDLOCAL& set n%sax%=
ENDLOCAL
if %bl1A% GTR %bl2A% if %sax%==%bl2B% set P%bl2B%=%zb5%& set /a sax=sax+%sd%& set P%bl2A%=%zb1%
if %bl1A% GTR %bl3A% if %sax%==%bl3B% set P%bl3B%=%zb5%& set /a sax=sax+%sf%& set P%bl3A%=%zb1%
if %bl1A% GTR %bl4A% if %sax%==%bl4B% set P%bl4B%=%zb5%& set /a sax=sax+%sh%& set P%bl4A%=%zb1%
if "%shatype%"=="2" if defined closeB set Q%sax%=%shadow1%& if not defined nextline set /a nextline=%a%+1
if %sax%==%bl1A% goto existpartb1
if defined closeB set P%sax%=%lb1%
if not defined closeB set P%sax%=%lb2%
if defined closeB if %tb2%==1 if %sax%==%tb2div1% set P%sax%=%zb7%& set b2div1=%tb2div1%& set tb2div1=
if defined closeB if %tb2%==1 if %sax%==%tb2div2% set P%sax%=%zb7%& set b2div2=%tb2div2%& set tb2div2=
if defined closeB if %tb2%==1 if %sax%==%tb2div3% set P%sax%=%zb7%& set b2div3=%tb2div3%& set tb2div3=
if defined closeB if %tb2%==1 if %sax%==%tb2div4% set P%sax%=%zb7%& set b2div4=%tb2div4%& set tb2div4=
if defined closeB if %tb3%==1 if %sax%==%tb3div1% set P%sax%=%zb7%& set b3div1=%tb3div1%& set tb3div1=
if defined closeB if %tb3%==1 if %sax%==%tb3div2% set P%sax%=%zb7%& set b3div2=%tb3div2%& set tb3div2=
if defined closeB if %tb3%==1 if %sax%==%tb3div3% set P%sax%=%zb7%& set b3div3=%tb3div3%& set tb3div3=
if defined closeB if %tb3%==1 if %sax%==%tb3div4% set P%sax%=%zb7%& set b3div4=%tb3div4%& set tb3div4=
if defined closeB if %tb4%==1 if %sax%==%tb4div1% set P%sax%=%zb7%& set b4div1=%tb4div1%& set tb4div1=
if defined closeB if %tb4%==1 if %sax%==%tb4div2% set P%sax%=%zb7%& set b4div2=%tb4div2%& set tb4div2=
if defined closeB if %tb4%==1 if %sax%==%tb4div3% set P%sax%=%zb7%& set b4div3=%tb4div3%& set tb4div3=
if defined closeB if %tb4%==1 if %sax%==%tb4div4% set P%sax%=%zb7%& set b4div4=%tb4div4%& set tb4div4=
if defined closeB set tb1div1=& set tb1=0
if defined closeB set tb1div2=& set tb1=0
if defined closeB set tb1div3=& set tb1=0
if defined closeB set tb1div4=& set tb1=0
goto part1loop
:existpartb1
set /a sax=%sax%+1
if "%shatype%"=="2" if defined closeB set Q%sax%=%shadow1%
if defined closeB if %tb2%==1 set tb2=0
if defined closeB if %tb3%==1 set tb3=0
if defined closeB if %tb4%==1 set tb4=0
set k1=000
set k2=000
set k3=000
set k4=000
if defined linkb if defined b1div1 set P%b1div1%=%zb6%& set k1=%b1div1%
if defined linkb if defined b1div2 set P%b1div2%=%zb6%& set k2=%b1div2%
if defined linkb if defined b1div3 set P%b1div3%=%zb6%& set k3=%b1div3%
if defined linkb if defined b1div4 set P%b1div4%=%zb6%& set k4=%b1div4%
if defined linkb goto existopenb1
:returnbdiv1
if %k1%==%b1div1% set k1=none
if %k1%==%b1div2% set k2=none
if %k1%==%b1div3% set k3=none
if %k1%==%b1div4% set k4=none
if %k2%==%b1div1% set k1=none
if %k2%==%b1div2% set k2=none
if %k2%==%b1div3% set k3=none
if %k2%==%b1div4% set k4=none
if %k3%==%b1div1% set k1=none
if %k3%==%b1div2% set k2=none
if %k3%==%b1div3% set k3=none
if %k3%==%b1div4% set k4=none
if %k4%==%b1div1% set k1=none
if %k4%==%b1div2% set k2=none
if %k4%==%b1div3% set k3=none
if %k4%==%b1div4% set k4=none
if defined b1div1 set P%b1div1%=%zb8%
if defined b1div2 set P%b1div2%=%zb8%
if defined b1div3 set P%b1div3%=%zb8%
if defined b1div4 set P%b1div4%=%zb8%
if defined closeB if defined b1div1 set P%b1div1%=%zb6%
if defined closeB if defined b1div2 set P%b1div2%=%zb6%
if defined closeB if defined b1div3 set P%b1div3%=%zb6%
if defined closeB if defined b1div4 set P%b1div4%=%zb6%
if defined closeB if defined b1div1zb8  set P%b1div1%=%zb8%& set b1div1zb8=
if defined closeB if defined b1div2zb8  set P%b1div2%=%zb8%& set b1div2zb8=
if defined closeB if defined b1div3zb8  set P%b1div3%=%zb8%& set b1div3zb8=
if defined closeB if defined b1div4zb8  set P%b1div4%=%zb8%& set b1div4zb8=
if not %k1%==none if defined linkb if defined b1div1 set P%b1div1%=%zb7%
if not %k2%==none if defined linkb if defined b1div2 set P%b1div2%=%zb7%
if not %k3%==none if defined linkb if defined b1div3 set P%b1div3%=%zb7%
if not %k4%==none if defined linkb if defined b1div4 set P%b1div4%=%zb7%
set linkb=
set k1=
set k2=
set k3=
set k4=
if defined closeB set bl1A=
if defined closeB set bl1B=
if not defined bl1B if not defined bl2B if not defined bl3B if not defined bl4B set div=%boxexit%& set boxexit=0
set sax=
set exitxline=resetbdiv1
if defined insertart goto noinsert
goto xline
:resetbdiv1
if defined closeB set b1div1=
if defined closeB set b1div2=
if defined closeB set b1div3=
if defined closeB set b1div4=
if defined closeB set xxxa=
if defined closeB set xxxb=
if defined closeB set sa=
set closeB=
goto l
:linkb2
if not defined sc set /a a=a-1& goto l
if "%line:~-1%"=="2" set dfdiv=2
if "%line:~-1%"=="3" set dfdiv=3
if "%line:~-1%"=="4" set dfdiv=4
if "%line:~-1%"=="5" set dfdiv=5
set linkb=1
goto partb2
:closeb2
if not defined sc set /a a=a-1& goto l
set closeB=0
:partb2
if not defined sc set /a a=a-1& goto l
set /a a=a-1
set line=%x%
set exitppp=partbox2A
goto ppp
:partbox2A
set P%bl2A%=%zb5%
set P%bl2B%=%zb1%
if defined closeB set P%bl2A%=%zb3%
if defined closeB set P%bl2B%=%zb2%
set sax=%bl2B%
setLocal EnableDelayedExpansion
if defined closeB if defined nobox if !n%sax%!==2 ENDLOCAL& set n%sax%=
ENDLOCAL
:part2loop
if "%shatype%"=="1" if defined closeB set /a saxshadow=%sax%-1
if "%shatype%"=="1" if defined closeB set Q%saxshadow%=%shadow2%& set saxshadow=
if "%shatype%"=="1" if defined closeB set Q%sax%=%shadow2%& if not defined nextline set /a nextline=%a%+1
set /a sax=%sax%+1
setLocal EnableDelayedExpansion
if defined closeB if defined nobox if !n%sax%!==2 ENDLOCAL& set n%sax%=
ENDLOCAL
if %bl2A% GTR %bl1A% if %sax%==%bl1B% set P%bl1B%=%zb5%& set /a sax=sax+%sb%& set P%bl1A%=%zb1%
if %bl2A% GTR %bl3A% if %sax%==%bl3B% set P%bl3B%=%zb5%& set /a sax=sax+%sf%& set P%bl3A%=%zb1%
if %bl2A% GTR %bl4A% if %sax%==%bl4B% set P%bl4B%=%zb5%& set /a sax=sax+%sh%& set P%bl4A%=%zb1%
if "%shatype%"=="2" if defined closeB set Q%sax%=%shadow2%& if not defined nextline set /a nextline=%a%+1
if %sax%==%bl2A% goto existpartb2
if defined closeB set P%sax%=%lb1%
if not defined closeB set P%sax%=%lb2%
if defined closeB if %tb1%==2 if %sax%==%tb1div1% set P%sax%=%zb7%& set b1div1=%tb1div1%& set tb1div1=
if defined closeB if %tb1%==2 if %sax%==%tb1div2% set P%sax%=%zb7%& set b1div2=%tb1div2%& set tb1div2=
if defined closeB if %tb1%==2 if %sax%==%tb1div3% set P%sax%=%zb7%& set b1div3=%tb1div3%& set tb1div3=
if defined closeB if %tb1%==2 if %sax%==%tb1div4% set P%sax%=%zb7%& set b1div4=%tb1div4%& set tb1div4=
if defined closeB if %tb3%==2 if %sax%==%tb3div1% set P%sax%=%zb7%& set b3div1=%tb3div1%& set tb3div1=
if defined closeB if %tb3%==2 if %sax%==%tb3div2% set P%sax%=%zb7%& set b3div2=%tb3div2%& set tb3div2=
if defined closeB if %tb3%==2 if %sax%==%tb3div3% set P%sax%=%zb7%& set b3div3=%tb3div3%& set tb3div3=
if defined closeB if %tb3%==2 if %sax%==%tb3div4% set P%sax%=%zb7%& set b3div4=%tb3div4%& set tb3div4=
if defined closeB if %tb4%==2 if %sax%==%tb4div1% set P%sax%=%zb7%& set b4div1=%tb4div1%& set tb4div1=
if defined closeB if %tb4%==2 if %sax%==%tb4div2% set P%sax%=%zb7%& set b4div2=%tb4div2%& set tb4div2=
if defined closeB if %tb4%==2 if %sax%==%tb4div3% set P%sax%=%zb7%& set b4div3=%tb4div3%& set tb4div3=
if defined closeB if %tb4%==2 if %sax%==%tb4div4% set P%sax%=%zb7%& set b4div4=%tb4div4%& set tb4div4=
if defined closeB set tb2div1=& set tb2=0
if defined closeB set tb2div2=& set tb2=0
if defined closeB set tb2div3=& set tb2=0
if defined closeB set tb2div4=& set tb2=0
goto part2loop
:existpartb2
set /a sax=%sax%+1
if "%shatype%"=="2" if defined closeB set Q%sax%=%shadow2%
if defined closeB if %tb1%==2 set tb1=0
if defined closeB if %tb3%==2 set tb3=0
if defined closeB if %tb4%==2 set tb4=0
set k1=000
set k2=000
set k3=000
set k4=000
if defined linkb if defined b2div1 set P%b2div1%=%zb6%& set k1=%b2div1%
if defined linkb if defined b2div2 set P%b2div2%=%zb6%& set k2=%b2div2%
if defined linkb if defined b2div3 set P%b2div3%=%zb6%& set k3=%b2div3%
if defined linkb if defined b2div4 set P%b2div4%=%zb6%& set k4=%b2div4%
if defined linkb goto existopenb2
:returnbdiv2
if %k1%==%b2div1% set k1=none
if %k1%==%b2div2% set k2=none
if %k1%==%b2div3% set k3=none
if %k1%==%b2div4% set k4=none
if %k2%==%b2div1% set k1=none
if %k2%==%b2div2% set k2=none
if %k2%==%b2div3% set k3=none
if %k2%==%b2div4% set k4=none
if %k3%==%b2div1% set k1=none
if %k3%==%b2div2% set k2=none
if %k3%==%b2div3% set k3=none
if %k3%==%b2div4% set k4=none
if %k4%==%b2div1% set k1=none
if %k4%==%b2div2% set k2=none
if %k4%==%b2div3% set k3=none
if %k4%==%b2div4% set k4=none
if defined b2div1 set P%b2div1%=%zb8%
if defined b2div2 set P%b2div2%=%zb8%
if defined b2div3 set P%b2div3%=%zb8%
if defined b2div4 set P%b2div4%=%zb8%
if defined closeB if defined b2div1 set P%b2div1%=%zb6%
if defined closeB if defined b2div2 set P%b2div2%=%zb6%
if defined closeB if defined b2div3 set P%b2div3%=%zb6%
if defined closeB if defined b2div4 set P%b2div4%=%zb6%
if defined closeB if defined b2div1zb8  set P%b2div1%=%zb8%& set b2div1zb8=
if defined closeB if defined b2div2zb8  set P%b2div2%=%zb8%& set b2div2zb8=
if defined closeB if defined b2div3zb8  set P%b2div3%=%zb8%& set b2div3zb8=
if defined closeB if defined b2div4zb8  set P%b2div4%=%zb8%& set b2div4zb8=
if not %k1%==none if defined linkb if defined b2div1 set P%b2div1%=%zb7%
if not %k2%==none if defined linkb if defined b2div2 set P%b2div2%=%zb7%
if not %k3%==none if defined linkb if defined b2div3 set P%b2div3%=%zb7%
if not %k4%==none if defined linkb if defined b2div4 set P%b2div4%=%zb7%
set linkb=
set k1=
set k2=
set k3=
set k4=
if defined closeB set bl2A=
if defined closeB set bl2B=
if not defined bl1B if not defined bl2B if not defined bl3B if not defined bl4B set div=%boxexit%& set boxexit=0
set sax=
set exitxline=resetbdiv2
if defined insertart goto noinsert
goto xline
:resetbdiv2
if defined closeB set b2div1=
if defined closeB set b2div2=
if defined closeB set b2div3=
if defined closeB set b2div4=
if defined closeB set xxxc=
if defined closeB set xxxd=
if defined closeB set sc=
set closeB=
goto l
:linkb3
if not defined se set /a a=a-1& goto l
if "%line:~-1%"=="2" set dfdiv=2
if "%line:~-1%"=="3" set dfdiv=3
if "%line:~-1%"=="4" set dfdiv=4
if "%line:~-1%"=="5" set dfdiv=5
set linkb=1
goto partb3
:closeb3
if not defined se set /a a=a-1& goto l
set closeB=0
:partb3
if not defined se set /a a=a-1& goto l
set /a a=a-1
set line=%x%
set exitppp=partbox3A
goto ppp
:partbox3A
set P%bl3A%=%zb5%
set P%bl3B%=%zb1%
if defined closeB set P%bl3A%=%zb3%
if defined closeB set P%bl3B%=%zb2%
set sax=%bl3B%
setLocal EnableDelayedExpansion
if defined closeB if defined nobox if !n%sax%!==3 ENDLOCAL& set n%sax%=
ENDLOCAL
:part3loop
if "%shatype%"=="1" if defined closeB set /a saxshadow=%sax%-1
if "%shatype%"=="1" if defined closeB set Q%saxshadow%=%shadow3%& set saxshadow=
if "%shatype%"=="1" if defined closeB set Q%sax%=%shadow3%& if not defined nextline set /a nextline=%a%+1
set /a sax=%sax%+1
setLocal EnableDelayedExpansion
if defined closeB if defined nobox if !n%sax%!==3 ENDLOCAL& set n%sax%=
ENDLOCAL
if %bl3A% GTR %bl1A% if %sax%==%bl1B% set P%bl1B%=%zb5%& set /a sax=sax+%sb%& set P%bl1A%=%zb1%
if %bl3A% GTR %bl2A% if %sax%==%bl2B% set P%bl2B%=%zb5%& set /a sax=sax+%sd%& set P%bl2A%=%zb1%
if %bl3A% GTR %bl4A% if %sax%==%bl4B% set P%bl4B%=%zb5%& set /a sax=sax+%sh%& set P%bl4A%=%zb1%
if "%shatype%"=="2" if defined closeB set Q%sax%=%shadow3%& if not defined nextline set /a nextline=%a%+1
if %sax%==%bl3A% goto existpartb3
if defined closeB set P%sax%=%lb1%
if not defined closeB set P%sax%=%lb2%
if defined closeB if %tb1%==3 if %sax%==%tb1div1% set P%sax%=%zb7%& set b1div1=%tb1div1%& set tb1div1=
if defined closeB if %tb1%==3 if %sax%==%tb1div2% set P%sax%=%zb7%& set b1div2=%tb1div2%& set tb1div2=
if defined closeB if %tb1%==3 if %sax%==%tb1div3% set P%sax%=%zb7%& set b1div3=%tb1div3%& set tb1div3=
if defined closeB if %tb1%==3 if %sax%==%tb1div4% set P%sax%=%zb7%& set b1div4=%tb1div4%& set tb1div4=
if defined closeB if %tb2%==3 if %sax%==%tb2div1% set P%sax%=%zb7%& set b2div1=%tb2div1%& set tb2div1=
if defined closeB if %tb2%==3 if %sax%==%tb2div2% set P%sax%=%zb7%& set b2div2=%tb2div2%& set tb2div2=
if defined closeB if %tb2%==3 if %sax%==%tb2div3% set P%sax%=%zb7%& set b2div3=%tb2div3%& set tb2div3=
if defined closeB if %tb2%==3 if %sax%==%tb2div4% set P%sax%=%zb7%& set b2div4=%tb2div4%& set tb2div4=
if defined closeB if %tb4%==3 if %sax%==%tb4div1% set P%sax%=%zb7%& set b4div1=%tb4div1%& set tb4div1=
if defined closeB if %tb4%==3 if %sax%==%tb4div2% set P%sax%=%zb7%& set b4div2=%tb4div2%& set tb4div2=
if defined closeB if %tb4%==3 if %sax%==%tb4div3% set P%sax%=%zb7%& set b4div3=%tb4div3%& set tb4div3=
if defined closeB if %tb4%==3 if %sax%==%tb4div4% set P%sax%=%zb7%& set b4div4=%tb4div4%& set tb4div4=
if defined closeB set tb3div1=& set tb3=0
if defined closeB set tb3div2=& set tb3=0
if defined closeB set tb3div3=& set tb3=0
if defined closeB set tb3div4=& set tb3=0
goto part3loop
:existpartb3
set /a sax=%sax%+1
if "%shatype%"=="2" if defined closeB set Q%sax%=%shadow3%
if defined closeB if %tb1%==3 set tb1=0
if defined closeB if %tb2%==3 set tb2=0
if defined closeB if %tb4%==3 set tb4=0
set k1=000
set k2=000
set k3=000
set k4=000
if defined linkb if defined b3div1 set P%b3div1%=%zb6%& set k1=%b3div1%
if defined linkb if defined b3div2 set P%b3div2%=%zb6%& set k2=%b3div2%
if defined linkb if defined b3div3 set P%b3div3%=%zb6%& set k3=%b3div3%
if defined linkb if defined b3div4 set P%b3div4%=%zb6%& set k4=%b3div4%
if defined linkb goto existopenb3
:returnbdiv3
if %k1%==%b3div1% set k1=none
if %k1%==%b3div2% set k2=none
if %k1%==%b3div3% set k3=none
if %k1%==%b3div4% set k4=none
if %k2%==%b3div1% set k1=none
if %k2%==%b3div2% set k2=none
if %k2%==%b3div3% set k3=none
if %k2%==%b3div4% set k4=none
if %k3%==%b3div1% set k1=none
if %k3%==%b3div2% set k2=none
if %k3%==%b3div3% set k3=none
if %k3%==%b3div4% set k4=none
if %k4%==%b3div1% set k1=none
if %k4%==%b3div2% set k2=none
if %k4%==%b3div3% set k3=none
if %k4%==%b3div4% set k4=none
if defined b3div1 set P%b3div1%=%zb8%
if defined b3div2 set P%b3div2%=%zb8%
if defined b3div3 set P%b3div3%=%zb8%
if defined b3div4 set P%b3div4%=%zb8%
if defined closeB if defined b3div1 set P%b3div1%=%zb6%
if defined closeB if defined b3div2 set P%b3div2%=%zb6%
if defined closeB if defined b3div3 set P%b3div3%=%zb6%
if defined closeB if defined b3div4 set P%b3div4%=%zb6%
if defined closeB if defined b3div1zb8  set P%b3div1%=%zb8%& set b3div1zb8=
if defined closeB if defined b3div2zb8  set P%b3div2%=%zb8%& set b3div2zb8=
if defined closeB if defined b3div3zb8  set P%b3div3%=%zb8%& set b3div3zb8=
if defined closeB if defined b3div4zb8  set P%b3div4%=%zb8%& set b3div4zb8=
if not %k1%==none if defined linkb if defined b3div1 set P%b3div1%=%zb7%
if not %k2%==none if defined linkb if defined b3div2 set P%b3div2%=%zb7%
if not %k3%==none if defined linkb if defined b3div3 set P%b3div3%=%zb7%
if not %k4%==none if defined linkb if defined b3div4 set P%b3div4%=%zb7%
set linkb=
set k1=
set k2=
set k3=
set k4=
if defined closeB set bl3A=
if defined closeB set bl3B=
if not defined bl1B if not defined bl2B if not defined bl3B if not defined bl4B set div=%boxexit%& set boxexit=0
set sax=
set exitxline=resetbdiv3
if defined insertart goto noinsert
goto xline
:resetbdiv3
if defined closeB set b3div1=
if defined closeB set b3div2=
if defined closeB set b3div3=
if defined closeB set b3div4=
if defined closeB set xxxe=
if defined closeB set xxxf=
if defined closeB set se=
set closeB=
goto l
:linkb4
if not defined sg set /a a=a-1& goto l
if "%line:~-1%"=="2" set dfdiv=2
if "%line:~-1%"=="3" set dfdiv=3
if "%line:~-1%"=="4" set dfdiv=4
if "%line:~-1%"=="5" set dfdiv=5
set linkb=1
goto partb4
:closeb4
if not defined sg set /a a=a-1& goto l
set closeB=0
:partb4
if not defined sg set /a a=a-1& goto l
set /a a=a-1
set line=%x%
set exitppp=partbox4A
goto ppp
:partbox4A
set P%bl4A%=%zb5%
set P%bl4B%=%zb1%
if defined closeB set P%bl4A%=%zb3%
if defined closeB set P%bl4B%=%zb2%
set sax=%bl4B%
setLocal EnableDelayedExpansion
if defined closeB if defined nobox if !n%sax%!==4 ENDLOCAL& set n%sax%=
ENDLOCAL
:part4loop
if "%shatype%"=="1" if defined closeB set /a saxshadow=%sax%-1
if "%shatype%"=="1" if defined closeB set Q%saxshadow%=%shadow4%& set saxshadow=
if "%shatype%"=="1" if defined closeB set Q%sax%=%shadow4%& if not defined nextline set /a nextline=%a%+1
set /a sax=%sax%+1
setLocal EnableDelayedExpansion
if defined closeB if defined nobox if !n%sax%!==4 ENDLOCAL& set n%sax%=
ENDLOCAL
if %bl4A% GTR %bl1A% if %sax%==%bl1B% set P%bl1B%=%zb5%& set /a sax=sax+%sb%& set P%bl1A%=%zb1%
if %bl4A% GTR %bl2A% if %sax%==%bl2B% set P%bl2B%=%zb5%& set /a sax=sax+%sd%& set P%bl2A%=%zb1%
if %bl4A% GTR %bl3A% if %sax%==%bl3B% set P%bl3B%=%zb5%& set /a sax=sax+%sf%& set P%bl3A%=%zb1%
if "%shatype%"=="2" if defined closeB set Q%sax%=%shadow4%& if not defined nextline set /a nextline=%a%+1
if %sax%==%bl4A% goto existpartb4
if defined closeB set P%sax%=%lb1%
if not defined closeB set P%sax%=%lb2%
if defined closeB if %tb1%==4 if %sax%==%tb1div1% set P%sax%=%zb7%& set b1div1=%tb1div1%& set tb1div1=
if defined closeB if %tb1%==4 if %sax%==%tb1div2% set P%sax%=%zb7%& set b1div2=%tb1div2%& set tb1div2=
if defined closeB if %tb1%==4 if %sax%==%tb1div3% set P%sax%=%zb7%& set b1div3=%tb1div3%& set tb1div3=
if defined closeB if %tb1%==4 if %sax%==%tb1div4% set P%sax%=%zb7%& set b1div4=%tb1div4%& set tb1div4=
if defined closeB if %tb2%==4 if %sax%==%tb2div1% set P%sax%=%zb7%& set b2div1=%tb2div1%& set tb2div1=
if defined closeB if %tb2%==4 if %sax%==%tb2div2% set P%sax%=%zb7%& set b2div2=%tb2div2%& set tb2div2=
if defined closeB if %tb2%==4 if %sax%==%tb2div3% set P%sax%=%zb7%& set b2div3=%tb2div3%& set tb2div3=
if defined closeB if %tb2%==4 if %sax%==%tb2div4% set P%sax%=%zb7%& set b2div4=%tb2div4%& set tb2div4=
if defined closeB if %tb3%==4 if %sax%==%tb3div1% set P%sax%=%zb7%& set b3div1=%tb3div1%& set tb3div1=
if defined closeB if %tb3%==4 if %sax%==%tb3div2% set P%sax%=%zb7%& set b3div2=%tb3div2%& set tb3div2=
if defined closeB if %tb3%==4 if %sax%==%tb3div3% set P%sax%=%zb7%& set b3div3=%tb3div3%& set tb3div3=
if defined closeB if %tb3%==4 if %sax%==%tb3div4% set P%sax%=%zb7%& set b3div4=%tb3div4%& set tb3div4=
if defined closeB set tb4div1=& set tb4=0
if defined closeB set tb4div2=& set tb4=0
if defined closeB set tb4div3=& set tb4=0
if defined closeB set tb4div4=& set tb4=0
goto part4loop
:existpartb4
set /a sax=%sax%+1
if "%shatype%"=="2" if defined closeB set Q%sax%=%shadow4%
if defined closeB if %tb1%==4 set tb1=0
if defined closeB if %tb2%==4 set tb2=0
if defined closeB if %tb3%==4 set tb3=0
set k1=000
set k2=000
set k3=000
set k4=000
if defined linkb if defined b4div1 set P%b4div1%=%zb6%& set k1=%b4div1%
if defined linkb if defined b4div2 set P%b4div2%=%zb6%& set k2=%b4div2%
if defined linkb if defined b4div3 set P%b4div3%=%zb6%& set k3=%b4div3%
if defined linkb if defined b4div4 set P%b4div4%=%zb6%& set k4=%b4div4%
if defined linkb goto existopenb4
:returnbdiv4
if %k1%==%b4div1% set k1=none
if %k1%==%b4div2% set k2=none
if %k1%==%b4div3% set k3=none
if %k1%==%b4div4% set k4=none
if %k2%==%b4div1% set k1=none
if %k2%==%b4div2% set k2=none
if %k2%==%b4div3% set k3=none
if %k2%==%b4div4% set k4=none
if %k3%==%b4div1% set k1=none
if %k3%==%b4div2% set k2=none
if %k3%==%b4div3% set k3=none
if %k3%==%b4div4% set k4=none
if %k4%==%b4div1% set k1=none
if %k4%==%b4div2% set k2=none
if %k4%==%b4div3% set k3=none
if %k4%==%b4div4% set k4=none
if defined b4div1 set P%b4div1%=%zb8%
if defined b4div2 set P%b4div2%=%zb8%
if defined b4div3 set P%b4div3%=%zb8%
if defined b4div4 set P%b4div4%=%zb8%
if defined closeB if defined b4div1 set P%b4div1%=%zb6%
if defined closeB if defined b4div2 set P%b4div2%=%zb6%
if defined closeB if defined b4div3 set P%b4div3%=%zb6%
if defined closeB if defined b4div4 set P%b4div4%=%zb6%
if defined closeB if defined b4div1zb8  set P%b4div1%=%zb8%& set b4div1zb8=
if defined closeB if defined b4div2zb8  set P%b4div2%=%zb8%& set b4div2zb8=
if defined closeB if defined b4div3zb8  set P%b4div3%=%zb8%& set b4div3zb8=
if defined closeB if defined b4div4zb8  set P%b4div4%=%zb8%& set b4div4zb8=
if not %k1%==none if defined linkb if defined b4div1 set P%b4div1%=%zb7%
if not %k2%==none if defined linkb if defined b4div2 set P%b4div2%=%zb7%
if not %k3%==none if defined linkb if defined b4div3 set P%b4div3%=%zb7%
if not %k4%==none if defined linkb if defined b4div4 set P%b4div4%=%zb7%
set linkb=
set k1=
set k2=
set k3=
set k4=
if defined closeB set bl4A=
if defined closeB set bl4B=
if not defined bl1B if not defined bl2B if not defined bl3B if not defined bl4B set div=%boxexit%& set boxexit=0
set sax=
set exitxline=resetbdiv4
if defined insertart goto noinsert
goto xline
:resetbdiv4
if defined closeB set b4div1=
if defined closeB set b4div2=
if defined closeB set b4div3=
if defined closeB set b4div4=
if defined closeB set xxxg=
if defined closeB set xxxh=
if defined closeB set sg=
set closeB=
goto l
:ppp
if not defined screen if %div%==6 set line=%line:~0,79%
set nscreen=%%line:~0,%h1%%%
for /f "usebackq tokens=*"  %%i in (`echo."%nscreen%"`) do set nscreen=%%i
if defined screen if %div%==6 set line=%nscreen:~1,-1%
set nscreen=
set P0=%line:~0,1%
set P1=%line:~1,1%
set P2=%line:~2,1%
set P3=%line:~3,1%
set P4=%line:~4,1%
set P5=%line:~5,1%
set P6=%line:~6,1%
set P7=%line:~7,1%
set P8=%line:~8,1%
set P9=%line:~9,1%
set P10=%line:~10,1%
set P11=%line:~11,1%
set P12=%line:~12,1%
set P13=%line:~13,1%
set P14=%line:~14,1%
set P15=%line:~15,1%
set P16=%line:~16,1%
set P17=%line:~17,1%
set P18=%line:~18,1%
set P19=%line:~19,1%
set P20=%line:~20,1%
set P21=%line:~21,1%
set P22=%line:~22,1%
set P23=%line:~23,1%
set P24=%line:~24,1%
set P25=%line:~25,1%
set P26=%line:~26,1%
set P27=%line:~27,1%
set P28=%line:~28,1%
set P29=%line:~29,1%
set P30=%line:~30,1%
set P31=%line:~31,1%
set P32=%line:~32,1%
set P33=%line:~33,1%
set P34=%line:~34,1%
set P35=%line:~35,1%
set P36=%line:~36,1%
set P37=%line:~37,1%
set P38=%line:~38,1%
set P39=%line:~39,1%
set P40=%line:~40,1%
set P41=%line:~41,1%
set P42=%line:~42,1%
set P43=%line:~43,1%
set P44=%line:~44,1%
set P45=%line:~45,1%
set P46=%line:~46,1%
set P47=%line:~47,1%
set P48=%line:~48,1%
set P49=%line:~49,1%
set P50=%line:~50,1%
set P51=%line:~51,1%
set P52=%line:~52,1%
set P53=%line:~53,1%
set P54=%line:~54,1%
set P55=%line:~55,1%
set P56=%line:~56,1%
set P57=%line:~57,1%
set P58=%line:~58,1%
set P59=%line:~59,1%
set P60=%line:~60,1%
set P61=%line:~61,1%
set P62=%line:~62,1%
set P63=%line:~63,1%
set P64=%line:~64,1%
set P65=%line:~65,1%
set P66=%line:~66,1%
set P67=%line:~67,1%
set P68=%line:~68,1%
set P69=%line:~69,1%
set P70=%line:~70,1%
set P71=%line:~71,1%
set P72=%line:~72,1%
set P73=%line:~73,1%
set P74=%line:~74,1%
set P75=%line:~75,1%
set P76=%line:~76,1%
set P77=%line:~77,1%
set P78=%line:~78,1%
set P79=%line:~79,1%
set P80=%line:~80,1%
set P81=%line:~81,1%
set P82=%line:~82,1%
set P83=%line:~83,1%
set P84=%line:~84,1%
set P85=%line:~85,1%
set P86=%line:~86,1%
set P87=%line:~87,1%
set P88=%line:~88,1%
set P89=%line:~89,1%
set P90=%line:~90,1%
set P91=%line:~91,1%
set P92=%line:~92,1%
set P93=%line:~93,1%
set P94=%line:~94,1%
set P95=%line:~95,1%
set P96=%line:~96,1%
set P97=%line:~97,1%
set P98=%line:~98,1%
set P99=%line:~99,1%
set P100=%line:~100,1%
set P101=%line:~101,1%
set P102=%line:~102,1%
set P103=%line:~103,1%
set P104=%line:~104,1%
set P105=%line:~105,1%
set P106=%line:~106,1%
set P107=%line:~107,1%
set P108=%line:~108,1%
set P109=%line:~109,1%
set P110=%line:~110,1%
set P111=%line:~111,1%
set P112=%line:~112,1%
set P113=%line:~113,1%
set P114=%line:~114,1%
set P115=%line:~115,1%
set P116=%line:~116,1%
set P117=%line:~117,1%
set P118=%line:~118,1%
set P119=%line:~119,1%
set P120=%line:~120,1%
set P121=%line:~121,1%
set P122=%line:~122,1%
set P123=%line:~123,1%
set P124=%line:~124,1%
set P125=%line:~125,1%
set P126=%line:~126,1%
set P127=%line:~127,1%
set P128=%line:~128,1%
set P129=%line:~129,1%
set P130=%line:~130,1%
set P131=%line:~131,1%
set P132=%line:~132,1%
set P133=%line:~133,1%
set P134=%line:~134,1%
set P135=%line:~135,1%
set P136=%line:~136,1%
set P137=%line:~137,1%
set P138=%line:~138,1%
set P139=%line:~139,1%
set P140=%line:~140,1%
set P141=%line:~141,1%
set P142=%line:~142,1%
set P143=%line:~143,1%
set P144=%line:~144,1%
set P145=%line:~145,1%
set P146=%line:~146,1%
set P147=%line:~147,1%
set P148=%line:~148,1%
set P149=%line:~149,1%
set P150=%line:~150,1%
set P151=%line:~151,1%
set P152=%line:~152,1%
set P153=%line:~153,1%
set P154=%line:~154,1%
set P155=%line:~155,1%
set P156=%line:~156,1%
set P157=%line:~157,1%
set P158=%line:~158,1%
set P159=%line:~159,1%
goto %exitppp%
:Qvalue
for /l %%a in (0 1 159) do if defined Q%%a for /f "usebackq tokens=*"  %%i in (`echo."%%Q%%a%%"`) do set P%%a=%%~i
set nextline=
for /l %%i in (0 1 159) do set "Q%%i="
goto xline
rem ------------------------------------------------------------------------------------- xline
:xline
if "%nextline%"=="%a%" goto Qvalue
if defined insertart goto art01
if defined insertart2 goto art02
if defined insertart3 goto art03
goto noinsert
:art01
for /f "usebackq skip=%nu% tokens=1,2,3* delims=" %%a in  (temp0001.txt) do (
set artvar=%%a%%b%%c                                                                                                                                                                & set /a nu=nu+1& set exitprocessart=art02& goto Processart
)
set spaceart1=
set insertart=
set nu=
if exist temp0000.txt del temp0000.txt
if exist temp0001.txt del temp0001.txt
if defined insertart2 goto art02
if defined insertart3 goto art03
goto noinsert
:art02
if not defined insertart2 goto art03
for /f "usebackq skip=%nu2% tokens=1,2,3* delims=" %%a in  (temp0002.txt) do (
set artvar=%%a%%b%%c                                                                                                                                                                & set /a nu2=nu2+1& set exitprocessart=art03& goto Processart
)
set spaceart2=
set insertart2=
set nu2=
if exist temp0000.txt del temp0000.txt
if exist temp0002.txt del temp0002.txt
if defined insertart3 goto art03
goto noinsert
:art03
if not defined insertart3 goto noinsert
for /f "usebackq skip=%nu3% tokens=1,2,3* delims=" %%a in  (temp0003.txt) do (
set artvar=%%a%%b%%c                                                                                                                                                                & set /a nu3=nu3+1& set exitprocessart=noinsert& goto Processart
)
set spaceart3=
set insertart3=
set nu3=
if exist temp0000.txt del temp0000.txt
if exist temp0003.txt del temp0003.txt
goto noinsert
:Processart
setLocal EnableDelayedExpansion
set "artvar=!artvar:"=%ch6%!"
set "artvar=!artvar:|=%ch1%!"
set "artvar=!artvar:&=%ch2%!"
set "artvar=!artvar:<=%ch3%!"
set "artvar=!artvar:>=%ch4%!"
set "artvar=!artvar:^=%ch5%!"
set "artvar=!artvar:%%=%ch7%!
echo.!artvar!>temp0000.txt
ENDLOCAL
set /p artvar=<temp0000.txt
if %exitprocessart%==art02  set artvar=%spaceart1:~1,-1%%artvar%
if %exitprocessart%==art03  set artvar=%spaceart2:~1,-1%%artvar%
if %exitprocessart%==noinsert  set artvar=%spaceart3:~1,-1%%artvar%
if not defined n0 if "%P0%"==" " if not "%artvar:~0,1%"==" " set P0=%artvar:~0,1%
if not defined n1 if "%P1%"==" " if not "%artvar:~1,1%"==" " set P1=%artvar:~1,1%
if not defined n2 if "%P2%"==" " if not "%artvar:~2,1%"==" " set P2=%artvar:~2,1%
if not defined n3 if "%P3%"==" " if not "%artvar:~3,1%"==" " set P3=%artvar:~3,1%
if not defined n4 if "%P4%"==" " if not "%artvar:~4,1%"==" " set P4=%artvar:~4,1%
if not defined n5 if "%P5%"==" " if not "%artvar:~5,1%"==" " set P5=%artvar:~5,1%
if not defined n6 if "%P6%"==" " if not "%artvar:~6,1%"==" " set P6=%artvar:~6,1%
if not defined n7 if "%P7%"==" " if not "%artvar:~7,1%"==" " set P7=%artvar:~7,1%
if not defined n8 if "%P8%"==" " if not "%artvar:~8,1%"==" " set P8=%artvar:~8,1%
if not defined n9 if "%P9%"==" " if not "%artvar:~9,1%"==" " set P9=%artvar:~9,1%
if not defined n10 if "%P10%"==" " if not "%artvar:~10,1%"==" " set P10=%artvar:~10,1%
if not defined n11 if "%P11%"==" " if not "%artvar:~11,1%"==" " set P11=%artvar:~11,1%
if not defined n12 if "%P12%"==" " if not "%artvar:~12,1%"==" " set P12=%artvar:~12,1%
if not defined n13 if "%P13%"==" " if not "%artvar:~13,1%"==" " set P13=%artvar:~13,1%
if not defined n14 if "%P14%"==" " if not "%artvar:~14,1%"==" " set P14=%artvar:~14,1%
if not defined n15 if "%P15%"==" " if not "%artvar:~15,1%"==" " set P15=%artvar:~15,1%
if not defined n16 if "%P16%"==" " if not "%artvar:~16,1%"==" " set P16=%artvar:~16,1%
if not defined n17 if "%P17%"==" " if not "%artvar:~17,1%"==" " set P17=%artvar:~17,1%
if not defined n18 if "%P18%"==" " if not "%artvar:~18,1%"==" " set P18=%artvar:~18,1%
if not defined n19 if "%P19%"==" " if not "%artvar:~19,1%"==" " set P19=%artvar:~19,1%
if not defined n20 if "%P20%"==" " if not "%artvar:~20,1%"==" " set P20=%artvar:~20,1%
if not defined n21 if "%P21%"==" " if not "%artvar:~21,1%"==" " set P21=%artvar:~21,1%
if not defined n22 if "%P22%"==" " if not "%artvar:~22,1%"==" " set P22=%artvar:~22,1%
if not defined n23 if "%P23%"==" " if not "%artvar:~23,1%"==" " set P23=%artvar:~23,1%
if not defined n24 if "%P24%"==" " if not "%artvar:~24,1%"==" " set P24=%artvar:~24,1%
if not defined n25 if "%P25%"==" " if not "%artvar:~25,1%"==" " set P25=%artvar:~25,1%
if not defined n26 if "%P26%"==" " if not "%artvar:~26,1%"==" " set P26=%artvar:~26,1%
if not defined n27 if "%P27%"==" " if not "%artvar:~27,1%"==" " set P27=%artvar:~27,1%
if not defined n28 if "%P28%"==" " if not "%artvar:~28,1%"==" " set P28=%artvar:~28,1%
if not defined n29 if "%P29%"==" " if not "%artvar:~29,1%"==" " set P29=%artvar:~29,1%
if not defined n30 if "%P30%"==" " if not "%artvar:~30,1%"==" " set P30=%artvar:~30,1%
if not defined n31 if "%P31%"==" " if not "%artvar:~31,1%"==" " set P31=%artvar:~31,1%
if not defined n32 if "%P32%"==" " if not "%artvar:~32,1%"==" " set P32=%artvar:~32,1%
if not defined n33 if "%P33%"==" " if not "%artvar:~33,1%"==" " set P33=%artvar:~33,1%
if not defined n34 if "%P34%"==" " if not "%artvar:~34,1%"==" " set P34=%artvar:~34,1%
if not defined n35 if "%P35%"==" " if not "%artvar:~35,1%"==" " set P35=%artvar:~35,1%
if not defined n36 if "%P36%"==" " if not "%artvar:~36,1%"==" " set P36=%artvar:~36,1%
if not defined n37 if "%P37%"==" " if not "%artvar:~37,1%"==" " set P37=%artvar:~37,1%
if not defined n38 if "%P38%"==" " if not "%artvar:~38,1%"==" " set P38=%artvar:~38,1%
if not defined n39 if "%P39%"==" " if not "%artvar:~39,1%"==" " set P39=%artvar:~39,1%
if not defined n40 if "%P40%"==" " if not "%artvar:~40,1%"==" " set P40=%artvar:~40,1%
if not defined n41 if "%P41%"==" " if not "%artvar:~41,1%"==" " set P41=%artvar:~41,1%
if not defined n42 if "%P42%"==" " if not "%artvar:~42,1%"==" " set P42=%artvar:~42,1%
if not defined n43 if "%P43%"==" " if not "%artvar:~43,1%"==" " set P43=%artvar:~43,1%
if not defined n44 if "%P44%"==" " if not "%artvar:~44,1%"==" " set P44=%artvar:~44,1%
if not defined n45 if "%P45%"==" " if not "%artvar:~45,1%"==" " set P45=%artvar:~45,1%
if not defined n46 if "%P46%"==" " if not "%artvar:~46,1%"==" " set P46=%artvar:~46,1%
if not defined n47 if "%P47%"==" " if not "%artvar:~47,1%"==" " set P47=%artvar:~47,1%
if not defined n48 if "%P48%"==" " if not "%artvar:~48,1%"==" " set P48=%artvar:~48,1%
if not defined n49 if "%P49%"==" " if not "%artvar:~49,1%"==" " set P49=%artvar:~49,1%
if not defined n50 if "%P50%"==" " if not "%artvar:~50,1%"==" " set P50=%artvar:~50,1%
if not defined n51 if "%P51%"==" " if not "%artvar:~51,1%"==" " set P51=%artvar:~51,1%
if not defined n52 if "%P52%"==" " if not "%artvar:~52,1%"==" " set P52=%artvar:~52,1%
if not defined n53 if "%P53%"==" " if not "%artvar:~53,1%"==" " set P53=%artvar:~53,1%
if not defined n54 if "%P54%"==" " if not "%artvar:~54,1%"==" " set P54=%artvar:~54,1%
if not defined n55 if "%P55%"==" " if not "%artvar:~55,1%"==" " set P55=%artvar:~55,1%
if not defined n56 if "%P56%"==" " if not "%artvar:~56,1%"==" " set P56=%artvar:~56,1%
if not defined n57 if "%P57%"==" " if not "%artvar:~57,1%"==" " set P57=%artvar:~57,1%
if not defined n58 if "%P58%"==" " if not "%artvar:~58,1%"==" " set P58=%artvar:~58,1%
if not defined n59 if "%P59%"==" " if not "%artvar:~59,1%"==" " set P59=%artvar:~59,1%
if not defined n60 if "%P60%"==" " if not "%artvar:~60,1%"==" " set P60=%artvar:~60,1%
if not defined n61 if "%P61%"==" " if not "%artvar:~61,1%"==" " set P61=%artvar:~61,1%
if not defined n62 if "%P62%"==" " if not "%artvar:~62,1%"==" " set P62=%artvar:~62,1%
if not defined n63 if "%P63%"==" " if not "%artvar:~63,1%"==" " set P63=%artvar:~63,1%
if not defined n64 if "%P64%"==" " if not "%artvar:~64,1%"==" " set P64=%artvar:~64,1%
if not defined n65 if "%P65%"==" " if not "%artvar:~65,1%"==" " set P65=%artvar:~65,1%
if not defined n66 if "%P66%"==" " if not "%artvar:~66,1%"==" " set P66=%artvar:~66,1%
if not defined n67 if "%P67%"==" " if not "%artvar:~67,1%"==" " set P67=%artvar:~67,1%
if not defined n68 if "%P68%"==" " if not "%artvar:~68,1%"==" " set P68=%artvar:~68,1%
if not defined n69 if "%P69%"==" " if not "%artvar:~69,1%"==" " set P69=%artvar:~69,1%
if not defined n70 if "%P70%"==" " if not "%artvar:~70,1%"==" " set P70=%artvar:~70,1%
if not defined n71 if "%P71%"==" " if not "%artvar:~71,1%"==" " set P71=%artvar:~71,1%
if not defined n72 if "%P72%"==" " if not "%artvar:~72,1%"==" " set P72=%artvar:~72,1%
if not defined n73 if "%P73%"==" " if not "%artvar:~73,1%"==" " set P73=%artvar:~73,1%
if not defined n74 if "%P74%"==" " if not "%artvar:~74,1%"==" " set P74=%artvar:~74,1%
if not defined n75 if "%P75%"==" " if not "%artvar:~75,1%"==" " set P75=%artvar:~75,1%
if not defined n76 if "%P76%"==" " if not "%artvar:~76,1%"==" " set P76=%artvar:~76,1%
if not defined n77 if "%P77%"==" " if not "%artvar:~77,1%"==" " set P77=%artvar:~77,1%
if not defined n78 if "%P78%"==" " if not "%artvar:~78,1%"==" " set P78=%artvar:~78,1%
if not defined n79 if "%P79%"==" " if not "%artvar:~79,1%"==" " set P79=%artvar:~79,1%
if not defined n80 if "%P80%"==" " if not "%artvar:~80,1%"==" " set P80=%artvar:~80,1%
if not defined n81 if "%P81%"==" " if not "%artvar:~81,1%"==" " set P81=%artvar:~81,1%
if not defined n82 if "%P82%"==" " if not "%artvar:~82,1%"==" " set P82=%artvar:~82,1%
if not defined n83 if "%P83%"==" " if not "%artvar:~83,1%"==" " set P83=%artvar:~83,1%
if not defined n84 if "%P84%"==" " if not "%artvar:~84,1%"==" " set P84=%artvar:~84,1%
if not defined n85 if "%P85%"==" " if not "%artvar:~85,1%"==" " set P85=%artvar:~85,1%
if not defined n86 if "%P86%"==" " if not "%artvar:~86,1%"==" " set P86=%artvar:~86,1%
if not defined n87 if "%P87%"==" " if not "%artvar:~87,1%"==" " set P87=%artvar:~87,1%
if not defined n88 if "%P88%"==" " if not "%artvar:~88,1%"==" " set P88=%artvar:~88,1%
if not defined n89 if "%P89%"==" " if not "%artvar:~89,1%"==" " set P89=%artvar:~89,1%
if not defined n90 if "%P90%"==" " if not "%artvar:~90,1%"==" " set P90=%artvar:~90,1%
if not defined n91 if "%P91%"==" " if not "%artvar:~91,1%"==" " set P91=%artvar:~91,1%
if not defined n91 if "%P92%"==" " if not "%artvar:~92,1%"==" " set P92=%artvar:~92,1%
if not defined n93 if "%P93%"==" " if not "%artvar:~93,1%"==" " set P93=%artvar:~93,1%
if not defined n94 if "%P94%"==" " if not "%artvar:~94,1%"==" " set P94=%artvar:~94,1%
if not defined n95 if "%P95%"==" " if not "%artvar:~95,1%"==" " set P95=%artvar:~95,1%
if not defined n96 if "%P96%"==" " if not "%artvar:~96,1%"==" " set P96=%artvar:~96,1%
if not defined n97 if "%P97%"==" " if not "%artvar:~97,1%"==" " set P97=%artvar:~97,1%
if not defined n98 if "%P98%"==" " if not "%artvar:~98,1%"==" " set P98=%artvar:~98,1%
if not defined n99 if "%P99%"==" " if not "%artvar:~99,1%"==" " set P99=%artvar:~99,1%
if not defined n100 if "%P100%"==" " if not "%artvar:~100,1%"==" " set P100=%artvar:~100,1%
if not defined n101 if "%P101%"==" " if not "%artvar:~101,1%"==" " set P101=%artvar:~101,1%
if not defined n102 if "%P102%"==" " if not "%artvar:~102,1%"==" " set P102=%artvar:~102,1%
if not defined n103 if "%P103%"==" " if not "%artvar:~103,1%"==" " set P103=%artvar:~103,1%
if not defined n104 if "%P104%"==" " if not "%artvar:~104,1%"==" " set P104=%artvar:~104,1%
if not defined n105 if "%P105%"==" " if not "%artvar:~105,1%"==" " set P105=%artvar:~105,1%
if not defined n106 if "%P106%"==" " if not "%artvar:~106,1%"==" " set P106=%artvar:~106,1%
if not defined n107 if "%P107%"==" " if not "%artvar:~107,1%"==" " set P107=%artvar:~107,1%
if not defined n108 if "%P108%"==" " if not "%artvar:~108,1%"==" " set P108=%artvar:~108,1%
if not defined n109 if "%P109%"==" " if not "%artvar:~109,1%"==" " set P109=%artvar:~109,1%
if not defined n110 if "%P110%"==" " if not "%artvar:~110,1%"==" " set P110=%artvar:~110,1%
if not defined n111 if "%P111%"==" " if not "%artvar:~111,1%"==" " set P111=%artvar:~111,1%
if not defined n112 if "%P112%"==" " if not "%artvar:~112,1%"==" " set P112=%artvar:~112,1%
if not defined n113 if "%P113%"==" " if not "%artvar:~113,1%"==" " set P113=%artvar:~113,1%
if not defined n114 if "%P114%"==" " if not "%artvar:~114,1%"==" " set P114=%artvar:~114,1%
if not defined n115 if "%P115%"==" " if not "%artvar:~115,1%"==" " set P115=%artvar:~115,1%
if not defined n116 if "%P116%"==" " if not "%artvar:~116,1%"==" " set P116=%artvar:~116,1%
if not defined n117 if "%P117%"==" " if not "%artvar:~117,1%"==" " set P117=%artvar:~117,1%
if not defined n118 if "%P118%"==" " if not "%artvar:~118,1%"==" " set P118=%artvar:~118,1%
if not defined n119 if "%P119%"==" " if not "%artvar:~119,1%"==" " set P119=%artvar:~119,1%
if not defined n120 if "%P120%"==" " if not "%artvar:~120,1%"==" " set P120=%artvar:~120,1%
if not defined n121 if "%P121%"==" " if not "%artvar:~121,1%"==" " set P121=%artvar:~121,1%
if not defined n122 if "%P122%"==" " if not "%artvar:~122,1%"==" " set P122=%artvar:~122,1%
if not defined n123 if "%P123%"==" " if not "%artvar:~123,1%"==" " set P123=%artvar:~123,1%
if not defined n124 if "%P124%"==" " if not "%artvar:~124,1%"==" " set P124=%artvar:~124,1%
if not defined n125 if "%P125%"==" " if not "%artvar:~125,1%"==" " set P125=%artvar:~125,1%
if not defined n126 if "%P126%"==" " if not "%artvar:~126,1%"==" " set P126=%artvar:~126,1%
if not defined n127 if "%P127%"==" " if not "%artvar:~127,1%"==" " set P127=%artvar:~127,1%
if not defined n128 if "%P128%"==" " if not "%artvar:~128,1%"==" " set P128=%artvar:~128,1%
if not defined n129 if "%P129%"==" " if not "%artvar:~129,1%"==" " set P129=%artvar:~129,1%
if not defined n130 if "%P130%"==" " if not "%artvar:~130,1%"==" " set P130=%artvar:~130,1%
if not defined n131 if "%P131%"==" " if not "%artvar:~131,1%"==" " set P131=%artvar:~131,1%
if not defined n132 if "%P132%"==" " if not "%artvar:~132,1%"==" " set P132=%artvar:~132,1%
if not defined n133 if "%P133%"==" " if not "%artvar:~133,1%"==" " set P133=%artvar:~133,1%
if not defined n134 if "%P134%"==" " if not "%artvar:~134,1%"==" " set P134=%artvar:~134,1%
if not defined n135 if "%P135%"==" " if not "%artvar:~135,1%"==" " set P135=%artvar:~135,1%
if not defined n136 if "%P136%"==" " if not "%artvar:~136,1%"==" " set P136=%artvar:~136,1%
if not defined n137 if "%P137%"==" " if not "%artvar:~137,1%"==" " set P137=%artvar:~137,1%
if not defined n138 if "%P138%"==" " if not "%artvar:~138,1%"==" " set P138=%artvar:~138,1%
if not defined n139 if "%P139%"==" " if not "%artvar:~139,1%"==" " set P139=%artvar:~139,1%
if not defined n140 if "%P140%"==" " if not "%artvar:~140,1%"==" " set P140=%artvar:~140,1%
if not defined n141 if "%P141%"==" " if not "%artvar:~141,1%"==" " set P141=%artvar:~141,1%
if not defined n142 if "%P142%"==" " if not "%artvar:~142,1%"==" " set P142=%artvar:~142,1%
if not defined n143 if "%P143%"==" " if not "%artvar:~143,1%"==" " set P143=%artvar:~143,1%
if not defined n144 if "%P144%"==" " if not "%artvar:~144,1%"==" " set P144=%artvar:~144,1%
if not defined n145 if "%P145%"==" " if not "%artvar:~145,1%"==" " set P145=%artvar:~145,1%
if not defined n146 if "%P146%"==" " if not "%artvar:~146,1%"==" " set P146=%artvar:~146,1%
if not defined n147 if "%P147%"==" " if not "%artvar:~147,1%"==" " set P147=%artvar:~147,1%
if not defined n148 if "%P148%"==" " if not "%artvar:~148,1%"==" " set P148=%artvar:~148,1%
if not defined n149 if "%P149%"==" " if not "%artvar:~149,1%"==" " set P149=%artvar:~149,1%
if not defined n150 if "%P150%"==" " if not "%artvar:~150,1%"==" " set P150=%artvar:~150,1%
if not defined n151 if "%P151%"==" " if not "%artvar:~151,1%"==" " set P151=%artvar:~151,1%
if not defined n152 if "%P152%"==" " if not "%artvar:~152,1%"==" " set P152=%artvar:~152,1%
if not defined n153 if "%P153%"==" " if not "%artvar:~153,1%"==" " set P153=%artvar:~153,1%
if not defined n154 if "%P154%"==" " if not "%artvar:~154,1%"==" " set P154=%artvar:~154,1%
if not defined n155 if "%P155%"==" " if not "%artvar:~155,1%"==" " set P155=%artvar:~155,1%
if not defined n156 if "%P156%"==" " if not "%artvar:~156,1%"==" " set P156=%artvar:~156,1%
if not defined n157 if "%P157%"==" " if not "%artvar:~157,1%"==" " set P157=%artvar:~157,1%
if not defined n158 if "%P158%"==" " if not "%artvar:~158,1%"==" " set P158=%artvar:~158,1%
if not defined n159 if "%P159%"==" " if not "%artvar:~159,1%"==" " set P159=%artvar:~159,1%
goto %exitprocessart%
:Background
if not defined n0 if "%P0%"==" " set P0=%Background%
if not defined n1 if "%P1%"==" " set P1=%Background%
if not defined n2 if "%P2%"==" " set P2=%Background%
if not defined n3 if "%P3%"==" " set P3=%Background%
if not defined n4 if "%P4%"==" " set P4=%Background%
if not defined n5 if "%P5%"==" " set P5=%Background%
if not defined n6 if "%P6%"==" " set P6=%Background%
if not defined n7 if "%P7%"==" " set P7=%Background%
if not defined n8 if "%P8%"==" " set P8=%Background%
if not defined n9 if "%P9%"==" " set P9=%Background%
if not defined n10 if "%P10%"==" " set P10=%Background%
if not defined n11 if "%P11%"==" " set P11=%Background%
if not defined n12 if "%P12%"==" " set P12=%Background%
if not defined n13 if "%P13%"==" " set P13=%Background%
if not defined n14 if "%P14%"==" " set P14=%Background%
if not defined n15 if "%P15%"==" " set P15=%Background%
if not defined n16 if "%P16%"==" " set P16=%Background%
if not defined n17 if "%P17%"==" " set P17=%Background%
if not defined n18 if "%P18%"==" " set P18=%Background%
if not defined n19 if "%P19%"==" " set P19=%Background%
if not defined n20 if "%P20%"==" " set P20=%Background%
if not defined n21 if "%P21%"==" " set P21=%Background%
if not defined n22 if "%P22%"==" " set P22=%Background%
if not defined n23 if "%P23%"==" " set P23=%Background%
if not defined n24 if "%P24%"==" " set P24=%Background%
if not defined n25 if "%P25%"==" " set P25=%Background%
if not defined n26 if "%P26%"==" " set P26=%Background%
if not defined n27 if "%P27%"==" " set P27=%Background%
if not defined n28 if "%P28%"==" " set P28=%Background%
if not defined n29 if "%P29%"==" " set P29=%Background%
if not defined n30 if "%P30%"==" " set P30=%Background%
if not defined n31 if "%P31%"==" " set P31=%Background%
if not defined n32 if "%P32%"==" " set P32=%Background%
if not defined n33 if "%P33%"==" " set P33=%Background%
if not defined n34 if "%P34%"==" " set P34=%Background%
if not defined n35 if "%P35%"==" " set P35=%Background%
if not defined n36 if "%P36%"==" " set P36=%Background%
if not defined n37 if "%P37%"==" " set P37=%Background%
if not defined n38 if "%P38%"==" " set P38=%Background%
if not defined n39 if "%P39%"==" " set P39=%Background%
if not defined n40 if "%P40%"==" " set P40=%Background%
if not defined n41 if "%P41%"==" " set P41=%Background%
if not defined n42 if "%P42%"==" " set P42=%Background%
if not defined n43 if "%P43%"==" " set P43=%Background%
if not defined n44 if "%P44%"==" " set P44=%Background%
if not defined n45 if "%P45%"==" " set P45=%Background%
if not defined n46 if "%P46%"==" " set P46=%Background%
if not defined n47 if "%P47%"==" " set P47=%Background%
if not defined n48 if "%P48%"==" " set P48=%Background%
if not defined n49 if "%P49%"==" " set P49=%Background%
if not defined n50 if "%P50%"==" " set P50=%Background%
if not defined n51 if "%P51%"==" " set P51=%Background%
if not defined n52 if "%P52%"==" " set P52=%Background%
if not defined n53 if "%P53%"==" " set P53=%Background%
if not defined n54 if "%P54%"==" " set P54=%Background%
if not defined n55 if "%P55%"==" " set P55=%Background%
if not defined n56 if "%P56%"==" " set P56=%Background%
if not defined n57 if "%P57%"==" " set P57=%Background%
if not defined n58 if "%P58%"==" " set P58=%Background%
if not defined n59 if "%P59%"==" " set P59=%Background%
if not defined n60 if "%P60%"==" " set P60=%Background%
if not defined n61 if "%P61%"==" " set P61=%Background%
if not defined n62 if "%P62%"==" " set P62=%Background%
if not defined n63 if "%P63%"==" " set P63=%Background%
if not defined n64 if "%P64%"==" " set P64=%Background%
if not defined n65 if "%P65%"==" " set P65=%Background%
if not defined n66 if "%P66%"==" " set P66=%Background%
if not defined n67 if "%P67%"==" " set P67=%Background%
if not defined n68 if "%P68%"==" " set P68=%Background%
if not defined n69 if "%P69%"==" " set P69=%Background%
if not defined n70 if "%P70%"==" " set P70=%Background%
if not defined n71 if "%P71%"==" " set P71=%Background%
if not defined n72 if "%P72%"==" " set P72=%Background%
if not defined n73 if "%P73%"==" " set P73=%Background%
if not defined n74 if "%P74%"==" " set P74=%Background%
if not defined n75 if "%P75%"==" " set P75=%Background%
if not defined n76 if "%P76%"==" " set P76=%Background%
if not defined n77 if "%P77%"==" " set P77=%Background%
if not defined n78 if "%P78%"==" " set P78=%Background%
if not defined n79 if "%P79%"==" " set P79=%Background%
if not defined n80 if "%P80%"==" " set P80=%Background%
if not defined n81 if "%P81%"==" " set P81=%Background%
if not defined n82 if "%P82%"==" " set P82=%Background%
if not defined n83 if "%P83%"==" " set P83=%Background%
if not defined n84 if "%P84%"==" " set P84=%Background%
if not defined n85 if "%P85%"==" " set P85=%Background%
if not defined n86 if "%P86%"==" " set P86=%Background%
if not defined n87 if "%P87%"==" " set P87=%Background%
if not defined n88 if "%P88%"==" " set P88=%Background%
if not defined n89 if "%P89%"==" " set P89=%Background%
if not defined n90 if "%P90%"==" " set P90=%Background%
if not defined n91 if "%P91%"==" " set P91=%Background%
if not defined n92 if "%P92%"==" " set P92=%Background%
if not defined n93 if "%P93%"==" " set P93=%Background%
if not defined n94 if "%P94%"==" " set P94=%Background%
if not defined n95 if "%P95%"==" " set P95=%Background%
if not defined n96 if "%P96%"==" " set P96=%Background%
if not defined n97 if "%P97%"==" " set P97=%Background%
if not defined n98 if "%P98%"==" " set P98=%Background%
if not defined n99 if "%P99%"==" " set P99=%Background%
if not defined n100 if "%P100%"==" " set P100=%Background%
if not defined n101 if "%P101%"==" " set P101=%Background%
if not defined n102 if "%P102%"==" " set P102=%Background%
if not defined n103 if "%P103%"==" " set P103=%Background%
if not defined n104 if "%P104%"==" " set P104=%Background%
if not defined n105 if "%P105%"==" " set P105=%Background%
if not defined n106 if "%P106%"==" " set P106=%Background%
if not defined n107 if "%P107%"==" " set P107=%Background%
if not defined n108 if "%P108%"==" " set P108=%Background%
if not defined n109 if "%P109%"==" " set P109=%Background%
if not defined n110 if "%P110%"==" " set P110=%Background%
if not defined n111 if "%P111%"==" " set P111=%Background%
if not defined n112 if "%P112%"==" " set P112=%Background%
if not defined n113 if "%P113%"==" " set P113=%Background%
if not defined n114 if "%P114%"==" " set P114=%Background%
if not defined n115 if "%P115%"==" " set P115=%Background%
if not defined n116 if "%P116%"==" " set P116=%Background%
if not defined n117 if "%P117%"==" " set P117=%Background%
if not defined n118 if "%P118%"==" " set P118=%Background%
if not defined n119 if "%P119%"==" " set P119=%Background%
if not defined n120 if "%P120%"==" " set P120=%Background%
if not defined n121 if "%P121%"==" " set P121=%Background%
if not defined n122 if "%P122%"==" " set P122=%Background%
if not defined n123 if "%P123%"==" " set P123=%Background%
if not defined n124 if "%P124%"==" " set P124=%Background%
if not defined n125 if "%P125%"==" " set P125=%Background%
if not defined n126 if "%P126%"==" " set P126=%Background%
if not defined n127 if "%P127%"==" " set P127=%Background%
if not defined n128 if "%P128%"==" " set P128=%Background%
if not defined n129 if "%P129%"==" " set P129=%Background%
if not defined n130 if "%P130%"==" " set P130=%Background%
if not defined n131 if "%P131%"==" " set P131=%Background%
if not defined n132 if "%P132%"==" " set P132=%Background%
if not defined n133 if "%P133%"==" " set P133=%Background%
if not defined n134 if "%P134%"==" " set P134=%Background%
if not defined n135 if "%P135%"==" " set P135=%Background%
if not defined n136 if "%P136%"==" " set P136=%Background%
if not defined n137 if "%P137%"==" " set P137=%Background%
if not defined n138 if "%P138%"==" " set P138=%Background%
if not defined n139 if "%P139%"==" " set P139=%Background%
if not defined n140 if "%P140%"==" " set P140=%Background%
if not defined n141 if "%P141%"==" " set P141=%Background%
if not defined n142 if "%P142%"==" " set P142=%Background%
if not defined n143 if "%P143%"==" " set P143=%Background%
if not defined n144 if "%P144%"==" " set P144=%Background%
if not defined n145 if "%P145%"==" " set P145=%Background%
if not defined n146 if "%P146%"==" " set P146=%Background%
if not defined n147 if "%P147%"==" " set P147=%Background%
if not defined n148 if "%P148%"==" " set P148=%Background%
if not defined n149 if "%P149%"==" " set P149=%Background%
if not defined n150 if "%P150%"==" " set P150=%Background%
if not defined n151 if "%P151%"==" " set P151=%Background%
if not defined n152 if "%P152%"==" " set P152=%Background%
if not defined n153 if "%P153%"==" " set P153=%Background%
if not defined n154 if "%P154%"==" " set P154=%Background%
if not defined n155 if "%P155%"==" " set P155=%Background%
if not defined n156 if "%P156%"==" " set P156=%Background%
if not defined n157 if "%P157%"==" " set P157=%Background%
if not defined n158 if "%P158%"==" " set P158=%Background%
if not defined n159 if "%P159%"==" " set P159=%Background%
goto noinsert2
:noinsert
if defined Background goto Background
:noinsert2
set x=%P0%%P1%%P2%%P3%%P4%%P5%%P6%%P7%%P8%%P9%%P10%%P11%%P12%%P13%%P14%%P15%%P16%%P17%%P18%%P19%%P20%%P21%%P22%%P23%%P24%%P25%%P26%%P27%%P28%%P29%%P30%%P31%%P32%%P33%%P34%%P35%%P36%%P37%%P38%%P39%%P40%%P41%%P42%%P43%%P44%%P45%%P46%%P47%%P48%%P49%%P50%%P51%%P52%%P53%%P54%%P55%%P56%%P57%%P58%%P59%%P60%%P61%%P62%%P63%%P64%%P65%%P66%%P67%%P68%%P69%%P70%%P71%%P72%%P73%%P74%%P75%%P76%%P77%%P78%%P79%%P80%%P81%%P82%%P83%%P84%%P85%%P86%%P87%%P88%%P89%%P90%%P91%%P92%%P93%%P94%%P95%%P96%%P97%%P98%%P99%%P100%%P101%%P102%%P103%%P104%%P105%%P106%%P107%%P108%%P109%%P110%%P111%%P112%%P113%%P114%%P115%%P116%%P117%%P118%%P119%%P120%%P121%%P122%%P123%%P124%%P125%%P126%%P127%%P128%%P129%%P130%%P131%%P132%%P133%%P134%%P135%%P136%%P137%%P138%%P139%%P140%%P141%%P142%%P143%%P144%%P145%%P146%%P147%%P148%%P149%%P150%%P151%%P152%%P153%%P154%%P155%%P156%%P157%%P158%%P159%
set x=%x:ฤรฤ=ฤลฤ%
set x=%x:ฤดฤ=ฤลฤ%
set x=%x:ฤฺฤ=ฤยฤ%
set x=%x:ฤฟฤ=ฤยฤ%
set x=%x:ฤภฤ=ฤมฤ%
set x=%x:ฤูฤ=ฤมฤ%
set x=%x:อฬอ=อฮอ%
set x=%x:อนอ=อฮอ%
set x=%x:อผอ=อสอ%
set x=%x:อศอ=อสอ%
set x=%x:อปอ=อหอ%
set x=%x:อษอ=อหอ%
set x=%x:ฤถฤ=ฤืฤ%
set x=%x:ฤวฤ=ฤืฤ%
set x=%x:ฤึฤ=ฤาฤ%
set x=%x:ฤทฤ=ฤาฤ%
set x=%x:ฤำฤ=ฤะฤ%
set x=%x:ฤฝฤ=ฤะฤ%
set x=%x:อตอ=อุอ%
set x=%x:อฦอ=อุอ%
set x=%x:อีอ=อัอ%
set x=%x:อธอ=อัอ%
set x=%x:อิอ=อฯอ%
set x=%x:อพอ=อฯอ%
if defined  ansicon set x=%x:=?%
goto %exitxline%
:insert
cls
set /a a=a-1
if /i "%line:~7,1%"=="n" set nobox=1
if not defined Background if /i "%line:~7,1%"=="" set nobox=
if defined insertart if defined insertart2 if defined insertart3 echo.Insert has the limit of three simutaneous files& pause& goto l
set /p art=Use the TAB key to search the file in the current folder 
set margnu=0
echo.
echo.
if exist temp0000.txt del temp0000.txt
set /p margnu=Set the value of the margin range 1 to 160, ENTER to ignore  
if not defined insertart set insertart=1& goto insertart
if not defined insertart2 set insertart2=1& goto insertart2
if not defined insertart3 set insertart3=1& goto insertart3
:insertart
set spaceart1=  
find /v "" %art%>"temp0000.txt"
findstr "."  temp0000.txt>temp0001.txt
set nu=1
if %margnu%==0 goto l
set spaceart=                                                                                                                                                                  End-line
set spaceart0=%%spaceart:~0,%margnu%%%
for /f "usebackq tokens=*"  %%i in (`echo."%spaceart0%"`) do set spaceart1=%%i
set spaceart0=
set spaceart=
goto l
:insertart2
set spaceart2=  
find /v "" %art%>"temp0000.txt"
findstr "."  temp0000.txt>temp0002.txt
set nu2=1
if %margnu%==0 goto l
set spaceart=                                                                                                                                                                  End-line
set spaceart0=%%spaceart:~0,%margnu%%%
for /f "usebackq tokens=*"  %%i in (`echo."%spaceart0%"`) do set spaceart2=%%i
set spaceart0=
set spaceart=
goto l
:insertart3
set spaceart3=  
find /v "" %art%>"temp0000.txt"
findstr "."  temp0000.txt>temp0003.txt
set nu3=1
if %margnu%==0 goto l
set spaceart=                                                                                                                                                                  End-line
set spaceart0=%%spaceart:~0,%margnu%%%
for /f "usebackq tokens=*"  %%i in (`echo."%spaceart0%"`) do set spaceart3=%%i
set spaceart0=
set spaceart=
goto l
:part1
if %boxexit%==2 set x=%Z1%%l1:~0,38%%Z5%%x:~40,38%%Z9%& set /a a=a-1& goto l3
if %boxexit%==3 set x=%Z1%%l1:~0,25%%Z5%%x:~27,51%%Z9%& set /a a=a-1& goto l3
if %div%==2 set x=%Z1%%l1:~0,38%%Z5%%x:~40,38%%Z9%
if %div%==3 set x=%Z1%%l1:~0,25%%Z5%%x:~27,51%%Z9%
if %div%==7 set x=%Z1%%l1:~0,25%%Z5%%x:~27,51%%Z9%
if %div%==8 set x=%Z1%%l1:~0,51%%Z5%%x:~53,25%%Z9%
set /a a=a-1
goto l
:part2
if %boxexit%==2 set x=%Z9%%x:~1,38%%Z1%%l1:~39,38%%Z5%& set /a a=a-1& goto l3
if %boxexit%==3 set x=%Z9%%x:~1,25%%Z1%%l1:~27,25%%Z5%%x:~53,25%%Z9%& set /a a=a-1& goto l3
if %div%==2 set x=%Z9%%x:~1,38%%Z1%%l1:~39,38%%Z5%
if %div%==3 set x=%Z9%%x:~1,25%%Z1%%l1:~27,25%%Z5%%x:~53,25%%Z9%
if %div%==7 set x=%Z9%%x:~1,25%%Z1%%l1:~27,51%%Z5%
if %div%==8 set x=%Z9%%x:~1,51%%Z1%%l1:~53,25%%Z5%
set /a a=a-1
goto l
:part3
if %boxexit%==3 set x=%Z9%%x:~1,51%%Z1%%l1:~52,25%%Z5%& set /a a=a-1& goto l3
if %div%==3 set x=%Z9%%x:~1,51%%Z1%%l1:~52,25%%Z5%
set /a a=a-1
goto l
:part1-2
if %boxexit%==3 set x=%Z1%%l1:~1,25%%Z8%%l1:~27,25%%Z5%%x:~53,25%%Z9%& set /a a=a-1& goto l3
if %div%==3 set x=%Z1%%l1:~1,25%%Z8%%l1:~27,25%%Z5%%x:~53,25%%Z9%
set /a a=a-1
goto l
:part1-3
if %boxexit%==3 set x=%Z1%%l1:~1,25%%Z5%%x:~27,25%%Z1%%l1:~52,25%%Z5%& set /a a=a-1& goto l3
if %div%==3 set x=%Z1%%l1:~1,25%%Z5%%x:~27,25%%Z1%%l1:~52,25%%Z5%
set /a a=a-1
goto l
:part2-3
if %boxexit%==3 set x=%Z9%%x:~1,25%%Z1%%l1:~27,25%%Z8%%l1:~52,25%%Z5%& set /a a=a-1& goto l3
if %div%==3 set x=%Z9%%x:~1,25%%Z1%%l1:~27,25%%Z8%%l1:~52,25%%Z5%
set /a a=a-1
goto l
:part
if %div%==1 set x=%Z1%%l1:~0,77%%Z5%
if %div%==2 set x=%Z1%%l1:~0,38%%Z8%%l1:~38,38%%Z5%
if %div%==3 set x=%Z1%%l1:~0,25%%Z8%%l1:~25,25%%Z8%%l1:~50,25%%Z5%
if %div%==4 set x=%edge%     %Za1%%la1:~0,17%%Za5%     %Za1%%la1:~0,17%%Za5%     %Za1%%la1:~0,17%%Za5%     %edge%
if %div%==7 set x=%Z1%%l1:~0,25%%Z8%%l1:~26,51%%Z5%
if %div%==8 set x=%Z1%%l1:~0,51%%Z8%%l1:~52,25%%Z5%
goto l
:close
if %div%==1 set x=%Z2%%l1:~0,77%%Z3%
if %div%==2 set x=%Z2%%l1:~0,38%%Z6%%l1:~38,38%%Z3%
if %div%==3 set x=%Z2%%l1:~0,25%%Z6%%l1:~25,25%%Z6%%l1:~50,25%%Z3%
if %div%==7 set x=%Z2%%l1:~0,25%%Z6%%l1:~26,51%%Z3%
if %div%==8 set x=%Z2%%l1:~0,51%%Z6%%l1:~52,25%%Z3%
if %div%==4 set x=%edge%     %Za2%%la1:~0,17%%Za3%     %Za2%%la1:~0,17%%Za3%     %Za2%%la1:~0,17%%Za3%     %edge%
if %boxexit%==2 set x=%x:~0,39%%z9%%x:~40,39%
if %boxexit%==3 set x=%x:~0,26%%z9%%x:~27,25%%z9%%x:~53,26%
if %boxexit%==7 set x=%x:~0,26%%z9%%x:~27,52%
if %boxexit%==8 set x=%x:~0,52%%z9%%x:~53,40%
if not %div%==5 if not %div%==4 set edge=& set div=6
if %div%==4 set div=%boxexit%& set boxexit=0
goto l
:space
set x= 
goto l
:stop
title Aspidiske Compiler
set nu=
set insertart=
if %div%==4 set a22=%z9%     %Za2%%la1:~0,17%%Za3%     %Za2%%la1:~0,17%%Za3%     %Za2%%la1:~0,17%%Za3%     %z9%& set b22=1& set div=%boxexit%
if %div%==1 set a23=%Z2%%l1:~0,77%%Z3%& set b23=1
if %div%==2 set a23=%Z2%%l1:~0,38%%Z6%%l1:~38,38%%Z3%& set b23=1
if %div%==3 set a23=%Z2%%l1:~0,25%%Z6%%l1:~25,25%%Z6%%l1:~50,25%%Z3%& set b23=1
if %div%==7 set a23=%Z2%%l1:~0,25%%Z6%%l1:~26,51%%Z3%& set b23=1
if %div%==8 set a23=%Z2%%l1:~0,51%%Z6%%l1:~52,25%%Z3%& set b23=1
set savemode=.bat
set smb=echo.
set "savebk=       "
set "lucida=       "
:savepro
set menumber=
:menumber
if "%savebk%"=="Enabled" set /a valuebk=%h%*%v1%+%V1%
if "%savebk%"=="Enabled" set valuebk=%valuebk% characters of 8191                                                     endline
if "%savebk%"=="       " set valuebk=                                                                                 endline
if exist menu%menumber%%savemode% set /a menumber=menumber+1& goto menumber
set save=Menu%menumber%
set menudisplay=%save%%savemode%                                                                           endline
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo.บ                                                                             บ
echo.บ                            Save project as: %savemode%                            บ
echo.บ                                                                             บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ     Type a name for the file or press ENTER to save with default name:      บ
echo.บ                                                                             บ
echo.บ     %menudisplay:~0,72%บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.บ     Press 2 to switch current mode .txt or .bat or .ans                     บ
echo.บ                                                                             บ
echo.บ     Press 3 to save in continuous line format  %savebk%                      บ
echo.บ                                                                             บ
echo.บ     Press 4 assign lucida console font  %lucida%                             บ
echo.บ                                                                             บ
echo.บ     %valuebk:~0,72%บ
echo.บ                                                                             บ
echo.บ                                                                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p save=
if "%save%"=="2" if %savemode%==.bat set savemode=.txt& set smb=& goto savepro
if "%save%"=="2" if %savemode%==.txt set savemode=.ans& set smb=& goto savepro
if "%save%"=="2" if %savemode%==.ans set savemode=.bat& set smb=echo.& goto savepro
if "%save%"=="3" if "%savebk%"=="       " (set savebk=Enabled& set tableexit=menumber& set print=6& goto table) else (set savebk=       & goto menumber)
if "%save%"=="4" if "%lucida%"=="       " (set lucida=Enabled& goto menumber) else (set "lucida=       "& goto menumber)
if %savemode%==.bat echo.echo off>>"%save%".bat
if %savemode%==.bat echo.color f>>"%save%".bat
if %savemode%==.bat echo.cls>>"%save%".bat
if "%savebk%"=="       " if %savemode%==.bat echo>>"%save%"%savemode% mode %h%,%v%
setLocal EnableDelayedExpansion
if %charstatus%==1 goto skipchange 
if %b0%==1 set a0=!a0:%ch7%=%%%%!
if %b1%==1 set a1=!a1:%ch7%=%%%%!
if %b2%==1 set a2=!a2:%ch7%=%%%%!
if %b3%==1 set a3=!a3:%ch7%=%%%%!
if %b4%==1 set a4=!a4:%ch7%=%%%%!
if %b5%==1 set a5=!a5:%ch7%=%%%%!
if %b6%==1 set a6=!a6:%ch7%=%%%%!
if %b7%==1 set a7=!a7:%ch7%=%%%%!
if %b8%==1 set a8=!a8:%ch7%=%%%%!
if %b9%==1 set a9=!a9:%ch7%=%%%%!
if %b10%==1 set a10=!a10:%ch7%=%%%%!
if %b11%==1 set a11=!a11:%ch7%=%%%%!
if %b12%==1 set a12=!a12:%ch7%=%%%%!
if %b13%==1 set a13=!a13:%ch7%=%%%%!
if %b14%==1 set a14=!a14:%ch7%=%%%%!
if %b15%==1 set a15=!a15:%ch7%=%%%%!
if %b16%==1 set a16=!a16:%ch7%=%%%%!
if %b17%==1 set a17=!a17:%ch7%=%%%%!
if %b18%==1 set a18=!a18:%ch7%=%%%%!
if %b19%==1 set a19=!a19:%ch7%=%%%%!
if %b20%==1 set a20=!a20:%ch7%=%%%%!
if %b21%==1 set a21=!a21:%ch7%=%%%%!
if %b22%==1 set a22=!a22:%ch7%=%%%%!
if %b23%==1 set a23=!a23:%ch7%=%%%%!
if %b24%==1 set a24=!a24:%ch7%=%%%%!
if %b25%==1 set a25=!a25:%ch7%=%%%%!
if %b26%==1 set a26=!a26:%ch7%=%%%%!
if %b27%==1 set a27=!a27:%ch7%=%%%%!
if %b28%==1 set a28=!a28:%ch7%=%%%%!
if %b29%==1 set a29=!a29:%ch7%=%%%%!
if %b30%==1 set a30=!a30:%ch7%=%%%%!
if %b31%==1 set a31=!a31:%ch7%=%%%%!
if %b32%==1 set a32=!a32:%ch7%=%%%%!
if %b33%==1 set a33=!a33:%ch7%=%%%%!
if %b34%==1 set a34=!a34:%ch7%=%%%%!
if %b35%==1 set a35=!a35:%ch7%=%%%%!
if %b36%==1 set a36=!a36:%ch7%=%%%%!
if %b37%==1 set a37=!a37:%ch7%=%%%%!
if %b38%==1 set a38=!a38:%ch7%=%%%%!
if %b39%==1 set a39=!a39:%ch7%=%%%%!
if %b40%==1 set a40=!a40:%ch7%=%%%%!
if %b41%==1 set a41=!a41:%ch7%=%%%%!
if %b42%==1 set a42=!a42:%ch7%=%%%%!
if %b43%==1 set a43=!a43:%ch7%=%%%%!
if %b44%==1 set a44=!a44:%ch7%=%%%%!
if %b45%==1 set a45=!a45:%ch7%=%%%%!
if %b46%==1 set a46=!a46:%ch7%=%%%%!
if %b47%==1 set a47=!a47:%ch7%=%%%%!
if %b48%==1 set a48=!a48:%ch7%=%%%%!
if %b49%==1 set a49=!a49:%ch7%=%%%%!
if %b50%==1 set a50=!a50:%ch7%=%%%%!
if %b51%==1 set a51=!a51:%ch7%=%%%%!
if %b52%==1 set a52=!a52:%ch7%=%%%%!
if %b53%==1 set a53=!a53:%ch7%=%%%%!
if %b54%==1 set a54=!a54:%ch7%=%%%%!
if %b55%==1 set a55=!a55:%ch7%=%%%%!
if %b56%==1 set a56=!a56:%ch7%=%%%%!
if %b57%==1 set a57=!a57:%ch7%=%%%%!
if %b58%==1 set a58=!a58:%ch7%=%%%%!
if %b59%==1 set a59=!a59:%ch7%=%%%%!
:skipchange
if "%lucida%"=="Enabled" echo.reg Query HKCU\Console\%%%%SystemRoot%%%%_system32_cmd.exe /v FaceName^>temp.dat>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.for /f "usebackq skip=2 tokens=1,2,3* delims=" %%%%a in  (temp.dat) do set valuereg=%%%%a>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.set valuereg=%%valuereg:~26,15%%>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.Del /f /q /a temp.dat ^>nul 2^>^&^1>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.Rem ########### saving current register ###########>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.if exist currentvalue.reg (reg import currentvalue.reg ^> nul^& del currentvalue.reg) ELSE (if not "%%valuereg%%"=="Lucida Console" reg export HKCU\Console\%%%%SystemRoot%%%%_system32_cmd.exe currentvalue.reg ^> nul^)>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.Rem ########### changing font ###########>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.if not "%%valuereg%%"=="Lucida Console" ^(>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.reg add HKCU\Console\%%%%SystemRoot%%%%_system32_cmd.exe /V ScreenColors /t REG_DWORD /d "0x0000000f" /f ^> nul>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.reg add HKCU\Console\%%%%SystemRoot%%%%_system32_cmd.exe /V ScreenBufferSize /t REG_DWORD /d "0x00190050" /f ^> nul>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.reg add HKCU\Console\%%%%SystemRoot%%%%_system32_cmd.exe /V FaceName  /t REG_SZ /d "Lucida Console" /f ^> nul>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.reg add HKCU\Console\%%%%SystemRoot%%%%_system32_cmd.exe /V FontSize  /t REG_DWORD /d "0x000e0000" /f ^> nul>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.reg add HKCU\Console\%%%%SystemRoot%%%%_system32_cmd.exe /V FontFamily  /t REG_DWORD /d "0x00000036" /f ^> nul>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.reg add HKCU\Console\%%%%SystemRoot%%%%_system32_cmd.exe /V FontWeight  /t REG_DWORD /d "0x00000190" /f ^> nul>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.start "" "%save%%savemode%">>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.exit>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.^)>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.set valuereg=>>"%save%"%savemode%
if "%lucida%"=="Enabled" for /f "usebackq tokens=*"  %%i in (`chcp`) do set chcpvalue=%%i
if "%lucida%"=="Enabled" set chcpvalue=%chcpvalue:~-4%
if "%lucida%"=="Enabled" set chcpvalue=%chcpvalue: =%
if "%lucida%"=="Enabled" echo.chcp %chcpvalue%>>"%save%"%savemode%
if "%lucida%"=="Enabled" echo.cls>>"%save%"%savemode%
set chcpvalue=
if "%savebk%"=="Enabled" goto savebk
if %b0%==1 echo.%smb%!a0!>>"%save%"%savemode%
if %b1%==1 echo.%smb%!a1!>>"%save%"%savemode%
if %b2%==1 echo.%smb%!a2!>>"%save%"%savemode%
if %b3%==1 echo.%smb%!a3!>>"%save%"%savemode%
if %b4%==1 echo.%smb%!a4!>>"%save%"%savemode%
if %b5%==1 echo.%smb%!a5!>>"%save%"%savemode%
if %b6%==1 echo.%smb%!a6!>>"%save%"%savemode%
if %b7%==1 echo.%smb%!a7!>>"%save%"%savemode%
if %b8%==1 echo.%smb%!a8!>>"%save%"%savemode%
if %b9%==1 echo.%smb%!a9!>>"%save%"%savemode%
if %b10%==1 echo.%smb%!a10!>>"%save%"%savemode%
if %b11%==1 echo.%smb%!a11!>>"%save%"%savemode%
if %b12%==1 echo.%smb%!a12!>>"%save%"%savemode%
if %b13%==1 echo.%smb%!a13!>>"%save%"%savemode%
if %b14%==1 echo.%smb%!a14!>>"%save%"%savemode%
if %b15%==1 echo.%smb%!a15!>>"%save%"%savemode%
if %b16%==1 echo.%smb%!a16!>>"%save%"%savemode%
if %b17%==1 echo.%smb%!a17!>>"%save%"%savemode%
if %b18%==1 echo.%smb%!a18!>>"%save%"%savemode%
if %b19%==1 echo.%smb%!a19!>>"%save%"%savemode%
if %b20%==1 echo.%smb%!a20!>>"%save%"%savemode%
if %b21%==1 echo.%smb%!a21!>>"%save%"%savemode%
if %b22%==1 echo.%smb%!a22!>>"%save%"%savemode%
if %b23%==1 echo.%smb%!a23!>>"%save%"%savemode%
if %b24%==1 echo.%smb%!a24!>>"%save%"%savemode%
if %b25%==1 echo.%smb%!a25!>>"%save%"%savemode%
if %b26%==1 echo.%smb%!a26!>>"%save%"%savemode%
if %b27%==1 echo.%smb%!a27!>>"%save%"%savemode%
if %b28%==1 echo.%smb%!a28!>>"%save%"%savemode%
if %b29%==1 echo.%smb%!a29!>>"%save%"%savemode%
if %b30%==1 echo.%smb%!a30!>>"%save%"%savemode%
if %b31%==1 echo.%smb%!a31!>>"%save%"%savemode%
if %b32%==1 echo.%smb%!a32!>>"%save%"%savemode%
if %b33%==1 echo.%smb%!a33!>>"%save%"%savemode%
if %b34%==1 echo.%smb%!a34!>>"%save%"%savemode%
if %b35%==1 echo.%smb%!a35!>>"%save%"%savemode%
if %b36%==1 echo.%smb%!a36!>>"%save%"%savemode%
if %b37%==1 echo.%smb%!a37!>>"%save%"%savemode%
if %b38%==1 echo.%smb%!a38!>>"%save%"%savemode%
if %b39%==1 echo.%smb%!a39!>>"%save%"%savemode%
if %b40%==1 echo.%smb%!a40!>>"%save%"%savemode%
if %b41%==1 echo.%smb%!a41!>>"%save%"%savemode%
if %b42%==1 echo.%smb%!a42!>>"%save%"%savemode%
if %b43%==1 echo.%smb%!a43!>>"%save%"%savemode%
if %b44%==1 echo.%smb%!a44!>>"%save%"%savemode%
if %b45%==1 echo.%smb%!a45!>>"%save%"%savemode%
if %b46%==1 echo.%smb%!a46!>>"%save%"%savemode%
if %b47%==1 echo.%smb%!a47!>>"%save%"%savemode%
if %b48%==1 echo.%smb%!a48!>>"%save%"%savemode%
if %b49%==1 echo.%smb%!a49!>>"%save%"%savemode%
if %b50%==1 echo.%smb%!a50!>>"%save%"%savemode%
if %b51%==1 echo.%smb%!a51!>>"%save%"%savemode%
if %b52%==1 echo.%smb%!a52!>>"%save%"%savemode%
if %b53%==1 echo.%smb%!a53!>>"%save%"%savemode%
if %b54%==1 echo.%smb%!a54!>>"%save%"%savemode%
if %b55%==1 echo.%smb%!a55!>>"%save%"%savemode%
if %b56%==1 echo.%smb%!a56!>>"%save%"%savemode%
if %b57%==1 echo.%smb%!a57!>>"%save%"%savemode%
if %b58%==1 echo.%smb%!a58!>>"%save%"%savemode%
if %b59%==1 echo.%smb%!a59!>>"%save%"%savemode%
if %savemode%==.bat echo.set /p menu=>>"%save%".bat
goto completesave
:savebk
if not defined char if %savemode%==.bat echo>>"%save%"%savemode% mode %h1%,%v%
if defined char if %savemode%==.bat echo>>"%save%"%savemode% mode %h%,%v%
set print=
set tableexit=
set x=%char%
set char=
if !b0!==1 if "!a0:~1,1!"==" " set a0=!a0!
if !b0!==1 set a0=!a0:/?=/Z?!!x!
if !b1!==1 set a1=!a1:/?=/Z?!!x!
if !b2!==1 set a2=!a2:/?=/Z?!!x!
if !b3!==1 set a3=!a3:/?=/Z?!!x!
if !b4!==1 set a4=!a4:/?=/Z?!!x!
if !b5!==1 set a5=!a5:/?=/Z?!!x!
if !b6!==1 set a6=!a6:/?=/Z?!!x!
if !b7!==1 set a7=!a7:/?=/Z?!!x!
if !b8!==1 set a8=!a8:/?=/Z?!!x!
if !b9!==1 set a9=!a9:/?=/Z?!!x!
if !b10!==1 set a10=!a10:/?=/Z?!!x!
if !b11!==1 set a11=!a11:/?=/Z?!!x!
if !b12!==1 set a12=!a12:/?=/Z?!!x!
if !b13!==1 set a13=!a13:/?=/Z?!!x!
if !b14!==1 set a14=!a14:/?=/Z?!!x!
if !b15!==1 set a15=!a15:/?=/Z?!!x!
if !b16!==1 set a16=!a16:/?=/Z?!!x!
if !b17!==1 set a17=!a17:/?=/Z?!!x!
if !b18!==1 set a18=!a18:/?=/Z?!!x!
if !b19!==1 set a19=!a19:/?=/Z?!!x!
if !b20!==1 set a20=!a20:/?=/Z?!!x!
if !b21!==1 set a21=!a21:/?=/Z?!!x!
if !b22!==1 set a22=!a22:/?=/Z?!!x!
if !b23!==1 set a23=!a23:/?=/Z?!!x!
if !b24!==1 set a24=!a24:/?=/Z?!!x!
if !b25!==1 set a25=!a25:/?=/Z?!!x!
if !b26!==1 set a26=!a26:/?=/Z?!!x!
if !b27!==1 set a27=!a27:/?=/Z?!!x!
if !b28!==1 set a28=!a28:/?=/Z?!!x!
if !b29!==1 set a29=!a29:/?=/Z?!!x!
if !b30!==1 set a30=!a30:/?=/Z?!!x!
if !b31!==1 set a31=!a31:/?=/Z?!!x!
if !b32!==1 set a32=!a32:/?=/Z?!!x!
if !b33!==1 set a33=!a33:/?=/Z?!!x!
if !b34!==1 set a34=!a34:/?=/Z?!!x!
if !b35!==1 set a35=!a35:/?=/Z?!!x!
if !b36!==1 set a36=!a36:/?=/Z?!!x!
if !b37!==1 set a37=!a37:/?=/Z?!!x!
if !b38!==1 set a38=!a38:/?=/Z?!!x!
if !b39!==1 set a39=!a39:/?=/Z?!!x!
if !b40!==1 set a40=!a40:/?=/Z?!!x!
if !b41!==1 set a41=!a41:/?=/Z?!!x!
if !b42!==1 set a42=!a42:/?=/Z?!!x!
if !b43!==1 set a43=!a43:/?=/Z?!!x!
if !b44!==1 set a44=!a44:/?=/Z?!!x!
if !b45!==1 set a45=!a45:/?=/Z?!!x!
if !b46!==1 set a46=!a46:/?=/Z?!!x!
if !b47!==1 set a47=!a47:/?=/Z?!!x!
if !b48!==1 set a48=!a48:/?=/Z?!!x!
if !b49!==1 set a49=!a49:/?=/Z?!!x!
if !b50!==1 set a50=!a50:/?=/Z?!!x!
if !b51!==1 set a51=!a51:/?=/Z?!!x!
if !b52!==1 set a52=!a52:/?=/Z?!!x!
if !b53!==1 set a53=!a53:/?=/Z?!!x!
if !b54!==1 set a54=!a54:/?=/Z?!!x!
if !b55!==1 set a55=!a55:/?=/Z?!!x!
if !b56!==1 set a56=!a56:/?=/Z?!!x!
if !b57!==1 set a57=!a57:/?=/Z?!!x!
if !b58!==1 set a58=!a58:/?=/Z?!!x!
if !b59!==1 set a59=!a59:/?=/Z?!!x!
if !savemode!==.bat set Y=set /p "menu="
echo.!Y!!a0!!a1!!a2!!a3!!a4!!a5!!a6!!a7!!a8!!a9!!a10!!a11!!a12!!a13!!a14!!a15!!a16!!a17!!a18!!a19!!a20!!a21!!a22!!a23!!a24!!a25!!a26!!a27!!a28!!a29!!a30!!a31!!a32!!a33!!a34!!a35!!a36!!a37!!a38!!a39!!a40!!a41!!a42!!a43!!a44!!a45!!a46!!a47!!a48!!a49!!a50!!a51!!a52!!a53!!a54!!a55!!a56!!a57!!a58!!a59!"">>"!save!"!savemode!
:completesave
ENDLOCAL
if exist temp0000.txt del temp0000.txt
if exist temp0001.txt del temp0001.txt
if exist temp0002.txt del temp0002.txt
if exist temp0003.txt del temp0003.txt
set y=
set x=
set savebk=
set a=
set div=
set savemode=
set save=
set menudisplay=
set menumber=
echo.Menu Saved
pause
goto start
:Aspi-test
mode 165,250
start /b set




