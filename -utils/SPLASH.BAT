@ECHO off
cls
:start
cls
ECHO 1.  Preview MiSTer 1 Splash Screen
ECHO 2.  Set MiSTer 1 as Default
ECHO 3.  Preview MiSTer 2 Splash Screen
ECHO 4.  Set MiSTer 2 as Default
ECHO 5.  Preview MiSTer 3 Splash Screen
ECHO 6.  Set MiSTer 3 as Default
ECHO 7.  Preview MiSTer 4 Splash Screen
ECHO 8.  Set MiSTer 4 as Default
ECHO 9.  Disable Splash Screen
ECHO X. Exit
CHOICE /N /C:123456789X "Select:"%1
IF ERRORLEVEL ==10 GOTO exit
IF ERRORLEVEL ==9 GOTO disable
IF ERRORLEVEL ==8 GOTO set4
IF ERRORLEVEL ==7 GOTO preview4
IF ERRORLEVEL ==6 GOTO set3
IF ERRORLEVEL ==5 GOTO preview3
IF ERRORLEVEL ==4 GOTO set2
IF ERRORLEVEL ==3 GOTO preview2
IF ERRORLEVEL ==2 GOTO set1
IF ERRORLEVEL ==1 GOTO preview1

:preview1
ECHO Previewing 1...
call pct c:\boot\mister1.sys
goto start

:set1
ECHO Setting Splash Screen 1...
copy c:\boot\mister1.sys c:\logo.sys
pause
goto start

:preview2
ECHO Previewing 2...
call pct c:\boot\mister2.sys
goto start

:set2
ECHO Setting 2...
copy c:\boot\mister2.sys c:\logo.sys
pause
goto start

:preview3
ECHO Previewing 3...
call pct c:\boot\mister3.sys
goto start

:set3
ECHO Setting 3...
copy c:\boot\mister3.sys c:\logo.sys
pause
goto start

:preview4
ECHO Previewing 4...
call pct c:\boot\mister4.sys
goto start

:set4
ECHO Setting 4...
copy c:\boot\mister3.sys c:\logo.sys
pause
goto start

:disable
ECHO Disabling Splash Screen...
del c:\logo.sys
pause
goto start

:exit
ECHO Exiting...
pause
goto end

:end
CLS

