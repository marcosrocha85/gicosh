@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
CLS
SET directory=C:\Windows
IF [%~1] == "/silent" GOTO install
ECHO.
CHOICE /M "The installation will copy the shortcuts to C:\Windows, is that ok for you"
IF %ERRORLEVEL% == 2 GOTO askdir
GOTO install

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