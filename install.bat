@echo off
IF [%~1] == [/?] GOTO help
IF [%~1] == [-?] GOTO help

SETLOCAL ENABLEDELAYEDEXPANSION
CLS
SET directory=C:\Windows
IF [%~1] == [/silent] GOTO install
IF [%~1] == [/s] GOTO install
ECHO.
CHOICE /M "The installation will copy the shortcuts to C:\Windows, is that ok for you"
IF %ERRORLEVEL% == 2 GOTO askdir
GOTO install

:help
ECHO GICOSH - Git Command Shortcuts for Lazy Developers - Installer
ECHO Usage:
ECHO   install [/s^|/silent]
ECHO.
ECHO Where:
ECHO   /s or /silent  Runs on a "silent" mode installing all .bat files on
ECHO                  C:\Windows directory.
ECHO.
ECHO When /s or /silent are supressed, the installation will ask for a
ECHO directory of your preference.
ECHO Remember to set that directory on Windows PATH variable.
GOTO :eof

:askdir
ECHO.
SET /p directory=Please type the directory you want install to: 
CALL :includePathDelimiter directory
GOTO install

:includePathDelimiter
SET directory=%directory:/=\%
IF NOT %directory:~-1% EQU \ (
  SET directory=%directory%\
)
GOTO :eof

:install
XCOPY *.bat %directory% /Y /V /EXCLUDE:install.bat