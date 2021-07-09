@ECHO off
title Menu v1.0.0
cls
:start
color f1
cls
ECHO --------------------
ECHO -------Menu---------
ECHO 1. System information
ECHO 2. Control Panel
ECHO 3. Registery
ECHO 4. Ipconfig
Echo 5. Settings
ECHO 6. Check Internet Connection
ECHO -------Fun----------
ECHO 7. Matrix
set choice=
set /p choice=Type: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto systeminfo
if '%choice%'=='2' goto controlpanel
if '%choice%'=='3' goto registery
if '%choice%'=='4' goto Ipconfig
if '%choice%'=='5' goto Settings
if '%choice%'=='6' goto checkconnection
if '%choice%'=='7' goto matrix
ECHO "%choice%" is not valid, try again
powershell Start-Sleep -s 2
ECHO.
goto start

:systeminfo
msinfo32
goto start

:controlpanel
control
goto start
:Ipconfig
ipconfig
pause

goto start
:registery
regedit
goto start

:Settings
Powershell Start-Process "ms-settings:"
goto start

:checkconnection
ping www.google.com
pause
goto start

:matrix
color 2
:matrixstart
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% 
goto matrixstart
pause
goto start